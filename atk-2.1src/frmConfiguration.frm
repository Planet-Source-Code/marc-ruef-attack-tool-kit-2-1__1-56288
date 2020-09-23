VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form frmConfiguration 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Configuration"
   ClientHeight    =   4710
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   7095
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4710
   ScaleWidth      =   7095
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame fraAlerting 
      Caption         =   "Alerting"
      Height          =   3375
      Left            =   240
      TabIndex        =   67
      Top             =   600
      Visible         =   0   'False
      Width           =   6615
      Begin VB.TextBox Text2 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3600
         TabIndex        =   76
         Text            =   "Local host"
         Top             =   960
         Width           =   2655
      End
      Begin VB.TextBox Text1 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3600
         TabIndex        =   74
         Text            =   "Local host"
         Top             =   2160
         Width           =   2655
      End
      Begin VB.ComboBox cmbAlertVulnerabilityNotFound 
         Enabled         =   0   'False
         Height          =   315
         Left            =   480
         TabIndex        =   71
         Text            =   "MessageBox"
         Top             =   2160
         Width           =   2655
      End
      Begin VB.ComboBox cmbAlertVulnerabilityFound 
         Enabled         =   0   'False
         Height          =   315
         Left            =   480
         TabIndex        =   70
         Text            =   "MessageBox"
         Top             =   960
         Width           =   2655
      End
      Begin VB.CheckBox chkAlertingVulnerabilityNotFound 
         Caption         =   "Produce alert when vulnerbility is not found."
         Height          =   255
         Left            =   480
         TabIndex        =   69
         Top             =   1560
         Width           =   3495
      End
      Begin VB.CheckBox chkAlertingVulnerabilityFound 
         Caption         =   "Produce alert when vulnerability is found."
         Height          =   255
         Left            =   480
         TabIndex        =   68
         Top             =   480
         Width           =   3495
      End
      Begin VB.Shape Shape2 
         BackColor       =   &H0000C000&
         BackStyle       =   1  'Opaque
         Height          =   975
         Left            =   120
         Top             =   1560
         Width           =   255
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H000000FF&
         BackStyle       =   1  'Opaque
         Height          =   975
         Left            =   120
         Top             =   360
         Width           =   255
      End
      Begin VB.Label Label6 
         Caption         =   "Target"
         Height          =   255
         Left            =   3600
         TabIndex        =   77
         Top             =   720
         Width           =   735
      End
      Begin VB.Label Label5 
         Caption         =   "Type"
         Height          =   255
         Left            =   480
         TabIndex        =   75
         Top             =   720
         Width           =   975
      End
      Begin VB.Label Label4 
         Caption         =   "Target"
         Height          =   255
         Left            =   3600
         TabIndex        =   73
         Top             =   1920
         Width           =   855
      End
      Begin VB.Label Label3 
         Caption         =   "Type"
         Height          =   255
         Left            =   480
         TabIndex        =   72
         Top             =   1920
         Width           =   855
      End
   End
   Begin VB.Frame fraReports 
      Caption         =   "Reporting"
      Height          =   3375
      Left            =   240
      TabIndex        =   27
      Top             =   600
      Visible         =   0   'False
      Width           =   6615
      Begin VB.DirListBox dirReportsDirectory 
         Height          =   1215
         Left            =   1560
         TabIndex        =   58
         Top             =   240
         Width           =   4935
      End
      Begin VB.Label lblReportTemplateNote 
         Caption         =   "Editing of the report templates can be done in the report configuration."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   1560
         MousePointer    =   99  'Custom
         TabIndex        =   59
         Top             =   1560
         Width           =   4935
      End
      Begin VB.Label lblReportsDirectory 
         Caption         =   "Reports Directory"
         Height          =   255
         Left            =   120
         TabIndex        =   28
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.Frame fraSpeech 
      Caption         =   "Speech"
      Height          =   3375
      Left            =   240
      TabIndex        =   62
      Top             =   600
      Visible         =   0   'False
      Width           =   6615
      Begin VB.CheckBox chkActivateSpeech 
         Caption         =   "Activate Speech"
         Height          =   255
         Left            =   120
         TabIndex        =   66
         Top             =   360
         Width           =   6255
      End
      Begin VB.Label lblSpeechDescription 
         Caption         =   $"frmConfiguration.frx":0000
         Height          =   615
         Left            =   480
         TabIndex        =   63
         Top             =   720
         Width           =   5895
      End
   End
   Begin VB.Frame fraPreferences 
      BorderStyle     =   0  'None
      Height          =   3375
      Left            =   240
      TabIndex        =   29
      Top             =   600
      Visible         =   0   'False
      Width           =   6615
      Begin VB.Frame fraSafety 
         Caption         =   "Safety"
         Height          =   2175
         Left            =   0
         TabIndex        =   44
         Top             =   1200
         Width           =   6615
         Begin VB.CheckBox chkDoSilentChecks 
            Caption         =   "&Do silent checks"
            Height          =   255
            Left            =   120
            TabIndex        =   11
            Top             =   360
            Value           =   1  'Checked
            Width           =   1575
         End
         Begin VB.CheckBox chkDoNoDoSChecks 
            Caption         =   "Do no Denial of Service checks"
            Height          =   255
            Left            =   120
            TabIndex        =   12
            Top             =   1200
            Width           =   2655
         End
         Begin VB.Label lblDoSilentChecksDescription 
            Caption         =   $"frmConfiguration.frx":00F4
            Height          =   495
            Left            =   480
            TabIndex        =   53
            Top             =   720
            Width           =   6015
         End
         Begin VB.Label lblDonoDoSDescription 
            Caption         =   $"frmConfiguration.frx":019A
            Height          =   495
            Left            =   480
            TabIndex        =   52
            Top             =   1560
            Width           =   6015
         End
      End
      Begin VB.Frame fraMode 
         Caption         =   "Mode"
         Height          =   1095
         Left            =   0
         TabIndex        =   32
         Top             =   0
         Width           =   6615
         Begin VB.OptionButton optSingleCheck 
            Caption         =   "&Single Check"
            Height          =   255
            Left            =   120
            TabIndex        =   9
            ToolTipText     =   "Only check specific potential flaws on demand."
            Top             =   360
            Value           =   -1  'True
            Width           =   1815
         End
         Begin VB.OptionButton optFullAudit 
            Caption         =   "&Full Audit"
            Height          =   255
            Left            =   120
            TabIndex        =   10
            ToolTipText     =   "Check the target for all possible potential flaws."
            Top             =   720
            Width           =   1815
         End
         Begin VB.Label lblSingleCheckDescription 
            Caption         =   "Only check specific potential flaws on demand."
            Height          =   255
            Left            =   2040
            TabIndex        =   39
            Top             =   360
            Width           =   4455
         End
         Begin VB.Label lblFullAuditDescription 
            Caption         =   "Check the target for all possible potential flaws."
            Height          =   255
            Left            =   2040
            TabIndex        =   35
            Top             =   720
            Width           =   4455
         End
      End
   End
   Begin VB.Frame fraLogs 
      Caption         =   "Logs"
      Height          =   3375
      Left            =   240
      TabIndex        =   55
      Top             =   600
      Visible         =   0   'False
      Width           =   6615
      Begin VB.DirListBox dirLogs 
         Height          =   1665
         Left            =   1320
         TabIndex        =   65
         Top             =   1560
         Width           =   5175
      End
      Begin VB.CheckBox chkActivateLogs 
         Caption         =   "Activate lo&gs"
         Height          =   255
         Left            =   120
         TabIndex        =   64
         Top             =   360
         Value           =   1  'Checked
         Width           =   6255
      End
      Begin VB.Label lblLogsDirectory 
         Caption         =   "Logs directory"
         Height          =   255
         Left            =   120
         TabIndex        =   57
         Top             =   1560
         Width           =   1095
      End
      Begin VB.Label Label2 
         Caption         =   $"frmConfiguration.frx":0240
         Height          =   615
         Left            =   360
         TabIndex        =   56
         Top             =   720
         Width           =   6015
      End
   End
   Begin VB.Frame fraSuggestions 
      Caption         =   "Suggestions"
      Height          =   3375
      Left            =   240
      TabIndex        =   16
      Top             =   600
      Visible         =   0   'False
      Width           =   6615
      Begin VB.CheckBox chkSuggestions 
         Caption         =   "&Activate suggestions"
         Height          =   255
         Left            =   120
         TabIndex        =   47
         Top             =   360
         Value           =   1  'Checked
         Width           =   1815
      End
      Begin VB.DirListBox dirSuggestions 
         Height          =   2565
         Left            =   1800
         TabIndex        =   49
         Top             =   720
         Width           =   4695
      End
      Begin VB.Label lblSuggestionsDirectory 
         Caption         =   "Suggestions Directory"
         Height          =   255
         Left            =   120
         TabIndex        =   17
         Top             =   720
         Width           =   1575
      End
   End
   Begin VB.Frame fraPlugins 
      Caption         =   "Plugins"
      Height          =   3375
      Left            =   240
      TabIndex        =   0
      Top             =   600
      Visible         =   0   'False
      Width           =   6615
      Begin VB.DirListBox dirPlugins 
         Height          =   1665
         Left            =   1560
         TabIndex        =   34
         Top             =   240
         Width           =   4935
      End
      Begin VB.TextBox txtDefaultSleep 
         Height          =   285
         Left            =   1560
         MaxLength       =   6
         TabIndex        =   38
         Text            =   "3000"
         ToolTipText     =   "Default wait time for sleep command"
         Top             =   2760
         Width           =   735
      End
      Begin VB.TextBox txtTimeout 
         Height          =   285
         Left            =   1560
         MaxLength       =   6
         TabIndex        =   36
         Text            =   "30000"
         ToolTipText     =   "Timeout for the plugins"
         Top             =   2160
         Width           =   735
      End
      Begin VB.Label lblSleepValueDefault 
         Caption         =   "(Default: 3000 = 3 seconds)"
         Height          =   255
         Left            =   2400
         TabIndex        =   60
         Top             =   2760
         Width           =   2295
      End
      Begin VB.Label lblSleepValueName 
         Caption         =   "Default wait value (ms) for sleep command"
         Height          =   615
         Left            =   120
         TabIndex        =   13
         Top             =   2640
         Width           =   1335
      End
      Begin VB.Label lblTimeoutDefault 
         Caption         =   "(Default: 30000 = 30 seconds)"
         Height          =   255
         Left            =   2400
         TabIndex        =   7
         Top             =   2160
         Width           =   2295
      End
      Begin VB.Label lblPluginsDirectoryName 
         Caption         =   "Plugins Directory"
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   360
         Width           =   1335
      End
      Begin VB.Label lblTimeoutName 
         Caption         =   "Timeout (ms) for stucked plugins"
         Height          =   495
         Left            =   120
         TabIndex        =   5
         Top             =   2160
         Width           =   1335
      End
   End
   Begin VB.Frame fraPortscanning 
      Caption         =   "Portscans"
      Enabled         =   0   'False
      Height          =   3375
      Left            =   240
      TabIndex        =   15
      Top             =   600
      Visible         =   0   'False
      Width           =   6615
      Begin VB.CheckBox chkDoActiveBannerGrabbing 
         Caption         =   "Do active banner-grabbing on open ports (decrease speed and increase detect.)"
         Enabled         =   0   'False
         Height          =   255
         Left            =   480
         TabIndex        =   43
         Top             =   3000
         Width           =   6015
      End
      Begin VB.CheckBox chkDoUDPPortscans 
         Caption         =   "Do full-connect &UDP portscans"
         Enabled         =   0   'False
         Height          =   255
         Left            =   3720
         TabIndex        =   31
         Top             =   360
         Width           =   2655
      End
      Begin VB.TextBox txtTCPPortscanMaximumSockets 
         Alignment       =   1  'Right Justify
         Enabled         =   0   'False
         Height          =   285
         Left            =   2040
         TabIndex        =   41
         Text            =   "200"
         Top             =   1920
         Width           =   615
      End
      Begin VB.CheckBox chkDoPassiveBannerGrabbing 
         Caption         =   "Do passive banner-grabbing on open ports (decrease speed a bit)"
         Enabled         =   0   'False
         Height          =   255
         Left            =   480
         TabIndex        =   42
         Top             =   2640
         Width           =   6015
      End
      Begin VB.TextBox txtTCPPortscanSourcePort 
         Alignment       =   1  'Right Justify
         Enabled         =   0   'False
         Height          =   285
         Left            =   2040
         MaxLength       =   5
         TabIndex        =   40
         Text            =   "0"
         Top             =   1560
         Width           =   615
      End
      Begin VB.TextBox txtTCPPortscanEndPort 
         Alignment       =   1  'Right Justify
         Enabled         =   0   'False
         Height          =   285
         Left            =   2040
         MaxLength       =   5
         TabIndex        =   37
         Text            =   "1023"
         Top             =   1200
         Width           =   615
      End
      Begin VB.TextBox txtTCPPortscanStartPort 
         Alignment       =   1  'Right Justify
         Enabled         =   0   'False
         Height          =   285
         Left            =   2040
         MaxLength       =   5
         TabIndex        =   33
         Text            =   "1"
         Top             =   840
         Width           =   615
      End
      Begin VB.CheckBox chkDoTCPPortscans 
         Caption         =   "Do full-connect &TCP portscans"
         Enabled         =   0   'False
         Height          =   255
         Left            =   120
         TabIndex        =   30
         Top             =   360
         Width           =   2655
      End
      Begin VB.Label Label1 
         Caption         =   "Maximum sockets"
         Enabled         =   0   'False
         Height          =   255
         Left            =   480
         TabIndex        =   54
         Top             =   1920
         Width           =   1455
      End
      Begin VB.Label lblTCPPortscanSourcePortNote 
         Caption         =   "(Note: 0 stands for random)"
         Enabled         =   0   'False
         Height          =   255
         Left            =   2760
         TabIndex        =   26
         Top             =   1560
         Width           =   2055
      End
      Begin VB.Label lblTCPPortscanSourcePort 
         Caption         =   "Source port"
         Enabled         =   0   'False
         Height          =   255
         Left            =   480
         TabIndex        =   20
         Top             =   1560
         Width           =   1455
      End
      Begin VB.Label lblTCPPortscanEndPort 
         Caption         =   "End port"
         Enabled         =   0   'False
         Height          =   255
         Left            =   480
         TabIndex        =   19
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label lblTCPPortscanStartPort 
         Caption         =   "Start port"
         Enabled         =   0   'False
         Height          =   255
         Left            =   480
         TabIndex        =   18
         Top             =   840
         Width           =   1455
      End
   End
   Begin VB.Frame fraMapping 
      BorderStyle     =   0  'None
      Height          =   3375
      Left            =   240
      TabIndex        =   45
      Top             =   600
      Visible         =   0   'False
      Width           =   6615
      Begin VB.Frame fraICMPMapping 
         Caption         =   "ICMP Mapping"
         Height          =   1215
         Left            =   0
         TabIndex        =   50
         Top             =   0
         Width           =   6615
         Begin VB.CheckBox chkDoICMPMapping 
            Caption         =   "Do &ICMP mapping (ICMP echo request)"
            Height          =   255
            Left            =   120
            TabIndex        =   21
            Top             =   360
            Value           =   1  'Checked
            Width           =   6375
         End
         Begin VB.CheckBox chkScanifICMPfails 
            Caption         =   "Scan if ICMP mapping fails"
            Height          =   255
            Left            =   480
            TabIndex        =   22
            Top             =   720
            Width           =   2295
         End
      End
      Begin VB.Frame fraTCPMapping 
         Caption         =   "TCP Mapping"
         Height          =   1575
         Left            =   0
         TabIndex        =   46
         Top             =   1320
         Width           =   6615
         Begin VB.TextBox txtTCPMappingPorts 
            Enabled         =   0   'False
            Height          =   285
            Left            =   960
            MaxLength       =   5
            TabIndex        =   24
            Text            =   "80"
            Top             =   720
            Width           =   615
         End
         Begin VB.CheckBox chkScanifTCPfails 
            Caption         =   "Scan if TCP mapping fails"
            Enabled         =   0   'False
            Height          =   255
            Left            =   480
            TabIndex        =   25
            Top             =   1080
            Width           =   2415
         End
         Begin VB.CheckBox chkDoTCPMapping 
            Caption         =   "Do &TCP Mapping (TCP full-connect scan)"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   23
            Top             =   360
            Width           =   3375
         End
         Begin VB.Label lblTCPMappingPortsName 
            Caption         =   "Ports"
            Height          =   255
            Left            =   480
            TabIndex        =   48
            Top             =   720
            Width           =   495
         End
      End
   End
   Begin VB.Frame fraTarget 
      Caption         =   "Target"
      Height          =   3375
      Left            =   240
      TabIndex        =   8
      Top             =   600
      Width           =   6615
      Begin VB.TextBox txtTarget 
         Height          =   285
         Left            =   120
         MaxLength       =   200
         TabIndex        =   1
         Text            =   "localhost"
         ToolTipText     =   "Host name or IP address of the target"
         Top             =   360
         Width           =   6375
      End
      Begin VB.Label lblDisclaimer 
         Alignment       =   2  'Center
         Caption         =   "Warning: You should never scan a network ressource without permission."
         Height          =   375
         Left            =   1800
         TabIndex        =   51
         Top             =   1440
         Width           =   3015
      End
   End
   Begin VB.Frame fraInteractivity 
      BorderStyle     =   0  'None
      Height          =   3375
      Left            =   240
      TabIndex        =   61
      Top             =   600
      Visible         =   0   'False
      Width           =   6615
   End
   Begin VB.CommandButton cmdDefault 
      Caption         =   "&Default"
      Height          =   375
      Left            =   5880
      TabIndex        =   4
      Top             =   4200
      Width           =   1095
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   4680
      TabIndex        =   3
      Top             =   4200
      Width           =   1095
   End
   Begin MSComctlLib.TabStrip tspConfiguration 
      Height          =   3975
      Left            =   120
      TabIndex        =   14
      Top             =   120
      Width           =   6855
      _ExtentX        =   12091
      _ExtentY        =   7011
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   10
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "&Target"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab2 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "P&references"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab3 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "&Mapping"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab4 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Ports&canning"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab5 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "&Plugins"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab6 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "&Alerting"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab7 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "&Suggestions"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab8 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "&Reporting"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab9 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "&Logs"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab10 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "&Speech"
            ImageVarType    =   2
         EndProperty
      EndProperty
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Height          =   375
      Left            =   3480
      TabIndex        =   2
      ToolTipText     =   "Close Configuration"
      Top             =   4200
      Width           =   1095
   End
End
Attribute VB_Name = "frmConfiguration"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

' ************************************************************************************
' * Developement History                                                             *
' *                                                                                  *
' * Version 2.1 2004-09-08                                                           *
' * - Corrected and enhanced the full audit mode warning.                            *
' * Version 2.0 2004-04-08                                                           *
' * - Added the actualizing of the target data in frmAttackVisualizing after         *
' *   clicking accept.                                                               *
' * Version 1.1 2004-03-20                                                           *
' * - Added the configuration file name in the frame caption for more verbosity.     *
' * - Added a warning message if the full audit mode is selected.                    *
' ************************************************************************************

Private Sub chkActivateLogs_Click()
    If chkActivateLogs.Value = 1 Then
        dirLogs.Enabled = True
    Else
        dirLogs.Enabled = False
    End If
End Sub

Private Sub chkDoICMPMapping_Click()
    If chkDoICMPMapping.Value = 0 Then
        chkScanifICMPfails.Enabled = False
    Else
        chkScanifICMPfails.Enabled = True
    End If
End Sub

Private Sub chkDoTCPMapping_Click()
    If chkDoTCPMapping.Value = 0 Then
        chkScanifTCPfails.Enabled = False
        txtTCPMappingPorts.Enabled = False
    Else
        chkScanifTCPfails.Enabled = True
        txtTCPMappingPorts.Enabled = True
    End If
End Sub

Private Sub chkSuggestions_Click()
    If chkSuggestions.Value <> 1 Then
        dirSuggestions.Enabled = False
    Else
        dirSuggestions.Enabled = True
    End If
End Sub

Private Sub cmdOK_Click()
    'Write the new values
    Target = txtTarget.Text
    
    AttackTimeout = txtTimeout.Text
    DefaultSleepValue = txtDefaultSleep.Text

    If PluginDirectory <> dirPlugins.Path Then
        PluginDirectory = dirPlugins.Path
        frmMain.filATKPlugins.Path = PluginDirectory
        frmMain.filNASLPlugins.Path = PluginDirectory
        'Call frmMain.mnuPluginsReloadAllItem_Click
    End If
    
    If SuggestionsDirectory <> dirSuggestions.Path Then
        SuggestionsDirectory = dirSuggestions.Path
    End If

    'If ReportsDirectory <> dirReportsDirectory.Path Then
    '    ReportsDirectory = dirReportsDirectory.Path
    'End If

    If optSingleCheck.Value = True Then
        AttackMode = "SingleCheck"
    ElseIf optFullAudit.Value = True Then
        AttackMode = "FullAudit"
    End If

    If chkDoSilentChecks.Value = 1 Then
        DoSilentChecks = True
    Else
        DoSilentChecks = False
    End If
    
    If chkDoNoDoSChecks.Value = 1 Then
        DoNoDoSChecks = True
    Else
        DoNoDoSChecks = False
    End If

    If chkDoICMPMapping.Value = 1 Then
        DoICMPMapping = True
    Else
        DoICMPMapping = False
    End If

    If chkScanifICMPfails.Value = 1 Then
        ScanIfICMPFails = True
    Else
        ScanIfICMPFails = False
    End If
    
    If chkSuggestions.Value = 1 Then
        ActivateSuggestions = True
    Else
        ActivateSuggestions = False
    End If
        
    If chkAlertingVulnerabilityFound.Value = 1 Then
        AlertingVulnFound = True
    Else
        AlertingVulnFound = False
    End If
    
    If chkAlertingVulnerabilityNotFound.Value = 1 Then
        AlertingVulnNotFound = True
    Else
        AlertingVulnNotFound = False
    End If
    
    If chkActivateLogs.Value = 1 Then
        ActivateLogs = True
    Else
        ActivateLogs = False
    End If
    LogsDirectory = dirLogs.Path
    
    If chkActivateSpeech.Value = 1 Then
        ActivateSpeech = True
    Else
        ActivateSpeech = False
    End If
    
    'Write the actual configuration to the file
    Call WriteConfigToFile
    
    If IsFormVisible("frmAttackVisualizing") = True Then
        frmAttackVisualizing.txtTargetData.Text = Target
        
        If InStr(1, Target, "192.") <> 0 Then
            frmAttackVisualizing.lblNetworkName.Caption = "LAN"
        ElseIf InStr(1, Target, "172.") <> 0 Then
            frmAttackVisualizing.lblNetworkName.Caption = "LAN"
        ElseIf InStr(1, Target, "10.") <> 0 Then
            frmAttackVisualizing.lblNetworkName.Caption = "LAN"
        ElseIf InStr(1, Target, "127.") <> 0 Then
            frmAttackVisualizing.lblNetworkName.Caption = "Localhost"
        Else
            frmAttackVisualizing.lblNetworkName.Caption = "Internet"
        End If
        
    End If
    
    Unload Me
End Sub

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdDefault_Click()
    If MsgBox("You have selected to reset the configuration to the default" & vbCrLf & _
        "configuration. Do you really want to erase the actual configuration?", _
        vbYesNoCancel + vbInformation, "Attack Tool Kit load default configuration") = vbYes Then
        
        If (Dir$(App.Path & "\configs\config.ini", 16) <> "") = True Then
            Kill App.Path & "\configs\config.ini"
        End If
        
        Call LoadConfigFromFile
        
        Unload Me
    End If
End Sub

Private Sub Form_Load()
    'Load the last configuration
    Call LoadConfigFromFile
    
    'Show the frame title with configuration file name
    Me.Caption = "Configuration - " & App.Path & "\configs\config.ini"
    
    'Display and activate the loaded config data
    txtTarget.Text = Target
    dirPlugins.Path = PluginDirectory
    dirSuggestions.Path = SuggestionsDirectory
    'dirReportsDirectory.Path = ReportsDirectory
    txtTimeout.Text = AttackTimeout
    txtDefaultSleep.Text = DefaultSleepValue
    
    If AttackMode = "SingleCheck" Then
        optSingleCheck.Value = True
        optFullAudit.Value = False
    ElseIf AttackMode = "FullAudit" Then
        optSingleCheck.Value = False
        optFullAudit.Value = True
    End If

    If DoSilentChecks = True Then
        chkDoSilentChecks.Value = 1
    Else
        chkDoSilentChecks.Value = 0
    End If
    
    If DoNoDoSChecks = True Then
        chkDoNoDoSChecks.Value = 1
    Else
        chkDoNoDoSChecks.Value = 0
    End If

    If DoICMPMapping = True Then
        chkDoICMPMapping.Value = 1
    Else
        chkDoICMPMapping.Value = 0
    End If

    If ScanIfICMPFails = True Then
        chkScanifICMPfails.Value = 1
    Else
        chkScanifICMPfails.Value = 0
    End If
    
    If AlertingVulnFound = True Then
        chkAlertingVulnerabilityFound.Value = 1
    Else
        chkAlertingVulnerabilityFound.Value = 0
    End If
    
    If AlertingVulnNotFound = True Then
        chkAlertingVulnerabilityNotFound.Value = 1
    Else
        chkAlertingVulnerabilityNotFound.Value = 0
    End If
    
    If ActivateSuggestions = True Then
        chkSuggestions.Value = 1
    Else
        chkSuggestions.Value = 0
    End If
    
    If ActivateLogs = True Then
        chkActivateLogs.Value = 1
    Else
        chkActivateLogs.Value = 0
    End If
    
    On Error Resume Next 'Workaround!
    dirLogs.Path = LogsDirectory
    
    If ActivateSpeech = True Then
        chkActivateSpeech.Value = 1
    Else
        chkActivateSpeech.Value = 0
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set frmConfiguration = Nothing
End Sub

Private Sub lblReportTemplateNote_Click()
    Unload Me
    frmReportConfiguration.Visible = True
End Sub

Private Sub optFullAudit_Click()
    MsgBox "The full audit mode is not the main feature of the ATK." & vbCrLf & _
        "The mode is not very efficient and a general audit task" & vbCrLf & _
        "can much better be done by other well-known security scanners." & vbCrLf & _
        "Please use the single check mode for checking dedicated" & vbCrLf & _
        "vulnerabilities (perhaps already identified by other scanners)" & vbCrLf & _
        "instead.", _
        vbInformation, "Attack Tool Kit full audit information"
End Sub

Private Sub tspConfiguration_Click()
    'Target
    If tspConfiguration.SelectedItem.Index = 1 Then
        fraTarget.Visible = True
        fraPreferences.Visible = False
        fraMapping.Visible = False
        fraPortscanning.Visible = False
        fraPlugins.Visible = False
        fraAlerting.Visible = False
        fraSuggestions.Visible = False
        fraReports.Visible = False
        fraLogs.Visible = False
        fraSpeech.Visible = False
    
    'Preferences
    ElseIf tspConfiguration.SelectedItem.Index = 2 Then
        fraPreferences.Visible = True
        fraTarget.Visible = False
        fraMapping.Visible = False
        fraPortscanning.Visible = False
        fraPlugins.Visible = False
        fraAlerting.Visible = False
        fraSuggestions.Visible = False
        fraReports.Visible = False
        fraLogs.Visible = False
        fraSpeech.Visible = False
    
    'Mapping
    ElseIf tspConfiguration.SelectedItem.Index = 3 Then
        fraMapping.Visible = True
        fraTarget.Visible = False
        fraPreferences.Visible = False
        fraPortscanning.Visible = False
        fraPlugins.Visible = False
        fraAlerting.Visible = False
        fraSuggestions.Visible = False
        fraReports.Visible = False
        fraLogs.Visible = False
        fraSpeech.Visible = False
    
    'Portscanning
    ElseIf tspConfiguration.SelectedItem.Index = 4 Then
        fraPortscanning.Visible = True
        fraTarget.Visible = False
        fraPreferences.Visible = False
        fraMapping.Visible = False
        fraPlugins.Visible = False
        fraAlerting.Visible = False
        fraSuggestions.Visible = False
        fraReports.Visible = False
        fraLogs.Visible = False
        fraSpeech.Visible = False
    
    'Plugins
    ElseIf tspConfiguration.SelectedItem.Index = 5 Then
        fraPlugins.Visible = True
        fraTarget.Visible = False
        fraPreferences.Visible = False
        fraMapping.Visible = False
        fraPortscanning.Visible = False
        fraAlerting.Visible = False
        fraSuggestions.Visible = False
        fraReports.Visible = False
        fraLogs.Visible = False
        fraSpeech.Visible = False
    
    'Alerting
    ElseIf tspConfiguration.SelectedItem.Index = 6 Then
        fraAlerting.Visible = True
        fraTarget.Visible = False
        fraPreferences.Visible = False
        fraMapping.Visible = False
        fraPortscanning.Visible = False
        fraPlugins.Visible = False
        fraSuggestions.Visible = True
        fraReports.Visible = False
        fraLogs.Visible = False
        fraSpeech.Visible = False
    
    'Suggestions
    ElseIf tspConfiguration.SelectedItem.Index = 7 Then
        fraSuggestions.Visible = True
        fraTarget.Visible = False
        fraPreferences.Visible = False
        fraMapping.Visible = False
        fraPortscanning.Visible = False
        fraPlugins.Visible = False
        fraAlerting.Visible = False
        fraReports.Visible = False
        fraLogs.Visible = False
        fraSpeech.Visible = False

    'Reports
    ElseIf tspConfiguration.SelectedItem.Index = 8 Then
        fraReports.Visible = True
        fraTarget.Visible = False
        fraPreferences.Visible = False
        fraMapping.Visible = False
        fraPortscanning.Visible = False
        fraPlugins.Visible = False
        fraAlerting.Visible = False
        fraSuggestions.Visible = False
        fraLogs.Visible = False
        fraSpeech.Visible = False
    
    'Logs
    ElseIf tspConfiguration.SelectedItem.Index = 9 Then
        fraLogs.Visible = True
        fraTarget.Visible = False
        fraPreferences.Visible = False
        fraMapping.Visible = False
        fraPortscanning.Visible = False
        fraPlugins.Visible = False
        fraAlerting.Visible = False
        fraSuggestions.Visible = False
        fraReports.Visible = False
        fraSpeech.Visible = False
    
    'Speech
    ElseIf tspConfiguration.SelectedItem.Index = 10 Then
        fraLogs.Visible = False
        fraTarget.Visible = False
        fraPreferences.Visible = False
        fraMapping.Visible = False
        fraPortscanning.Visible = False
        fraPlugins.Visible = False
        fraAlerting.Visible = False
        fraSuggestions.Visible = False
        fraReports.Visible = False
        fraSpeech.Visible = True
    
    End If
End Sub

Private Sub txtDefaultSleep_Change()
    If Len(txtDefaultSleep.Text) < 1 Then
        txtDefaultSleep.Text = 1
    Else
        If txtDefaultSleep.Text < 1 Then
            txtDefaultSleep.Text = 1
        End If
    End If
End Sub

Private Sub txtDefaultSleep_KeyPress(KeyAscii As Integer)
  Select Case KeyAscii
    Case vbKey0 To vbKey9, vbKeyBack
    Case Else
        KeyAscii = 0
  End Select
End Sub

Private Sub txtTarget_KeyPress(KeyAscii As Integer)
    'If the user presses enter in the target field, the changes were accepted.
    If KeyAscii = "13" Then
        If LenB(txtTarget.Text) <> 0 Then
            Call cmdOK_Click
        End If
    End If
End Sub

Private Sub txtTarget_LostFocus()
    If Len(txtTarget.Text) < 1 Then
        MsgBox ("Target missing." & vbCrLf & vbCrLf & _
            "Please enter the host name or IP address of the target."), vbInformation, "Attack Tool Kit error"
        txtTarget.SetFocus
    End If
End Sub

Private Sub txtTimeout_Change()
    If Len(txtTimeout.Text) < 1 Then
        txtTimeout.Text = 10000
    Else
        If txtTimeout.Text < 10000 Then
            txtTimeout.Text = 10000
        End If
    End If
End Sub

Private Sub txtTimeout_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

