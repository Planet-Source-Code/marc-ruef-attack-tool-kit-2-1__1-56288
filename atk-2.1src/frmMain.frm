VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmMain 
   Caption         =   "Attack Tool Kit"
   ClientHeight    =   6930
   ClientLeft      =   165
   ClientTop       =   780
   ClientWidth     =   8850
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   6930
   ScaleWidth      =   8850
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin MSComctlLib.ImageList imlToolbarIcons 
      Left            =   8160
      Top             =   1560
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   16777215
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   9
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":0CCA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":13EC
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":1AC8
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":21FC
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":290D
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":3047
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":3763
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":3EB4
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":45F1
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar tlbMenu 
      Align           =   1  'Align Top
      Height          =   915
      Left            =   0
      TabIndex        =   8
      Top             =   0
      Width           =   8850
      _ExtentX        =   15610
      _ExtentY        =   1614
      ButtonWidth     =   1640
      ButtonHeight    =   1455
      Wrappable       =   0   'False
      Appearance      =   1
      ImageList       =   "imlToolbarIcons"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   12
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Start"
            Object.ToolTipText     =   "Start the attack"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
            Caption         =   "Stop"
            Object.ToolTipText     =   "Stop the running attack"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Config"
            Object.ToolTipText     =   "Open the configuration"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Edit"
            Object.ToolTipText     =   "Edit the selected plugin"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Reload"
            Object.ToolTipText     =   "Reload the selected plugin"
            ImageIndex      =   5
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Delete"
            Object.ToolTipText     =   "Delete the selected plugin"
            ImageIndex      =   6
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Visualize"
            Object.ToolTipText     =   "Visualize the running attack"
            ImageIndex      =   7
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Response"
            Object.ToolTipText     =   "Analyze the attack response"
            ImageIndex      =   8
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Logs"
            Object.ToolTipText     =   "Analyze the log files"
            ImageIndex      =   9
         EndProperty
      EndProperty
      BorderStyle     =   1
   End
   Begin MSWinsockLib.Winsock wskTCPWinsock 
      Index           =   0
      Left            =   8280
      Top             =   1080
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Timer timTimeout 
      Enabled         =   0   'False
      Interval        =   10000
      Left            =   7800
      Top             =   1080
   End
   Begin VB.Frame fraPluginOverview 
      Caption         =   "Plugin Overview"
      Height          =   4935
      Left            =   3840
      TabIndex        =   7
      Top             =   1560
      Width           =   4935
      Begin VB.TextBox txtPluginContent 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Height          =   4575
         Left            =   120
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   2
         Top             =   240
         Width           =   4695
      End
   End
   Begin MSComctlLib.ProgressBar pbrProgress 
      Height          =   120
      Left            =   7300
      TabIndex        =   5
      Top             =   6740
      Width           =   1170
      _ExtentX        =   2064
      _ExtentY        =   212
      _Version        =   393216
      Appearance      =   0
      Scrolling       =   1
   End
   Begin VB.Frame fraPlugins 
      Caption         =   "Plugins"
      Height          =   4935
      Left            =   120
      TabIndex        =   0
      Top             =   1560
      Width           =   3615
      Begin VB.FileListBox filNASLPlugins 
         Height          =   870
         Left            =   360
         Pattern         =   "*.nasl"
         TabIndex        =   6
         Top             =   2400
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.FileListBox filATKPlugins 
         Height          =   870
         Left            =   360
         Pattern         =   "*.plugin"
         TabIndex        =   4
         Top             =   1440
         Visible         =   0   'False
         Width           =   1455
      End
      Begin MSComctlLib.TreeView tvwPlugins 
         Height          =   4575
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   3375
         _ExtentX        =   5953
         _ExtentY        =   8070
         _Version        =   393217
         HideSelection   =   0   'False
         LabelEdit       =   1
         LineStyle       =   1
         Sorted          =   -1  'True
         Style           =   6
         FullRowSelect   =   -1  'True
         Appearance      =   1
      End
   End
   Begin MSComctlLib.StatusBar StatusBar 
      Align           =   2  'Align Bottom
      Height          =   315
      Left            =   0
      TabIndex        =   3
      Top             =   6615
      Width           =   8850
      _ExtentX        =   15610
      _ExtentY        =   556
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   3
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Object.Width           =   11052
            MinWidth        =   1765
            Text            =   "Ready"
            TextSave        =   "Ready"
            Object.ToolTipText     =   "Status message"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1411
            MinWidth        =   1411
            Text            =   "100 %"
            TextSave        =   "100 %"
            Object.ToolTipText     =   "Percent"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Progress bar"
         EndProperty
      EndProperty
   End
   Begin VB.Label lblVulnerabilityState 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "There was no vulnerability tested yet. Please run the selected plugin to verify the existence of the flaw."
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      MouseIcon       =   "frmMain.frx":4D04
      MousePointer    =   99  'Custom
      TabIndex        =   9
      ToolTipText     =   "Click here to open the response analysis"
      Top             =   1080
      Width           =   8595
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuExitItem 
         Caption         =   "&Exit"
         Shortcut        =   ^Q
      End
   End
   Begin VB.Menu mnuScan 
      Caption         =   "&Scan"
      Begin VB.Menu mnuScanStartItem 
         Caption         =   "&Start"
         Shortcut        =   +^{F1}
      End
      Begin VB.Menu mnuScanStopItem 
         Caption         =   "Sto&p"
         Enabled         =   0   'False
         Shortcut        =   +^{F2}
      End
   End
   Begin VB.Menu mnuConfiguration 
      Caption         =   "&Configuration"
      Begin VB.Menu mnuConfigurationPreferencesItem 
         Caption         =   "&Preferences..."
         Shortcut        =   {F9}
      End
      Begin VB.Menu mnuConfigurationToolbarItem 
         Caption         =   "&Toolbar..."
         Shortcut        =   ^{F9}
      End
   End
   Begin VB.Menu mnuPlugins 
      Caption         =   "&Plugins"
      Begin VB.Menu mnuPluginsReloadAllItem 
         Caption         =   "Reload &all"
         Shortcut        =   {F5}
      End
      Begin VB.Menu mnuPluginsSeparator1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPluginsEditItem 
         Caption         =   "&Edit..."
         Shortcut        =   {F4}
      End
      Begin VB.Menu mnuPluginsExternalEditorItem 
         Caption         =   "Edit with e&xternal editor..."
         Shortcut        =   ^{F4}
      End
      Begin VB.Menu mnuPluginsReloadItem 
         Caption         =   "&Reload"
         Shortcut        =   ^{F5}
      End
      Begin VB.Menu mnuPluginsDeleteItem 
         Caption         =   "&Delete"
         Shortcut        =   {F8}
      End
      Begin VB.Menu mnuPluginsSeparator2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPluginsReportConfigurationItem 
         Caption         =   "&Report configuration..."
      End
      Begin VB.Menu mnuPluginsSeparator3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPluginsDownloadTheLatestPluginsItem 
         Caption         =   "Down&load the latest plugins..."
         Shortcut        =   +^{F5}
      End
      Begin VB.Menu mnuPluginsExportLoadedPluginListItem 
         Caption         =   "E&xport loaded plugin list..."
         Shortcut        =   +^{F6}
      End
   End
   Begin VB.Menu mnuAnalysis 
      Caption         =   "&Analysis"
      Begin VB.Menu mnuAnalysisAttackVisualizingItem 
         Caption         =   "Attack &visualizing..."
         Shortcut        =   ^V
      End
      Begin VB.Menu mnuAnalysisAttackResponseItem 
         Caption         =   "Attack &response..."
         Shortcut        =   ^R
      End
      Begin VB.Menu mnuAnalysisSeparator 
         Caption         =   "-"
      End
      Begin VB.Menu mnuAnalysisLogsItem 
         Caption         =   "&Logs..."
         Shortcut        =   ^L
      End
   End
   Begin VB.Menu mnuReporting 
      Caption         =   "&Reporting"
      Begin VB.Menu mnuReportingConfigurationItem 
         Caption         =   "&Configuration..."
      End
      Begin VB.Menu mnuReportingSeparator1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuReportingShowReportItem 
         Caption         =   "&Show report..."
         Shortcut        =   {F3}
      End
   End
   Begin VB.Menu mnuTools 
      Caption         =   "&Tools"
      Begin VB.Menu mnuNslookupItem 
         Caption         =   "&Nslookup..."
         Shortcut        =   ^{F1}
      End
      Begin VB.Menu mnuICMPPingItem 
         Caption         =   "&ICMP ping..."
         Shortcut        =   ^{F2}
      End
      Begin VB.Menu mnuPortscannerItem 
         Caption         =   "&Portscanner..."
         Shortcut        =   ^{F3}
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuProjectWebSiteItem 
         Caption         =   "Project &web site"
         Shortcut        =   {F12}
      End
      Begin VB.Menu mnuAboutItem 
         Caption         =   "&About"
         Shortcut        =   {F1}
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

' ************************************************************************************
' * Developement History                                                             *
' *                                                                                  *
' * Version 2.1 2004-09-09                                                           *
' * - Fixed an error for the progress bar if more than 199 plugins are loaded.       *
' * Version 2.1 2004-09-08                                                           *
' * - Added a checking routine for unsaved data in the attack editor if a new plugin *
' *   is loaded.                                                                     *
' * - Added a better error checking routine for CVE names.                           *
' * Version 2.1 2004-09-05                                                           *
' * - Changed the frame menu for configuration. Added the two points preferences and *
' *   toolbar.                                                                       *
' * - Also changed the click behavior of the toolbar so a customization works.       *
' * - For faster config access added a context menu for the toolbar menu.            *
' * Version 2.1 2004-09-04                                                           *
' * - Added the progress bar status 100 % if scan is aborded.                        *
' * - Corrected the progress bar during full audit.                                  *
' * Version 2.1 2004-09-03                                                           *
' * - Fixed a runtime error if the user is clicking the right mouse button in the    *
' *   plugin TreeView but there is no node selected.                                 *
' * Version 2.0 2004-08-24                                                           *
' * - Modified the form resize handling to put the progress bar on the right place.  *
' ************************************************************************************

Private Sub filATKPlugins_Click()
    'Read the selected plugin file
    Call ParseATKPlugin(ReadPluginFromFile(filATKPlugins.Filename))
End Sub

' ********************************************************************
' * Here is all the things that happen when the main form is loaded. *
' * I want to keep this par as small as possible and call external   *
' * routines if possible. Just the most important stuff is done here.*
' ********************************************************************

Private Sub Form_Load()
    frmSplashScreen.pbrStatus = 0
    
    'Set the right caption. The constant SoftwareName is given in the config
    'module. Please do every change there.
    Me.Caption = SoftwareName
    frmSplashScreen.pbrStatus = 5
    
    'Write that the software hast started. This has to be done before any other
    'routine has the ability to write a log entry. If this is not the first entry,
    'the whole log will be unorderd.
    WriteLogEntry SoftwareName & " started."
    frmSplashScreen.pbrStatus = 10
    
    'Load the last configuration
    Call LoadConfigFromFile
    frmSplashScreen.pbrStatus = 20
    
    'Check the existence of the directories before loading the data.
    Call CheckDirectoriesBeforeLoading
    frmSplashScreen.pbrStatus = 25
   
    'Load the plugins initially into the list
    Call LoadATKPlugins
    frmSplashScreen.pbrStatus = 60
    Call LoadNASLPlugins
    frmSplashScreen.pbrStatus = 70
    
    'Load initially the default report structure
    Call LoadDefaultReportStructure
    frmSplashScreen.pbrStatus = 80
    
    'Handle the splash screen
    frmSplashScreen.pbrStatus = 100
    Me.Visible = True
    Unload frmSplashScreen
End Sub

' *************************************************************************
' * Check the existence of the needed and wanted directories. If they are *
' * not available and really needed, show a message and create them. We   *
' * prevent error checking during runtime and unpredictable errors.       *
' * Note: The plugins directory is checked in the procedure for loading   *
' *       the plugins. That is done because the check may needed on every *
' *       refresh because new loggins were loaded.                        *
' *************************************************************************

Private Sub CheckDirectoriesBeforeLoading()
    On Error Resume Next
    
    'Check the existence of the suggestions directory
    If (Dir$(SuggestionsDirectory, 16) <> "") = False Then
        'Error message if the plugin directory does not exists
        WriteLogEntry "The suggestions directory " & SuggestionsDirectory & " does not exist."
        MsgBox "No suggestions could be loaded because the default suggestions directory" & vbCrLf & _
            SuggestionsDirectory & vbCrLf & _
            "does not exists! No additionall suggestions are possible at the moment." & vbCrLf & _
            "Please check the suggestions directory configuration.", _
            vbInformation, "Attack Tool Kit precheck suggestions error"
        
        'Make the suggestions directory
        On Error Resume Next 'Skip the mkdir command if there are no write permissions
        MkDir (SuggestionsDirectory)
    End If

    'Check the existence of the logs directory
    If (Dir$(LogsDirectory, 16) <> "") = False Then
        'Error message if the plugin directory does not exists
        WriteLogEntry "The logs directory " & LogsDirectory & " does not exist."
        MsgBox "No file logging could be done because the default logs directory" & vbCrLf & _
            LogsDirectory & vbCrLf & _
            "does not exists! No additionall debugging was possible until now." & vbCrLf & _
            "I created a new logs directory. Please check the new settings.", _
            vbInformation, "Attack Tool Kit precheck logs warning"
        
        'Make the suggestions directory
        On Error Resume Next 'Skip the mkdir command if there are no write permissions
        MkDir (LogsDirectory)
    End If

    'Check the existence of the reports directory
    'If (Dir$(ReportsDirectory, 16) <> "") = False Then
    '    'Error message if the plugin directory does not exists
    '    WriteLogEntry "The reports directory " & ReportsDirectory & " does not exist."
    '    MsgBox "No reports could be cached because the default reports directory" & vbCrLf & _
    '        ReportsDirectory & vbCrLf & _
    '        "does not exists! No further analysis was possible until now." & vbCrLf & _
    '        "I created a new reports directory. Please check the new settings.", _
    '        vbInformation, "Attack Tool Kit precheck suggestions warning"
    '
    '    'Make the suggestions directory
    '    On Error Resume Next 'Skip the mkdir command if there are no write permissions
    '    MkDir (ReportsDirectory)
    'End If
End Sub

Private Sub ValidatePluginInput()
    'Check the plugin port
    If LenB(plugin_port) = 0 Then
        'Write a log entry about the error
        WriteLogEntry "Important attack data plugin_port is missing. Check aborded."
        
        'Show the error message
        MsgBox ("Important attack data plugin_port missing." & vbCrLf & vbCrLf & _
            "Please check the data of your plugin and the data in the check editor."), _
            vbInformation, "Attack Tool Kit error"
        
        'Show the attack editor to eliminate the check error
        frmAttackEditor.Visible = True
    
    'Check the plugin protocol
    ElseIf LenB(plugin_protocol) = 0 Then
        'Write a log entry about the error
        WriteLogEntry "Important attack data plugin_protocol is missing. Check aborded."
        
        'Show the error message
        MsgBox ("Important attack data plugin_protocol missing." & vbCrLf & vbCrLf & _
            "Please check the data of your plugin and the data in the check editor."), _
            vbInformation, "Attack Tool Kit error"
        
        'Show the attack editor to eliminate the check error
        frmAttackEditor.Visible = True
    
    'Check the request length; it should be more than 8 characters because every network check
    'begins with the open command.
    ElseIf LenB(plugin_request) < 8 Then
        'Write a log entry about the error
        WriteLogEntry "Important attack data plugin_request is too short. Check aborded."
        
        'Show the error message
        MsgBox ("Important attack data plugin_request is too short." & vbCrLf & vbCrLf & _
            "Please check the data of your plugin and the data in the check editor."), _
            vbInformation, "Attack Tool Kit error"
        
        'Show the attack editor to eliminate the check error
        frmAttackEditor.Visible = True
    Else
        'Initiate the attack if everything is okay
        Call InitiateAttack
    End If
End Sub

' ***************************************************
' * This routine prepares everything for the check. *
' ***************************************************

Private Sub InitiateAttack()
    Call ReadText("Starting the attack. Please wait until the attempt is finished...")
    
    'Freeze the windows during check
    Call FreezeWindows
    
    'Close the last used socket - Just to be sure
    Call wskTCPWinsock(0).Close

    'Reset the progress bar
    SetProgress 0
    
    'Do ICMP mapping of wanted
    If DoICMPMapping = True Then
        Call ICMPMapping
    Else
        WriteLogEntry "No mapping wanted. Starting attack ..."
        Call InitiateCheckOrAudit
    End If
End Sub

Private Sub ICMPMapping()
    Dim ECHO As ICMP_ECHO_REPLY
    
    'ping an ip address, passing the
    'address and the ECHO structure
    Call Ping(GetIPFromHostName(Target), ECHO)
    WriteLogEntry "Sending ICMP echo request ..."
      
    'display the results from the ECHO structure
    If GetStatusCode(ECHO.status) = 0 Then
        WriteLogEntry "ICMP echo reply received in " & _
            ECHO.RoundTripTime & " ms. Starting attack ..."
        Call InitiateCheckOrAudit
    ElseIf ScanIfICMPFails = True Then
        WriteLogEntry "No ICMP echo reply received. Starting attack ..."
        Call InitiateCheckOrAudit
    Else
        WriteLogEntry "No ICMP echo reply reveiced because " & msg & ". Ready."
        'Enable the form to allow further input
        Call FreeWindows
    End If
End Sub

' *******************************************************************
' * This routine decides if a single check or audit should be done. *
' *******************************************************************

Private Sub InitiateCheckOrAudit()
    'Write the report header
    Call WriteReportHeader
    
    If AttackMode = "SingleCheck" Then
        'Delete the last attack response
        LastResponse = vbNullString
        
        'Start a single check
        Call AttackProcedure
        
    Else
        Dim i As Integer                    'This i is used for the counters
        Dim LoadedPlugins As Integer        'How many plugins are loaded

        LoadedPlugins = filATKPlugins.ListCount

        'Initiate a full security audit
        For i = 1 To LoadedPlugins
            'Check if the scan was stopped
            If Me.tlbMenu.Buttons.Item(2).Enabled = True Then
                'Delete the last attack response
                LastResponse = vbNullString

                'Everytime select the new plugin and do the check until finish
                filATKPlugins.ListIndex = i - 1
                SetProgress (LoadedPlugins / 100) * i
                Call AttackProcedure
            Else
                Exit For
            End If
        Next i
        SetProgress 100
    End If
    Call FreeWindows
End Sub

' *********************************************************
' * This routine starts and manages the attack procedure. *
' * It is the heart or the brain of the software.         *
' *********************************************************

Private Sub AttackProcedure()
    Dim i As Integer            'The counter
    Dim Command() As String     'The array with all commands of a plugin
    Dim CommandCount As Integer 'The number of commands in a row
    
    'Detect DoS and abord if needed
    If InStr(1, bug_vulnerability_class, "Denial of Service") Then
        If DoNoDoSChecks = True Then
            'Message if the vulnerability was found
            WriteLogEntry "No denial of service checks activated. Abording check."
            Call WriteReportVulnerability
            Call FreeWindows
            Exit Sub
        End If
    End If
    
    Call FreezeWindows
        
    'Split the commands in the request apart
    Command = Split(plugin_request, "|")
    
    'Count the commands of this check
    CommandCount = UBound(Command) - LBound(Command)
   
    'Start the attack timeout timer
    timTimeout.Interval = AttackTimeout
    timTimeout.Enabled = False
    timTimeout.Enabled = True

    For i = 0 To CommandCount
        'We need this if the timeout comes before a send command; I have to check this
        On Error Resume Next
    
        'Add for every command the progress bar
        If AttackMode = "SingleCheck" Then
            SetProgress pbrProgress.Value + 100 / (CommandCount + 1)
        End If

        If Mid$(Command(i), 1, 4) = "open" Then
            Dim Try As Integer
            Dim OpenTarget As String
            
            'Check the target host
            If Len(Command(i)) > 4 Then
                OpenTarget = Mid$(Command(i), 6, Len(Command(i)))
            Else
                OpenTarget = Target
            End If
            
            'Open a new connection using the target data
            WriteLogEntry "Opening socket to " & _
                OpenTarget & ":" & plugin_port
            wskTCPWinsock(0).Connect OpenTarget, _
                plugin_port
            
            If IsFormVisible("frmAttackVisualizing") = True Then
                Call frmAttackVisualizing.VisualizeOpenConnection
            End If
            
            'Wait a few moments for a successful connection
            Do While wskTCPWinsock(0).State <> sckConnected
                If Try < AttackTimeout / 2 Then
                    Pause 1
                    Try = Try + 1000
                Else
                    Exit Do
                End If
            Loop
        
        ElseIf Mid$(Command(i), 1, 5) = "close" Then
            If timTimeout.Enabled = True Then
                'Call to close the socket
                Call wskTCPWinsock(0).Close
            End If
            
            If IsFormVisible("frmAttackVisualizing") = True Then
                Call frmAttackVisualizing.VisualizeCloseConnection
            End If
        
        ElseIf Mid$(Command(i), 1, 4) = "send" Then
            Dim DataToSend As String
            
            If wskTCPWinsock(0).State = 7 Then
                If Len(Command(i)) > 4 Then
                    Dim LinefeedArray() As String
                    Dim Linefeeds As String
                    Dim LinefeedCounter As Integer
                        
                    'Split the Linefeeds into an array to count 'em
                    LinefeedArray = Split(Command(i), "\n")
          
                    'Reset the Linefeeds
                    'Developer note: Do not use vbNullString - It does not work anymore!
                    Linefeeds = vbNullString
          
                    'Cumulate the wanted linefeeds
                    For LinefeedCounter = 1 To UBound(LinefeedArray)
                        Linefeeds = Linefeeds & vbCrLf
                    Next LinefeedCounter
                    
                    DataToSend = Mid$(Command(i), 6, Len(Command(i)) - UBound(LinefeedArray) * 2 - 5) & Linefeeds
    
                    'Send the request with its needed command and linefeeds
                    WriteLogEntry "Sending data ..." & DataToSend
                    wskTCPWinsock(0).SendData DataToSend
                Else
                    'Send a "blank" request if the param1 is empty
                    DataToSend = vbCrLf
                    wskTCPWinsock(0).SendData DataToSend
                End If
            
                If IsFormVisible("frmAttackVisualizing") = True Then
                    Call frmAttackVisualizing.VisualizeSendData(DataToSend)
                End If
            End If
        
        ElseIf Mid$(Command(i), 1, 5) = "sleep" Then
            If timTimeout.Enabled = True Then
                Dim SleepTime As Integer    'Save the time wanted to sleep
            
                If Len(Command(i)) > 5 Then
                    'Sleep as long as requested
                    SleepTime = (Mid$(Command(i), 7, Len(Command(i))))
                Else
                    'Sleep default seconds if parameter is missing
                    SleepTime = DefaultSleepValue / 1000
                End If
            
                If IsFormVisible("frmAttackVisualizing") = True Then
                    Call frmAttackVisualizing.VisualizeSleep(SleepTime)
                End If
                
                WriteLogEntry "Sleeping for " & SleepTime & " seconds ..."
                Pause (SleepTime)
            End If
            
        ElseIf Mid$(Command(i), 1, 13) = "pattern_exist" Then
            If IsFormVisible("frmAttackVisualizing") = True Then
                Call frmAttackVisualizing.VisualizePatternExists
            End If
            
            Call PatternChecking

        ElseIf Mid$(Command(i), 1, 10) = "icmp_alive" Then
            'Send ICMP ping
            Dim ECHO As ICMP_ECHO_REPLY
            
            'ping an ip address, passing the
            'address and the ECHO structure
            Call Ping(GetIPFromHostName(Target), ECHO)
              
            'display the results from the ECHO structure
            If GetStatusCode(ECHO.status) = 0 Then
                Call VulnerabilityNotFound
            Else
                Call VulnerabilityFound
            End If
        
        End If
        
    Next i
    
    'Finish the progress bar
    If AttackMode = "SingleCheck" Then
        SetProgress 100
    End If
End Sub

' *********************************************************************
' * This routine is the "brain" of a pattern-based check. Here is the *
' * decision made, if the pattern can be found in the server response.*
' *********************************************************************

Private Sub PatternChecking()
    Dim i As Integer            'The integer for the OR counter
    Dim Patterns() As String    'The array for multiple patterns
    Dim PatternCount As Integer 'The count of the patterns
    
    'Split the multiple OR patterns
    Patterns = Split(plugin_trigger, " OR ")
    
    PatternCount = UBound(Patterns) - LBound(Patterns)
    
    'Check for the existence of one of the patterns
    For i = 0 To PatternCount
        'Check if the string DOES exists in the response; also do a
        'regulary expression check. One of them should recognize the flaw.
        If InStr(1, LastResponse, Patterns(i)) <> 0 Or _
            LastResponse Like Patterns(i) Then
            
            'Call the VulnFound procedure if the pattern was found
            Call VulnerabilityFound
            
            'Write the new pattern. This is needed to check the pattern
            'in the response window and to show the found pattern in
            'the scan report.
            plugin_trigger = Patterns(i)
            
            'Exit the sub if the vulnerability was found
            Exit Sub
        End If
    Next i
    
    'Call the VulnNotFound procedure if the pattern was not found
    Call VulnerabilityNotFound
End Sub

' **********************************************************************
' * This routine calls everything that is needed, if the vulnerability *
' * could be found with the used check.                                *
' **********************************************************************

Private Sub VulnerabilityFound()
    Dim strAlertingText As String
    
    strAlertingText = "The vulnerability " & plugin_name & _
        " was found on port " & plugin_protocol & "/" & plugin_port & _
        " of the host " & Target & "."
    
    'Message if the vulnerability was found
    lblVulnerabilityState.Caption = strAlertingText
    lblVulnerabilityState.BackColor = &HC0C0FF
    WriteLogEntry "Vulnerability found! Ready."
    Call WriteReportVulnerability
    
    'Write the pluginname into the report
    'Call WritePluginNameToReportFile(plugin_filename & ";1;" & Date & ";" & Time)

    'Add an additional space
    ActualReport = ActualReport & vbCrLf

    If IsFormVisible("frmAttackVisualizing") = True Then
        Call frmAttackVisualizing.VisualizeVulnerabilityFound
    End If

    'Show the alert message
    If AlertingVulnFound = True Then
        MsgBox strAlertingText, _
            vbExclamation, "Attack Tool Kit vulnerability found"
    End If

    'Speak the status that the vulnerability seems to be found
    Call ReadText("Check is finished. The vulnerability was found.")
End Sub

' **********************************************************************
' * This routine calls everything that is needed, if the vulnerability *
' * could not be found with the used check.                            *
' **********************************************************************
Private Sub VulnerabilityNotFound()
    Dim strAlertingText As String
    
    strAlertingText = "The vulnerability " & plugin_name & _
        " was not found on port " & plugin_protocol & "/" & plugin_port & _
        " of the host " & Target & "."
    
    'Message if the vulnerability was found
    lblVulnerabilityState.Caption = strAlertingText
    lblVulnerabilityState.BackColor = &HC0FFC0
    WriteLogEntry "Vulnerability not found. Ready."
    ActualReport = ActualReport & _
        "Name: " & plugin_name & vbCrLf & _
        "Plugin ID: " & plugin_id & vbCrLf & _
        "Not found!" & vbCrLf & vbCrLf

    'Write the pluginname into the report
    'Call WritePluginNameToReportFile(plugin_filename & ";0;" & Date & ";" & Time)
    
    If IsFormVisible("frmAttackVisualizing") = True Then
        Call frmAttackVisualizing.VisualizeVulnerabilityNotFound
    End If

    'Show the alert message
    If AlertingVulnNotFound = True Then
        MsgBox "The vulnerability " & plugin_name & vbCrLf & _
        " was not found on port " & plugin_protocol & "/" & plugin_port & " of the host " & Target & ".", _
            vbInformation, "Attack Tool Kit vulnerability not found"
    End If
    
    Call ReadText("Check is finished. The vulnerability was not found.")
End Sub

' ******************************************************************
' * This routine freezes the window, so the user can't give input. *
' * The main reason is to prevent unexpected behaviour during      *
' * checks or other long-term procedures.                          *
' ******************************************************************

Private Sub FreezeWindows()
    'Show the hourglass cursor as cursor during checking
    Screen.MousePointer = 13
    
    'Freeze the window to disallow inputs during checking
    mnuTools.Enabled = False
    tlbMenu.Buttons.Item(1).Enabled = False
    tlbMenu.Buttons.Item(2).Enabled = True
    tlbMenu.Buttons.Item(4).Enabled = False
    tlbMenu.Buttons.Item(6).Enabled = False
    tlbMenu.Buttons.Item(7).Enabled = False
    tlbMenu.Buttons.Item(8).Enabled = False
    tvwPlugins.Enabled = False
    mnuScanStartItem.Enabled = False
    mnuScanStopItem.Enabled = True
    
    If IsFormVisible("frmAttackEditor") = True Then
        frmAttackEditor.Enabled = False
    End If
End Sub

' **************************************************************
' * This routine frees the window, so the user can give input. *
' * This is always then done, when a long-term procedure (e.g. *
' * checking for a vulnerability) is finished.                 *
' **************************************************************

Private Sub FreeWindows()
    timTimeout.Enabled = False
    
    'Enable the form to allow further input
    mnuTools.Enabled = True
    tlbMenu.Buttons.Item(1).Enabled = True
    tlbMenu.Buttons.Item(2).Enabled = False
    tlbMenu.Buttons.Item(4).Enabled = True
    tlbMenu.Buttons.Item(6).Enabled = True
    tlbMenu.Buttons.Item(7).Enabled = True
    tlbMenu.Buttons.Item(8).Enabled = True
    tvwPlugins.Enabled = True
    mnuScanStartItem.Enabled = True
    mnuScanStopItem.Enabled = False
    
    If IsFormVisible("frmAttackEditor") = True Then
        frmAttackEditor.Enabled = True
    End If
           
    'Show the normal cursor
    Screen.MousePointer = vbDefault
End Sub

' *************************************************************************
' * Loading an ATK plugin into the list.  The procedure is public because *
' * there may a refresh needed after a plugin was edited in the attack    *
' * editor. This may be "fixed" in a further release.                     *
' *************************************************************************

Public Sub LoadATKPlugins()
    Dim List As ListItem        'Define the listitem
    Dim i As Integer            'Our counter
    Dim ListCountOfATKPlugins   'A listcount of ATK plugins to increase speed
    Dim sPadding As String      'Padding for some data
    Dim sCVEorCAN As String     'Needed to display the CVE data with detailed infos
    
    'Check the existence of the plugin directory
    If (Dir$(PluginDirectory, 16) <> "") = True Then
        'Set the right plugin directory
        filATKPlugins.Path = PluginDirectory
        
        'Count the loadable plugins
        ListCountOfATKPlugins = filATKPlugins.ListCount
        
        'Error message if no plugins are available
        If ListCountOfATKPlugins > 0 Then
            'Reset the progress bar
            SetProgress 0
            
            'Load the procedure to load the plugins
            WriteLogEntry "Loading the plugins from " & PluginDirectory & "."
            
            On Error Resume Next    'Prevent errors with plugins with missing neededfields
            tvwPlugins.Nodes.Add , , "ATK plugins", "ATK plugins"
                tvwPlugins.Nodes.Add "ATK plugins", tvwChild, "ATK ID", "ID"
                tvwPlugins.Nodes.Add "ATK plugins", tvwChild, "ATK Name", "Name"
                tvwPlugins.Nodes.Add "ATK plugins", tvwChild, "ATK Port", "Port"
                tvwPlugins.Nodes.Add "ATK plugins", tvwChild, "ATK Severity", "Severity"
                tvwPlugins.Nodes.Add "ATK plugins", tvwChild, "ATK Family", "Family"
                tvwPlugins.Nodes.Add "ATK plugins", tvwChild, "ATK Class", "Class"
                tvwPlugins.Nodes.Add "ATK plugins", tvwChild, "ATK CVE", "CVE"
                tvwPlugins.Nodes.Add "ATK plugins", tvwChild, "ATK Nessus", "Nessus ID"
                tvwPlugins.Nodes.Add "ATK plugins", tvwChild, "ATK SecurityFocus", "SecurityFocus BID"
                tvwPlugins.Nodes.Add "ATK plugins", tvwChild, "ATK OSVDB", "OSVDB ID"
                        
            'load the data into the TreeView
            For i = 1 To ListCountOfATKPlugins
                filATKPlugins.ListIndex = i - 1
                        
                'Add the value to the progress bar
                On Error Resume Next
                If pbrProgress.Value < 100 Then
                    SetProgress (ListCountOfATKPlugins / 100) * i
                Else
                    SetProgress 100
                End If
        
                'Add the name sub tree
                tvwPlugins.Nodes.Add "ATK Name", tvwChild, "n" & filATKPlugins.Filename, plugin_name
                
                'Add the id sub tree
                If DoesNodeExsist(plugin_id) = False Then
                    sPadding = vbNullString
                    If Len(plugin_id) = 1 Then
                        sPadding = "    "
                    ElseIf Len(plugin_id) = 2 Then
                        sPadding = "   "
                    ElseIf Len(plugin_id) = 3 Then
                        sPadding = "  "
                    ElseIf Len(plugin_id) = 4 Then
                        sPadding = " "
                    End If
                    tvwPlugins.Nodes.Add "ATK ID", tvwChild, "i" & filATKPlugins.Filename, sPadding & plugin_id
                End If
                
                'Add the severity sub tree
                If DoesNodeExsist("p" & plugin_port) = False Then
                    sPadding = vbNullString
                    If Len(plugin_port) = 1 Then
                        sPadding = "    "
                    ElseIf Len(plugin_port) = 2 Then
                        sPadding = "   "
                    ElseIf Len(plugin_port) = 3 Then
                        sPadding = "  "
                    ElseIf Len(plugin_port) = 4 Then
                        sPadding = " "
                    End If
                    tvwPlugins.Nodes.Add "ATK Port", tvwChild, "p" & plugin_port, sPadding & plugin_port
                End If
                tvwPlugins.Nodes.Add "p" & plugin_port, tvwChild, "p" & filATKPlugins.Filename, plugin_name
                
                'Add the severity sub tree
                If DoesNodeExsist(bug_severity) = False Then
                    tvwPlugins.Nodes.Add "ATK Severity", tvwChild, bug_severity, bug_severity
                End If
                tvwPlugins.Nodes.Add bug_severity, tvwChild, "s" & filATKPlugins.Filename, plugin_name
                
                'Add the family sub tree
                If DoesNodeExsist("f" & plugin_family) = False Then
                    tvwPlugins.Nodes.Add "ATK Family", tvwChild, "f" & plugin_family, plugin_family
                End If
                tvwPlugins.Nodes.Add "f" & plugin_family, tvwChild, "f" & filATKPlugins.Filename, plugin_name
                
                'Add the class sub tree
                If DoesNodeExsist("c" & bug_vulnerability_class) = False Then
                    tvwPlugins.Nodes.Add "ATK Class", tvwChild, "c" & bug_vulnerability_class, bug_vulnerability_class
                End If
                tvwPlugins.Nodes.Add "c" & bug_vulnerability_class, tvwChild, "c" & filATKPlugins.Filename, plugin_name
                
                'Add the CVE sub tree
                If LenB(source_cve) <> 0 Then
                    If LenB(source_cve) = 26 Then
                        If InStr(1, source_cve, "CVE") <> 0 Then
                            sCVEorCAN = "CVE"
                        ElseIf InStr(1, source_cve, "CAN") <> 0 Then
                            sCVEorCAN = "CAN"
                        Else
                            sCVEorCAN = "unknown"
                        End If
                        
                        If DoesNodeExsist("v" & source_cve) = False Then
                            tvwPlugins.Nodes.Add "ATK CVE", tvwChild, "v" & filATKPlugins.Filename, Mid$(source_cve, 5, Len(source_cve)) & " (" & sCVEorCAN & ")"
                        End If
                        tvwPlugins.Nodes.Add "v" & source_cve, tvwChild, "v" & filATKPlugins.Filename, Mid$(source_cve, 5, Len(source_cve)) & " (" & sCVEorCAN & ")"
                    Else
                        If DoesNodeExsist("v" & source_cve) = False Then
                            tvwPlugins.Nodes.Add "ATK CVE", tvwChild, "v" & filATKPlugins.Filename, source_cve & " (undefined)"
                        End If
                        tvwPlugins.Nodes.Add "v" & source_cve, tvwChild, "v" & filATKPlugins.Filename, source_cve & " (undefined)"
                    End If
                End If
            
                'Add the Nessus sub tree
                If LenB(source_nessus_id) <> 0 Then
                    If DoesNodeExsist("u" & source_nessus_id) = False Then
                        tvwPlugins.Nodes.Add "ATK Nessus", tvwChild, "u" & filATKPlugins.Filename, source_nessus_id
                    End If
                    tvwPlugins.Nodes.Add "u" & source_nessus_id, tvwChild, "u" & filATKPlugins.Filename, source_nessus_id
                End If
            
                'Add the SecurityFocus sub tree
                If LenB(source_securityfocus_bid) <> 0 Then
                    sPadding = vbNullString
                    If Len(source_securityfocus_bid) = 1 Then
                        sPadding = "     "
                    ElseIf Len(source_securityfocus_bid) = 2 Then
                        sPadding = "    "
                    ElseIf Len(source_securityfocus_bid) = 3 Then
                        sPadding = "   "
                    ElseIf Len(source_securityfocus_bid) = 4 Then
                        sPadding = "  "
                    ElseIf Len(source_securityfocus_bid) = 5 Then
                        sPadding = " "
                    End If

                    If DoesNodeExsist("b" & source_securityfocus_bid) = False Then
                        tvwPlugins.Nodes.Add "ATK SecurityFocus", tvwChild, "b" & filATKPlugins.Filename, sPadding & source_securityfocus_bid
                    End If
                    tvwPlugins.Nodes.Add "b" & source_securityfocus_bid, tvwChild, "b" & filATKPlugins.Filename, sPadding & source_securityfocus_bid
                End If
            
                'Add the OSVDB sub tree
                If LenB(source_osvdb_id) <> 0 Then
                    sPadding = vbNullString
                    If Len(source_osvdb_id) = 1 Then
                        sPadding = "     "
                    ElseIf Len(source_osvdb_id) = 2 Then
                        sPadding = "    "
                    ElseIf Len(source_osvdb_id) = 3 Then
                        sPadding = "   "
                    ElseIf Len(source_osvdb_id) = 4 Then
                        sPadding = "  "
                    ElseIf Len(source_osvdb_id) = 5 Then
                        sPadding = " "
                    End If

                    If DoesNodeExsist("o" & source_osvdb_id) = False Then
                        tvwPlugins.Nodes.Add "ATK OSVDB", tvwChild, "o" & filATKPlugins.Filename, sPadding & source_osvdb_id
                    End If
                    tvwPlugins.Nodes.Add "o" & source_osvdb_id, tvwChild, "o" & filATKPlugins.Filename, sPadding & source_osvdb_id
                End If
            
            Next i
        
            fraPlugins.Caption = "Plugins (" & HowManyLoadedPlugins & " loaded)"
            WriteLogEntry HowManyLoadedPlugins & " plugins loaded. Ready."
            
            'Sort the loaded data
            tvwPlugins.Nodes(2).Sorted = True    'ID
            tvwPlugins.Nodes(3).Sorted = True    'Name
            tvwPlugins.Nodes(4).Sorted = True    'Port
            tvwPlugins.Nodes(6).Sorted = True    'Plugin family
            tvwPlugins.Nodes(7).Sorted = True    'Vulnerability class
            tvwPlugins.Nodes(8).Sorted = True    'CVE
            tvwPlugins.Nodes(9).Sorted = True    'Nessus
            tvwPlugins.Nodes(10).Sorted = True   'SecurityFocus
            tvwPlugins.Nodes(11).Sorted = True   'OSVDB
            
            'Expand the first node
            tvwPlugins.Nodes(1).Expanded = True
        Else
            WriteLogEntry "In " & PluginDirectory & " could no plugins be found."
            MsgBox "No plugins could be loaded because the default plugin directory" & vbCrLf & _
                PluginDirectory & vbCrLf & _
                "is empty! No predefined checks are possible at the moment." & vbCrLf & _
                "Please check the plugins directory configuration.", _
                vbInformation, "Attack Tool Kit load plugins error"
        End If
    Else
        'Error message if the plugin directory does not exists
        WriteLogEntry "The plugin directory " & PluginDirectory & " does not exists."
        MsgBox "No plugins could be loaded because the default plugin directory" & vbCrLf & _
            PluginDirectory & vbCrLf & _
            "does not exists! No predefined checks are possible at the moment." & vbCrLf & _
            "Please check the plugins directory configuration.", _
            vbInformation, "Attack Tool Kit load plugins error"
        
        'Make the plugin directory
        On Error Resume Next
        MkDir (PluginDirectory)
    End If

    SetProgress 100
End Sub

Public Sub LoadNASLPlugins()
    Dim List As ListItem    'Define the listitem
    Dim i As Integer        'Our counter
    
    'Check the existence of the plugin directory
    If (Dir$(PluginDirectory, 16) <> "") = True Then
        'Set the right plugin directory
        filNASLPlugins.Path = PluginDirectory
        
        'Error message if no plugins are available
        If filNASLPlugins.ListCount > 0 Then
            'Reset the progress bar
            SetProgress 0
            
            'Load the procedure to load the plugins
            WriteLogEntry "Loading the plugins from " & PluginDirectory & "."
            
            tvwPlugins.Nodes.Add , , "NASL plugins", "NASL plugins"
                tvwPlugins.Nodes.Add "NASL plugins", tvwChild, "NASL ID", "ID"
                tvwPlugins.Nodes.Add "NASL plugins", tvwChild, "NASL Name", "Name"
                tvwPlugins.Nodes.Add "NASL plugins", tvwChild, "NASL Port", "Port"
                tvwPlugins.Nodes.Add "NASL plugins", tvwChild, "NASL Severity", "Severity"
                tvwPlugins.Nodes.Add "NASL plugins", tvwChild, "NASL Family", "Family"
                        
            'load the data into the TreeView
            For i = 1 To filNASLPlugins.ListCount
                filNASLPlugins.ListIndex = i - 1

                'Add the value to the progress bar
'                On Error Resume Next
                If pbrProgress.Value < 90 Then
                    SetProgress pbrProgress.Value + 100 / filNASLPlugins.ListCount
                Else
                    SetProgress 100
                End If
        
                'Add the name sub tree
                tvwPlugins.Nodes.Add "NASL Name", tvwChild, "n" & filNASLPlugins.Filename, plugin_name
                
            Next i

            fraPlugins.Caption = "Plugins (" & HowManyLoadedPlugins & " loaded)"
            'WriteLogEntry lsvPlugins.ListItems.Count & " plugins loaded. Ready."

        Else
            'WriteLogEntry "In " & PluginDirectory & " could no plugins be found."
            'MsgBox "No plugins could be loaded because the default plugin directory" & vbCrLf & _
                PluginDirectory & vbCrLf & _
                "is empty! No predefined checks are possible at the moment." & vbCrLf & _
                "Please check the plugins directory configuration.", _
                vbInformation, "Attack Tool Kit load plugins error"
        End If
    Else
        'Error message if the plugin directory does not exists
        WriteLogEntry "The plugin directory " & PluginDirectory & " does not exists."
        MsgBox "No plugins could be loaded because the default plugin directory" & vbCrLf & _
            PluginDirectory & vbCrLf & _
            "does not exists! No predefined checks are possible at the moment." & vbCrLf & _
            "Please check the plugins directory configuration.", _
            vbInformation, "Attack Tool Kit load plugins error"
        
        'Make the plugin directory
        On Error Resume Next
        MkDir (PluginDirectory)
    End If
End Sub

Function DoesNodeExsist(Key As String) As Boolean
    DoesNodeExsist = False
    On Local Error GoTo errhand
    Call TypeName(tvwPlugins.Nodes(Key))

    DoesNodeExsist = True
    Exit Function
errhand:
End Function

Private Sub filNASLPlugins_Click()
    'Read the selected plugin file
    LoadNessusPluginFromFile filNASLPlugins.Filename
End Sub


Private Sub Form_Unload(Cancel As Integer)
    End
End Sub

Private Sub Form_Resize()
    'Check the window state. Do not resize if the window is minimized
    If frmMain.WindowState = vbNormal Or frmMain.WindowState = vbMaximized Then
        'Prevent zu small windows in height
        If frmMain.Height < 6780 Then
            frmMain.Height = 6780
        End If
        
        'Prevent zu small windows in width
        If frmMain.Width < 8055 Then
            frmMain.Width = 8055
        End If
        
        'Do the resizing for the plugins frame
        fraPlugins.Width = frmMain.Width / 2.5

        fraPlugins.Height = frmMain.Height - 2800
        tvwPlugins.Height = fraPlugins.Height - 360
        
        'The listview of the plugins
        tvwPlugins.Width = fraPlugins.Width - 260
        
        'The plugin overview frame
        fraPluginOverview.Left = fraPlugins.Width + 260
        
        fraPluginOverview.Width = frmMain.Width - fraPlugins.Width - 460
        fraPluginOverview.Height = fraPlugins.Height
        
        txtPluginContent.Width = fraPluginOverview.Width - 260
        txtPluginContent.Height = fraPluginOverview.Height - 360
           
        lblVulnerabilityState.Width = fraPluginOverview.Width + fraPlugins.Width + 140
        
        'The progress bar
        pbrProgress.Top = frmMain.Height - 920
        pbrProgress.Left = frmMain.Width - (pbrProgress.Width + 520)
    End If
End Sub

Private Sub lblVulnerabilityState_Click()
    frmAttackResponse.Show vbModeless, Me
End Sub

Private Sub mnuAnalysisAttackResponseItem_Click()
    frmAttackResponse.Show vbModeless, Me
End Sub

Private Sub mnuAnalysisAttackVisualizingItem_Click()
    frmAttackVisualizing.Show vbModeless, Me
End Sub

Private Sub mnuAnalysisLogsItem_Click()
    frmLog.Show vbModal
End Sub

Private Sub mnuConfigurationPreferencesItem_Click()
    frmConfiguration.Show vbModal
End Sub

Private Sub mnuConfigurationToolbarItem_Click()
    tlbMenu.Customize
End Sub

Private Sub mnuPluginsDeleteItem_Click()
    Call mnuContextDeleteItem_Click
End Sub

Private Sub mnuPluginsDownloadTheLatestPluginsItem_Click()
    'Load the latest plugin repository from the project web site
    Call ShellExecute(Me.hwnd, "Open", _
        "http://www.computec.ch/projekte/atk/plugins/atk-plugins.zip", "", App.Path, 1)
End Sub

Private Sub mnuPluginsEditItem_Click()
    frmAttackEditor.Show vbModeless, Me
End Sub

Private Sub mnuPluginsExportLoadedPluginListItem_Click()
    Call ExportPluginsToHTMLFile
End Sub

Private Sub mnuPluginsExternalEditorItem_Click()
    Dim lStatus As Long

    lStatus = ShellExecute(Me.hwnd, "Open", PluginDirectory & "\" & plugin_filename, "", "", 1)
    
    If lStatus = 31 Then
        MsgBox "The ATK plugin file type .plugin is not associated in your system." & vbCrLf & _
            "It is not possible to open a ATK plugin with an external editor." & vbCrLf & _
            "Please create a file association for the file type .plugin first" & vbCrLf & _
            "before selecting this menu point (e.g notepad).", _
            vbExclamation, "Attack Tool Kit external editor error"
    End If
End Sub

Private Sub mnuPluginsReloadAllItem_Click()
    'Delete the whole plugins list
    WriteLogEntry "Unload the loaded plugins ..."
    Call NotExpanded
    tvwPlugins.Nodes.Clear
    
    'Refresh the plugins directory listing. So we can surely detect new files
    'in the plugin directory. And the reload the plugins
    filATKPlugins.Refresh
    Call LoadATKPlugins
    
    filNASLPlugins.Refresh
    Call LoadNASLPlugins
End Sub

Private Sub mnuPluginsReloadItem_Click()
    Call tvwPlugins_NodeClick(tvwPlugins.SelectedItem)
End Sub

Private Sub mnuPluginsReportConfigurationItem_Click()
    frmReportConfiguration.Show vbModal
End Sub

Private Sub mnuReportingConfigurationItem_Click()
    frmReportConfiguration.Show vbModal
End Sub

Private Sub mnuReportingShowReportItem_Click()
    frmReport.Show vbModeless, Me
End Sub

Private Sub mnuScanStartItem_Click()
    Call ValidatePluginInput
End Sub

Private Sub mnuScanStopItem_Click()
    Call StopAttack
End Sub

Public Sub SetProgress(ByVal iValue As Integer)
    'Prevent too large values (this is just a nasty workaround!)
    If iValue > 100 Then
        iValue = 100
    End If
    
    frmMain.StatusBar.Panels(2).Text = iValue & " %"
    pbrProgress.Value = iValue
End Sub

Private Sub timTimeout_Timer()
    WriteLogEntry "Attack timed out after " & _
        timTimeout.Interval & " milliseconds. Ready."
    
    'Close the socket
    Call wskTCPWinsock(0).Close

    'Reset the progress bar if there is a single check
    If AttackMode = "SingleCheck" Then
        SetProgress (100)
    End If

    Call FreeWindows
End Sub

Private Sub StopAttack()
    'Abord the check; well, just closing the open socket.
    WriteLogEntry "Abording check ..."
    Call wskTCPWinsock(0).Close
    Call FreeWindows
    SetProgress 100
    WriteLogEntry "Check aborded. Ready."
End Sub

Private Sub tlbMenu_ButtonClick(ByVal Button As MSComctlLib.Button)
    'Select the toolbar button and call the needed sub routine
    Select Case Button.Caption
        Case "Start" 'Start
            Call ValidatePluginInput
        Case "Stop" 'Stop
            Call StopAttack
        Case "Config" 'Config
            Call mnuConfigurationPreferencesItem_Click
        Case "Edit" 'Edit
            Call mnuPluginsEditItem_Click
        Case "Reload" 'Reload
            Call mnuPluginsReloadItem_Click
        Case "Delete" 'Delete
            Call mnuContextDeleteItem_Click
        Case "Visualize" 'Visualize
            Call mnuAnalysisAttackVisualizingItem_Click
        Case "Response" 'Response
            Call mnuAnalysisAttackResponseItem_Click
        Case "Logs" 'Logs
            Call mnuAnalysisLogsItem_Click
    End Select
End Sub

Private Sub tlbMenu_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        PopupMenu mnuConfiguration
    End If
End Sub

Private Sub tvwPlugins_DblClick()
    If HowManyLoadedPlugins <> 0 Then
        If InStr(1, tvwPlugins.SelectedItem.Key, ".plugin") <> 0 Then
            'Load the attack editor for small modifications
            frmAttackEditor.Visible = True
        End If
    End If
End Sub

Private Sub tvwPlugins_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim oNode As Node
    
    Set oNode = tvwPlugins.HitTest(X, Y)
    
    If Not oNode Is Nothing Then
        If Button = 2 Then
            If HowManyLoadedPlugins <> 0 Then
                If InStr(1, tvwPlugins.SelectedItem.Key, ".plugin") <> 0 Then
                'Show context menu if 2nd mouse button is pressed
                    PopupMenu mnuPlugins
                    'PopupMenu mnuContextPlugins
                End If
            End If
        End If
    End If
End Sub

Private Sub tvwPlugins_NodeClick(ByVal Node As MSComctlLib.Node)
    Dim SelectedKey As String   'Here we save the selected key
    Dim TempReport As String    'Here we chache the actual report

    'Detect unsaved data in the attack editor
    If IsFormVisible("frmAttackEditor") = True Then
        Call frmAttackEditor.CheckIfPluginIsEdited
    End If
    
    If HowManyLoadedPlugins <> 0 Then
        'Center the view
        tvwPlugins.SelectedItem.EnsureVisible
        
        'Save the selected key
        SelectedKey = tvwPlugins.SelectedItem.Key
        
        'Check if the selected key is a plugin filename
        If InStr(1, SelectedKey, ".plugin") Then
            'Strip and cache the filename
            plugin_filename = Mid$(SelectedKey, 2, Len(SelectedKey))
            
            'Read the selected plugin
            Call ParseATKPlugin(ReadPluginFromFile(plugin_filename))
            WriteLogEntry "Reading plugin " & plugin_id & " (" & plugin_filename & ")..."
        
            'Reset the last response
            LastResponse = vbNullString
            
            'Show now the configured plugin content
            'Write the new report in the file
            Call WriteReportTemplateToFile
            
            'Write the actual report into the temp report
            TempReport = ActualReport
            
            'Clear the actual report
            ActualReport = vbNullString
            
            'Compute the report
            Call WriteReportVulnerability
            
            'Show the plugin content
            txtPluginContent.Text = ActualReport
            
            'Write the old report back into the actual report
            ActualReport = TempReport
            
            'Write the data into the attack editor if he is visible
            'If it is not visible he'll do it self on load
            If IsFormVisible("frmAttackEditor") = True Then
                'load the actual values
                Call frmAttackEditor.LoadActualValues
            End If
        End If
    End If
End Sub

Private Sub wskTCPWinsock_DataArrival(Index As Integer, ByVal bytesTotal As Long)
    'Here is the incoming data cached
    Dim DataStr As String
    
    'Update the status bar
    WriteLogEntry "Receiving data from the target ..."
            
    'Read the incoming data and write it to DataStr$
    Call wskTCPWinsock(0).GetData(DataStr$, vbString)
    
    If LenB(LastResponse) < 16000 Then
        LastResponse = LastResponse & DataStr
        LastResponseTime = Time
    Else
        wskTCPWinsock(0).Close
    End If

    Call LoadLatestResponse

    If IsFormVisible("frmAttackVisualizing") = True Then
        frmAttackVisualizing.VisualizeDataArrival
    End If
End Sub

Private Sub wskTCPWinsock_Close(Index As Integer)
    'Write the response to a file
    Call WriteLastResponseToFile
    
    'Update the status bar
    WriteLogEntry "Closing socket ..."
    
    'Disable the timer because a time out makes no sense anymore
    timTimeout.Enabled = False
    
    'Close and free the socket
    wskTCPWinsock(0).Close
End Sub

Private Sub wskTCPWinsock_Error(Index As Integer, ByVal Number As Integer, _
    Description As String, ByVal Scode As Long, ByVal Source As String, _
    ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
    WriteLogEntry "WinSock Error: [" & Number & "] " & Description
    
    Call wskTCPWinsock_Close(0)
End Sub

Public Function Pause(Duration As Long)
    'Sleep function for connection attempts and other stuff.
    Dim Current As Long
    Current = Timer
    Do Until Timer - Current >= Duration
        DoEvents
    Loop
End Function

Private Sub mnuContextDeleteItem_Click()
    'Delete the selected plugin if there is one available
    If tvwPlugins.Nodes.Count <> 0 Then
        tvwPlugins.Nodes.Remove (tvwPlugins.SelectedItem.Index)
    End If
    
    'Actualisize the new plugin count
    fraPlugins.Caption = "Plugins (" & HowManyLoadedPlugins & " loaded)"
End Sub

Private Sub mnuContextRunItem_Click()
    Call ValidatePluginInput
End Sub

Private Sub mnuContextReloadItem_Click()
    'Call lsvPlugins_ItemClick(lsvPlugins.SelectedItem)
End Sub

Private Sub mnuContextReportExampleItem_Click()
    frmReportConfiguration.Visible = True
End Sub

Private Sub mnuExitItem_Click()
    End
End Sub

Private Sub mnuContextEditItem_Click()
    frmAttackEditor.Visible = True
End Sub

Private Sub mnuAboutItem_Click()
    frmAbout.Show vbModeless, Me
End Sub
Private Sub mnuICMPPingItem_Click()
    frmICMPPing.Visible = True
End Sub

Private Sub mnuNslookupItem_Click()
    frmNslookup.Visible = True
End Sub

Private Sub mnuPortscannerItem_Click()
    frmPortscanner.Visible = True
End Sub

Private Sub mnuProjectWebSiteItem_Click()
    'Load the project web site
    Call ShellExecute(Me.hwnd, "Open", "http://www.computec.ch/projekte/atk/", _
        "", App.Path, 1)
End Sub

Private Function NotExpanded()
    Dim mNode   As Node
    
    With tvwPlugins
        For Each mNode In .Nodes
            If mNode.Expanded Then mNode.Expanded = False
        Next
    End With
End Function

