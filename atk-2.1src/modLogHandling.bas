Attribute VB_Name = "modLogHandling"
Option Explicit

Public Sub WriteLogEntry(Text As String)
    'Keep the user up to date in the statusbar
    frmMain.StatusBar.Panels(1).Text = Text
    
    If ActivateLogs = True Then
        'Check if the log directory exists and prepare for the writint
        If (Dir$(LogsDirectory, 16) <> "") = False Then
            MkDir (LogsDirectory)
        End If
    
        'And write the new entry in the log file
        On Error Resume Next    'Needed bevause I can't detect read-only files at the moment.
        Open LogsDirectory & "\log-" & Date & ".log" For Append As #1
            'Write the log entry in the log file
            Print #1, Date & ";" & Time & ";" & Text
        Close
    End If
End Sub
