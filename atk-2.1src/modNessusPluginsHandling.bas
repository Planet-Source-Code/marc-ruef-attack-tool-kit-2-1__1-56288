Attribute VB_Name = "modNessusPluginsHandling"
Option Explicit

Public Sub LoadNessusPluginFromFile(Filename As String)
    Dim Temp As String          'The temporary file output
    Dim PluginContent As String 'The plugin content itself
    
    Dim TempArray() As String   'A temporary array for the splitting and parsing
    
    plugin_filename = Filename
    
    'Check the existence of the file
    On Error Resume Next
    If Len(Dir(PluginDirectory & "\" & Filename)) < 1 Then
        MsgBox "File does not exist!"
        Exit Sub
    End If
   
    'Open and read the plugin file
    Open PluginDirectory & "\" & Filename For Input As 1
        Do While Not EOF(1)
            Line Input #1, Temp
                PluginContent = PluginContent & Temp & vbCrLf
        Loop
    Close

    'Clear the values from the last plugin to prevent misunderstandings
    Call ClearAllPluginVariables

    'Get the data fields and write them into the public variables
    TempArray = Split(PluginContent, "script_id(")
    TempArray = Split(TempArray(1), ");")
    If Len(TempArray(0)) <> Len(PluginContent) Then
        plugin_id = TempArray(0)
    End If

    TempArray = Split(PluginContent, "script_name(english:" & Chr(34))
    TempArray = Split(TempArray(1), Chr(34) & ");")
    If Len(TempArray(0)) = Len(PluginContent) Then
        TempArray = Split(PluginContent, "name[" & Chr(34) & "english" & Chr(34) & "] = " & Chr(34))
        TempArray = Split(TempArray(1), Chr(34) & ";")
        If Len(TempArray(0)) <> Len(PluginContent) Then
            plugin_name = TempArray(0)
        Else
            plugin_name = plugin_filename
        End If
    Else
        plugin_name = TempArray(0)
    End If

    'Plugin version
    TempArray = Split(PluginContent, "Revision: (" & Chr(34) & "$")
    TempArray = Split(TempArray(1), " $" & Chr(34) & ")")
    If Len(TempArray(0)) <> Len(PluginContent) Then
        plugin_version = TempArray(0)
    End If

    'Description
    TempArray = Split(PluginContent, "desc[" & Chr(34) & "english" & Chr(34) & "] = " & Chr(34) & vbCrLf)
    TempArray = Split(TempArray(1), vbCrLf & "Solution")
    If Len(TempArray(0)) = Len(PluginContent) Then
        TempArray = Split(PluginContent, "edesc= " & Chr(34) & vbCrLf)
        TempArray = Split(TempArray(1), vbCrLf & "Solution")
        
        If Len(TempArray(0)) = Len(PluginContent) Then
            TempArray = Split(PluginContent, "script_description(english:string(" & Chr(34))
            TempArray = Split(TempArray(1), "Risk")
        End If
    End If
    bug_description = Replace$(TempArray(0), vbCrLf, " ")
    bug_description = Replace$(bug_description, Chr(10), " ")
    bug_description = Trim$(bug_description)

    'Solution
    TempArray = Split(PluginContent, "Solution")
    TempArray = Split(TempArray(1), "Risk")
    If Len(TempArray(0)) <> Len(PluginContent) Then
        TempArray = Split(TempArray(0), ": ")
        TempArray = Split(TempArray(1), ";")
        bug_solution = Replace(TempArray(0), vbCrLf, " ")
    End If

    'The risk
    TempArray = Split(PluginContent, "actor")
    TempArray = Split(TempArray(1), Chr(34) & ";")
    If Len(TempArray(0)) <> Len(PluginContent) Then
        If InStr(1, LCase(TempArray(0)), "low", vbBinaryCompare) Then
            bug_severity = "Low"
        ElseIf InStr(1, LCase(TempArray(0)), "medium", vbBinaryCompare) Then
            bug_severity = "Medium"
        ElseIf InStr(1, LCase(TempArray(0)), "high", vbBinaryCompare) Then
            bug_severity = "High"
        ElseIf InStr(1, LCase(TempArray(0)), "critical", vbBinaryCompare) Then
            bug_severity = "Critical"
        Else
            Dim j As Integer
            
            For j = 1 To Len(TempArray(0))
                If Mid$(TempArray(0), j, 1) Like "[A-Za-z]" Then
                    bug_severity = bug_severity & Mid$(TempArray(0), j, 1)
                ElseIf j > 3 Then
                    Exit For
                End If
            Next j
        End If
        bug_nessus_risk = bug_severity
    End If

    TempArray = Split(PluginContent, "family[" & Chr(34) & "english" & Chr(34) & "] = " & Chr(34))
    TempArray = Split(TempArray(1), Chr(34) & ";")
    If Len(TempArray(0)) = Len(PluginContent) Then
        TempArray = Split(TempArray(0), "script_family(english:" & Chr(34))
        TempArray = Split(TempArray(1), Chr(34) & ");")
        If Len(TempArray(0)) <> Len(PluginContent) Then
            plugin_family = TempArray(0)
        End If
    Else
        plugin_family = TempArray(0)
    End If

    TempArray = Split(PluginContent, "if(!port)port = ")
    TempArray = Split(TempArray(1), ";")
    If Len(TempArray(0)) = Len(PluginContent) Then
        TempArray = Split(PluginContent, "script_require_ports")
        TempArray = Split(TempArray(1), ");")
        If Len(TempArray(0)) = Len(PluginContent) Then
            TempArray = Split(TempArray(0), ",")
            plugin_port = Replace(TempArray(0), "," Or vbCrLf, "")
        Else
            plugin_port = "80"
        End If
    Else
        plugin_port = "80"
    End If
    
    If InStr(1, PluginContent, "open_sock_tcp") > 0 Or _
        InStr(1, PluginContent, "http_get") > 0 Then
        plugin_protocol = "tcp"
    ElseIf InStr(1, PluginContent, "open_sock_udp") > 0 Then
        plugin_protocol = "udp"
    ElseIf InStr(1, PluginContent, "forge_icmp_packet") > 0 Then
        plugin_protocol = "icmp"
    Else
        plugin_protocol = "unknown"
    End If

    TempArray = Split(PluginContent, "script_copyright(english:" & Chr(34))
    TempArray = Split(TempArray(1), Chr(34) & ");")
    If Len(TempArray(0)) <> Len(PluginContent) Then
        plugin_comment = TempArray(0)
    End If

    TempArray = Split(PluginContent, "From: ")
    TempArray = Split(TempArray(1), vbCrLf)
    If Len(TempArray(0)) <> Len(PluginContent) Then
        bug_published_name = Replace(TempArray(0), Chr(34), "")
    End If
    
    TempArray = Split(PluginContent, "egrep(pattern:")
    TempArray = Split(TempArray(1), ", string:")
    If Len(TempArray(0)) <> Len(PluginContent) Then
        plugin_trigger = TempArray(0)
    End If

    TempArray = Split(PluginContent, "script_cve_id(")
    TempArray = Split(TempArray(1), ");")
    If Len(TempArray(0)) <> Len(PluginContent) Then
        source_cve = Replace(TempArray(0), Chr(34), "")
    End If

    TempArray = Split(PluginContent, "script_bugtraq_id(")
    TempArray = Split(TempArray(1), ");")
    If Len(TempArray(0)) <> Len(PluginContent) Then
        source_securityfocus_bid = Replace(TempArray(0), Chr(34), "")
    End If

    plugin_request = "open|sleep|close"
    source_nessus_id = plugin_id
    bug_check_tool = "Nessus can check this flaw with the plugin " & source_nessus_id & " (" & plugin_name & ")."

End Sub

