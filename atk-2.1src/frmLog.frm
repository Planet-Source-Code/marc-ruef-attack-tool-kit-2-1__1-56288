VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.Form frmLog 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Log"
   ClientHeight    =   3525
   ClientLeft      =   150
   ClientTop       =   720
   ClientWidth     =   7230
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3525
   ScaleWidth      =   7230
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.FileListBox filLogs 
      Height          =   870
      Left            =   4440
      TabIndex        =   2
      Top             =   600
      Visible         =   0   'False
      Width           =   1815
   End
   Begin MSComDlg.CommonDialog cdgFileOpen 
      Left            =   120
      Top             =   120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      DialogTitle     =   "Load log file"
      Filter          =   "ATK log files|*.log|All Files|*.*"
   End
   Begin VB.Frame fraLogData 
      Caption         =   "Log Data"
      Height          =   3255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6975
      Begin MSComctlLib.ListView lsvLog 
         Height          =   2895
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   6735
         _ExtentX        =   11880
         _ExtentY        =   5106
         View            =   3
         LabelEdit       =   1
         SortOrder       =   -1  'True
         Sorted          =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         AllowReorder    =   -1  'True
         FullRowSelect   =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   3
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Date"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Time"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Description"
            Object.Width           =   2540
         EndProperty
      End
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuFileOpenItem 
         Caption         =   "&Open"
         Shortcut        =   ^O
      End
      Begin VB.Menu mnuFileSeparator1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileCloseItem 
         Caption         =   "&Close"
         Shortcut        =   ^Q
      End
   End
End
Attribute VB_Name = "frmLog"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
    WriteLogEntry "Loading the " & frmLog.Caption & " window."
    
    If (Dir$(LogsDirectory, 16) <> "") = True Then
        filLogs.Path = LogsDirectory
        
        'Load the default entry
        If filLogs.ListCount <> 0 Then
            filLogs.ListIndex = 0
            Call LoadLogEntries(filLogs.Filename)
        End If
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    WriteLogEntry "Unloading the " & frmLog.Caption & " window."
    Set frmLog = Nothing
End Sub

Private Sub lsvLog_ColumnClick(ByVal ColumnHeader As MSComctlLib.ColumnHeader)
    WriteLogEntry "Reorder the selected log entries."
    If lsvLog.SortKey = ColumnHeader.Index - 1 Then
        If lsvLog.SortOrder = lvwAscending Then
            lsvLog.SortKey = ColumnHeader.Index - 1
            lsvLog.SortOrder = lvwDescending
        Else
            lsvLog.SortKey = ColumnHeader.Index - 1
            lsvLog.SortOrder = lvwAscending
        End If
    Else
        lsvLog.SortKey = ColumnHeader.Index - 1
        lsvLog.SortOrder = lvwAscending
    End If
End Sub

Private Sub lsvLog_DblClick()
    If lsvLog.ListItems.Count <> 0 Then
        MsgBox "Date:" & vbTab & lsvLog.SelectedItem.Text & vbCrLf & _
            "Time:" & vbTab & lsvLog.SelectedItem.SubItems(1) & vbCrLf & _
            "Text:" & vbTab & lsvLog.SelectedItem.SubItems(2), _
            vbOKOnly, "Attack Tool Kit log entry detailed view"
    Else
        MsgBox "No log entries available." & vbCrLf & _
            "Please load a log file first before viewing a selected entry.", _
            vbOKOnly, "Attack Tool Kit log entry detailed view error"
    End If
End Sub

Private Sub mnuFileCloseItem_Click()
    Unload Me
End Sub

Private Sub mnuFileOpenItem_Click()
    Dim LogFileName As String    'Here we save the desired filename for the new plugin
    
    'Define the initial directory of the plugins
    cdgFileOpen.InitDir = LogsDirectory
    
    'Ask the user for the desired filename
    cdgFileOpen.ShowOpen 'Opens the save dialog
    LogFileName = cdgFileOpen.Filename 'Get the filename
    
    'Check if a file was selected
    If LenB(LogFileName) <> 0 Then
        'Check if the file exists
        If (Dir$(LogFileName, 16) <> "") = True Then
            'Load a new log entry
            WriteLogEntry "Opening the log file " & LogFileName
            Call LoadLogEntries(LogFileName)
        End If
    End If
End Sub

Private Sub LoadLogEntries(Filename As String)
    Dim List As ListItem        'Needed for the listview handling
    Dim TempString As String    'Here we save the lines
    Dim TempArray() As String   'In this array we save the split result
    
    'Delete the old displayed log data
    lsvLog.ListItems.Clear
    
    'Open and read the plugin file
    If (Dir$(Filename, 16) <> "") = True Then
        Open Filename For Input As #1
            Do While Not EOF(1)
                Line Input #1, TempString
                    
                'Split the log data to be written
                TempArray = Split(TempString, ";")
                
                'Write the log data into the log frame
                On Error Resume Next    'Just a workaround because I get strange errors
                Set List = lsvLog.ListItems.Add(, , TempArray(0))
                    List.SubItems(1) = TempArray(1)
                    List.SubItems(2) = TempArray(2)
            Loop
        Close
    
        'Set the right column width
        LVColumnWidth lsvLog
    End If

    'Edit the frame title
    Me.Caption = "Log - " & Filename
    fraLogData.Caption = "Log Data (" & Filename & ")"
End Sub
