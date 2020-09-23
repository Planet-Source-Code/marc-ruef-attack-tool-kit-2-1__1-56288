Attribute VB_Name = "modConfigHandling"
Option Explicit

'Change this "constant" on every new release to write the right software name
'and version.
Public Const SoftwareName As String = "Attack Tool Kit 2.1"

Public ActivateLogs As Boolean
Public ActivateSpeech As Boolean
Public ActivateSuggestions As Boolean
Public AlertingVulnFound As Boolean
Public AlertingVulnNotFound As Boolean
Public AttackMode As String
Public AttackTimeout As Long
Public DefaultSleepValue As Integer
Public DoICMPMapping As Boolean
Public DoNoDoSChecks As Boolean
Public DoSilentChecks As Boolean
Public LogsDirectory As String
Public PluginDirectory As String
'Public ReportsDirectory As String
Public ResponseDirectory As String
Public SuggestionsDirectory As String
Public ScanIfICMPFails As Boolean
Public Target As String

Public Sub LoadConfigFromFile()
    'WORKAROUND!
    ResponseDirectory = App.Path & "\responses\"

    Dim TempString As String

    'This boolean values indicate that a value could be found. We need this state
    'to find missing or wrong input and correct them. This list is alphabetically until 1.1
    Dim ActivateLogsV As Boolean
    Dim ActivateSpeechV As Boolean
    Dim ActivateSuggestionsV As Boolean
    Dim AlertingVulnFoundV As Boolean
    Dim AlertingVulnNotFoundV As Boolean
    Dim AttackModeV As Boolean
    Dim AttackTimeoutV As Boolean
    Dim DefaultSleepValueV As Boolean
    Dim DoICMPMappingV As Boolean
    Dim DoNoDoSChecksV As Boolean
    Dim DoSilentChecksV As Boolean
    Dim LogsDirectoryV As Boolean
    Dim PluginDirectoryV As Boolean
    'Dim ReportsDirectoryV As Boolean
    Dim ScanIfICMPFailsV As Boolean
    Dim SuggestionsDirectoryV As Boolean
    Dim TargetV As Boolean
        
    'Check the existence of the config file
    If (Dir$(App.Path & "\configs\config.ini", 16) <> "") = True Then
        'Open and read the plugin file
        Open App.Path & "\configs\config.ini" For Input As #1
            Do While Not EOF(1)
                Line Input #1, TempString
                
                If Mid$(TempString, 1, 16) = "PluginDirectory=" Then
                    PluginDirectoryV = True
                    PluginDirectory = Mid$(TempString, 17, Len(TempString))
                    'Load another directory if it does not exists.
                    On Error Resume Next
                    If (Dir$(PluginDirectory, 16) <> "") = False Then
                        PluginDirectory = App.Path
                    End If
                ElseIf Mid$(TempString, 1, 15) = "ActivateSpeech=" Then
                    ActivateSpeechV = True
                    If Mid$(TempString, 16, Len(TempString)) = 1 Then
                        ActivateSpeech = True
                    Else
                        ActivateSpeech = False
                    End If
                ElseIf Mid$(TempString, 1, 20) = "ActivateSuggestions=" Then
                    ActivateSuggestionsV = True
                    If Mid$(TempString, 21, Len(TempString)) = 1 Then
                        ActivateSuggestions = True
                    Else
                        ActivateSuggestions = False
                    End If
                ElseIf Mid$(TempString, 1, 18) = "AlertingVulnFound=" Then
                    AlertingVulnFoundV = True
                    If Mid$(TempString, 19, Len(TempString)) = 1 Then
                        AlertingVulnFound = True
                    Else
                        AlertingVulnFound = False
                    End If
                ElseIf Mid$(TempString, 1, 21) = "AlertingVulnNotFound=" Then
                    AlertingVulnNotFoundV = True
                    If Mid$(TempString, 22, Len(TempString)) = 1 Then
                        AlertingVulnNotFound = True
                    Else
                        AlertingVulnNotFound = False
                    End If
                ElseIf Mid$(TempString, 1, 21) = "SuggestionsDirectory=" Then
                    SuggestionsDirectoryV = True
                    SuggestionsDirectory = Mid$(TempString, 22, Len(TempString))
                    'Load another directory if it does not exists.
                    If (Dir$(SuggestionsDirectory, 16) <> "") = False Then
                        SuggestionsDirectory = App.Path
                    End If
                'ElseIf Mid$(TempString, 1, 17) = "ReportsDirectory=" Then
                '    ReportsDirectoryV = True
                '    ReportsDirectory = Mid$(TempString, 18, Len(TempString))
                '    'Load another directory if it does not exists.
                '    If (Dir$(ReportsDirectory, 16) <> "") = False Then
                '        ReportsDirectory = App.Path
                '    End If
                ElseIf Mid$(TempString, 1, 14) = "AttackTimeout=" Then
                    AttackTimeoutV = True
                    AttackTimeout = Mid$(TempString, 15, Len(TempString))
                ElseIf Mid$(TempString, 1, 18) = "DefaultSleepValue=" Then
                    DefaultSleepValueV = True
                    DefaultSleepValue = Mid$(TempString, 19, Len(TempString))
                ElseIf Mid$(TempString, 1, 11) = "AttackMode=" Then
                    AttackModeV = True
                    AttackMode = Mid$(TempString, 12, Len(TempString))
                ElseIf Mid$(TempString, 1, 15) = "DoSilentChecks=" Then
                    DoSilentChecksV = True
                    If Mid$(TempString, 16, Len(TempString)) = 1 Then
                        DoSilentChecks = True
                    Else
                        DoSilentChecks = False
                    End If
                ElseIf Mid$(TempString, 1, 14) = "DoNoDoSChecks=" Then
                    DoNoDoSChecksV = True
                    If Mid$(TempString, 15, Len(TempString)) = 1 Then
                        DoNoDoSChecks = True
                    Else
                        DoNoDoSChecks = False
                    End If
                ElseIf Mid$(TempString, 1, 14) = "DoICMPMapping=" Then
                    DoICMPMappingV = True
                    If Mid$(TempString, 15, Len(TempString)) = 1 Then
                        DoICMPMapping = True
                    Else
                        DoICMPMapping = False
                    End If
                ElseIf Mid$(TempString, 1, 16) = "ScanIfICMPFails=" Then
                    ScanIfICMPFailsV = True
                    If Mid$(TempString, 17, Len(TempString)) = 1 Then
                        ScanIfICMPFails = True
                    Else
                        ScanIfICMPFails = False
                    End If
                ElseIf Mid$(TempString, 1, 7) = "Target=" Then
                    TargetV = True
                    Target = Mid$(TempString, 8, Len(TempString))
                ElseIf Mid$(TempString, 1, 13) = "ActivateLogs=" Then
                    ActivateLogsV = True
                    If Mid$(TempString, 14, Len(TempString)) = 1 Then
                        ActivateLogs = True
                    Else
                        ActivateLogs = False
                    End If
                ElseIf Mid$(TempString, 1, 14) = "LogsDirectory=" Then
                    LogsDirectoryV = True
                    LogsDirectory = Mid$(TempString, 15, Len(TempString))
                End If
            Loop
        Close
    End If

    'Define default values if there is no config or no useful value in the config.
    'This is done to prevent false or missing input that would cause to an
    'undefined programm state.
    If PluginDirectoryV = False Then
        PluginDirectory = App.Path & "\plugins"
    End If
    
    If ActivateSuggestionsV = False Then
        ActivateSuggestions = True
    End If
        
    If AlertingVulnFoundV = False Then
        AlertingVulnFound = False
    End If
        
    If AlertingVulnNotFoundV = False Then
        AlertingVulnNotFound = False
    End If
        
    If SuggestionsDirectoryV = False Then
        SuggestionsDirectory = App.Path & "\suggestions"
    End If
        
    'If ReportsDirectoryV = False Then
    '    ReportsDirectory = App.Path & "\reports"
    'End If
        
    If LogsDirectoryV = False Then
        LogsDirectory = App.Path & "\logs"
    End If
        
    If AttackTimeoutV = False Then
        AttackTimeout = 30000
    End If
        
    If DefaultSleepValueV = False Then
        DefaultSleepValue = 3000
    End If
        
    If AttackModeV = False Then
        AttackMode = "SingleCheck"
    End If
        
    If DoSilentChecksV = False Then
        DoSilentChecks = True
    End If
        
    If DoNoDoSChecksV = False Then
        DoNoDoSChecks = False
    End If
        
    If DoICMPMappingV = False Then
        DoICMPMapping = True
    End If
        
    If ScanIfICMPFailsV = False Then
        ScanIfICMPFails = False
    End If
        
    If TargetV = False Then
        Target = "127.0.0.1"
    End If

    'Change frame title so the user can see the next target
    frmMain.Caption = SoftwareName & " - " & Target
End Sub

Public Sub WriteConfigToFile()
    Dim ConfigContent As String
    
    'Write the config file header
    ConfigContent = SoftwareName & " configuration file" & vbCrLf & vbCrLf
    
    'Write a disclaimer
    ConfigContent = ConfigContent & "Disclaimer: This config file is generated automatically by the software itself during runtime." & vbCrLf & _
        "Please do not manually edit these values unless you don't know what you're doing." & vbCrLf & vbCrLf
    
    'Write the plugin directory
    ConfigContent = ConfigContent & "PluginDirectory=" & PluginDirectory & vbCrLf
    
    'Write the suggestions mode
    If ActivateSuggestions = True Then
        ConfigContent = ConfigContent & "ActivateSuggestions=1" & vbCrLf
    ElseIf ActivateSuggestions = False Then
        ConfigContent = ConfigContent & "ActivateSuggestions=0" & vbCrLf
    End If
    
    'Write the suggestionsdirectory
    ConfigContent = ConfigContent & "SuggestionsDirectory=" & SuggestionsDirectory & vbCrLf
    
    'Write the reports directory
    'ConfigContent = ConfigContent & "ReportsDirectory=" & ReportsDirectory & vbCrLf
    
    'Write the attack timeout
    ConfigContent = ConfigContent & "AttackTimeout=" & AttackTimeout & vbCrLf
    
    'Write the default sleep value
    ConfigContent = ConfigContent & "DefaultSleepValue=" & DefaultSleepValue & vbCrLf
    
    'Write the attack mode
    If AttackMode = "SingleCheck" Then
        ConfigContent = ConfigContent & "AttackMode=SingleCheck" & vbCrLf
    ElseIf AttackMode = "FullAudit" Then
        ConfigContent = ConfigContent & "AttackMode=FullAudit" & vbCrLf
    End If
    
    'Write if silent checks should be done
    If DoSilentChecks = True Then
        ConfigContent = ConfigContent & "DoSilentChecks=1" & vbCrLf
    Else
        ConfigContent = ConfigContent & "DoSilentChecks=0" & vbCrLf
    End If
    
    'Write if alerting if the bug is found should be done
    If AlertingVulnFound = True Then
        ConfigContent = ConfigContent & "AlertingVulnFound=1" & vbCrLf
    Else
        ConfigContent = ConfigContent & "AlertingVulnFound=0" & vbCrLf
    End If
    
    'Write if alerting if the bug is found should be done
    If AlertingVulnNotFound = True Then
        ConfigContent = ConfigContent & "AlertingVulnNotFound=1" & vbCrLf
    Else
        ConfigContent = ConfigContent & "AlertingVulnNotFound=0" & vbCrLf
    End If
        
    'Write of denial of service checks should be done
    If DoNoDoSChecks = True Then
        ConfigContent = ConfigContent & "DoNoDoSChecks=1" & vbCrLf
    Else
        ConfigContent = ConfigContent & "DoNoDoSChecks=0" & vbCrLf
    End If
    
    'Write if ICMP mapping should be done
    If DoICMPMapping = True Then
        ConfigContent = ConfigContent & "DoICMPMapping=1" & vbCrLf
    Else
        ConfigContent = ConfigContent & "DoICMPMapping=0" & vbCrLf
    End If
    
    'Write if scan should be done if ICMP mapping fails
    If ScanIfICMPFails = True Then
        ConfigContent = ConfigContent & "ScanIfICMPFails=1" & vbCrLf
    Else
        ConfigContent = ConfigContent & "ScanIfICMPFails=0" & vbCrLf
    End If
    
    'Write the Target
    ConfigContent = ConfigContent & "Target=" & Target & vbCrLf
    
    'Write if logging should be done
    If ActivateLogs = True Then
        ConfigContent = ConfigContent & "ActivateLogs=1" & vbCrLf
    Else
        ConfigContent = ConfigContent & "ActivateLogs=0" & vbCrLf
    End If
    
    'Write the Logs directory
    ConfigContent = ConfigContent & "LogsDirectory=" & LogsDirectory & vbCrLf
    
    'Write if speech output should be done
    If ActivateSpeech = True Then
        ConfigContent = ConfigContent & "ActivateSpeech=1" & vbCrLf
    Else
        ConfigContent = ConfigContent & "ActivateSpeech=0" & vbCrLf
    End If
    
    'Check if the config directory exists and prepare for the writing
    On Error Resume Next ' Needed if there are no write permissions
    If (Dir$(App.Path & "\configs\", 16) <> "") = False Then
        MkDir (App.Path & "\configs\")
    End If
    
    'Write the config in the config gile
    On Error Resume Next ' Needed if there are no write permissions
    Open App.Path & "\configs\config.ini" For Output As #1
        Print #1, ConfigContent
    Close
    
    'Change frame title so the user can see the next target
    frmMain.Caption = SoftwareName & " - " & Target
End Sub

