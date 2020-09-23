VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.Form frmAttackEditor 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Attack Editor"
   ClientHeight    =   6750
   ClientLeft      =   150
   ClientTop       =   720
   ClientWidth     =   7455
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6750
   ScaleWidth      =   7455
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame fraSources 
      Height          =   5175
      Left            =   240
      TabIndex        =   155
      Top             =   1320
      Visible         =   0   'False
      Width           =   6975
      Begin VB.CommandButton cmdUSCERTTA 
         Enabled         =   0   'False
         Height          =   285
         Left            =   6480
         Picture         =   "frmAttackEditor.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   97
         ToolTipText     =   "Open the US-CERT TA URL in the web browser"
         Top             =   720
         Width           =   285
      End
      Begin VB.TextBox txtUSCERTTAID 
         Height          =   285
         Left            =   5040
         TabIndex        =   96
         ToolTipText     =   "The US-CERT Technical Advisory ID of the vulnerability. So the user could find additional details to the flaw."
         Top             =   720
         Width           =   1335
      End
      Begin VB.CommandButton cmdSecurityTracker 
         Enabled         =   0   'False
         Height          =   285
         Left            =   6480
         Picture         =   "frmAttackEditor.frx":038A
         Style           =   1  'Graphical
         TabIndex        =   121
         ToolTipText     =   "Open the SecurityTracker URL in the web browser"
         Top             =   2520
         Width           =   285
      End
      Begin VB.TextBox txtSecurityTrackerID 
         Height          =   285
         Left            =   5040
         MaxLength       =   255
         TabIndex        =   120
         ToolTipText     =   "The SecurityTracker.com URL of the vulnerability. So the user could find additional details to the flaw."
         Top             =   2520
         Width           =   1335
      End
      Begin VB.CommandButton cmdRHSA 
         Enabled         =   0   'False
         Height          =   285
         Left            =   6480
         Picture         =   "frmAttackEditor.frx":0714
         Style           =   1  'Graphical
         TabIndex        =   137
         ToolTipText     =   "Open the Red Hat Security Advisory in the web browser"
         Top             =   3960
         Width           =   285
      End
      Begin VB.TextBox txtRHSAID 
         Height          =   285
         Left            =   5040
         MaxLength       =   13
         TabIndex        =   136
         ToolTipText     =   "The RedHat Security Advisory ID (errata) of the vulnerability. So the user could find additional details to the flaw."
         Top             =   3960
         Width           =   1335
      End
      Begin VB.CommandButton cmdNetBSDSA 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3000
         Picture         =   "frmAttackEditor.frx":0A9E
         Style           =   1  'Graphical
         TabIndex        =   135
         ToolTipText     =   "Open the NetBSD Security Advisory in the web browser"
         Top             =   3960
         Width           =   285
      End
      Begin VB.TextBox txtNetBSDSA 
         Height          =   285
         Left            =   1560
         MaxLength       =   17
         TabIndex        =   134
         ToolTipText     =   "The NetBSD Security Advisory ID of the vulnerability. So the user could find additional details to the flaw."
         Top             =   3960
         Width           =   1335
      End
      Begin VB.CommandButton cmdMSSB 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3000
         Picture         =   "frmAttackEditor.frx":0E28
         Style           =   1  'Graphical
         TabIndex        =   131
         ToolTipText     =   "Open the Microsoft Security Bulletin in the web browser"
         Top             =   3600
         Width           =   285
      End
      Begin VB.TextBox txtMSSBID 
         Height          =   285
         Left            =   1560
         MaxLength       =   8
         TabIndex        =   130
         ToolTipText     =   "The Microsoft Security Bulletin ID of the vulnerability. So the user could find additional details to the flaw."
         Top             =   3600
         Width           =   1335
      End
      Begin VB.TextBox txtISSXForceID 
         Height          =   285
         Left            =   5040
         MaxLength       =   6
         TabIndex        =   128
         ToolTipText     =   "The ISS X-Force ID of the vulnerability. So the user could find additional details to the flaw."
         Top             =   3240
         Width           =   1335
      End
      Begin VB.TextBox txtCERTVUID 
         Height          =   285
         Left            =   5040
         MaxLength       =   6
         TabIndex        =   92
         ToolTipText     =   "The CERT Vulnerability ID of the bug. So the user could find additional details to the flaw."
         Top             =   360
         Width           =   1335
      End
      Begin VB.CommandButton cmdMSKB 
         Enabled         =   0   'False
         Height          =   285
         Left            =   6480
         Picture         =   "frmAttackEditor.frx":11B2
         Style           =   1  'Graphical
         TabIndex        =   133
         ToolTipText     =   "Open the Microsoft Knowledge Base article in the web browser"
         Top             =   3600
         Width           =   285
      End
      Begin VB.TextBox txtMSKBID 
         Height          =   285
         Left            =   5040
         MaxLength       =   7
         TabIndex        =   132
         ToolTipText     =   "The Microsoft Knowledge Base ID of the vulnerability. So the user could find additional details to the flaw."
         Top             =   3600
         Width           =   1335
      End
      Begin VB.CommandButton cmdISSXForce 
         Enabled         =   0   'False
         Height          =   285
         Left            =   6480
         Picture         =   "frmAttackEditor.frx":153C
         Style           =   1  'Graphical
         TabIndex        =   129
         ToolTipText     =   "Open the ISS X-Force entry in the web browser"
         Top             =   3240
         Width           =   285
      End
      Begin VB.CommandButton cmdCIAC 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3000
         Picture         =   "frmAttackEditor.frx":18C6
         Style           =   1  'Graphical
         TabIndex        =   139
         ToolTipText     =   "Open the CIAC entry in the web browser"
         Top             =   4320
         Width           =   285
      End
      Begin VB.TextBox txtCIACID 
         Height          =   285
         Left            =   1560
         MaxLength       =   7
         TabIndex        =   138
         ToolTipText     =   "The CIAC Bulletin ID of the vulnerability. So the user could find additional details to the flaw."
         Top             =   4320
         Width           =   1335
      End
      Begin VB.CommandButton cmdCERTVU 
         Enabled         =   0   'False
         Height          =   285
         Left            =   6480
         Picture         =   "frmAttackEditor.frx":1C50
         Style           =   1  'Graphical
         TabIndex        =   93
         ToolTipText     =   "Open the CERT VU URL in the web browser"
         Top             =   360
         Width           =   285
      End
      Begin VB.CommandButton cmdCERT 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3000
         Picture         =   "frmAttackEditor.frx":1FDA
         Style           =   1  'Graphical
         TabIndex        =   95
         ToolTipText     =   "Open the CERT URL in the web browser"
         Top             =   720
         Width           =   285
      End
      Begin VB.TextBox txtCERTID 
         Height          =   285
         Left            =   1560
         MaxLength       =   10
         TabIndex        =   94
         ToolTipText     =   "The CERT ID of the vulnerability. So the user could find additional details to the flaw."
         Top             =   720
         Width           =   1335
      End
      Begin VB.CommandButton cmdArachnIDS 
         Enabled         =   0   'False
         Height          =   285
         Left            =   6480
         Picture         =   "frmAttackEditor.frx":2364
         Style           =   1  'Graphical
         TabIndex        =   125
         ToolTipText     =   "Open the arachnIDS entry in the web browser"
         Top             =   2880
         Width           =   285
      End
      Begin VB.TextBox txtArachnIDSID 
         Height          =   285
         Left            =   5040
         MaxLength       =   7
         TabIndex        =   124
         ToolTipText     =   "The arachnIDS ID of the vulnerability. So the user could find additional details to the flaw."
         Top             =   2880
         Width           =   1335
      End
      Begin VB.CommandButton cmdOSVDB 
         Enabled         =   0   'False
         Height          =   285
         Left            =   6480
         Picture         =   "frmAttackEditor.frx":26EE
         Style           =   1  'Graphical
         TabIndex        =   105
         ToolTipText     =   "Open the OSVDB entry in the web browser"
         Top             =   1080
         Width           =   285
      End
      Begin VB.TextBox txtOSVDBID 
         Height          =   285
         Left            =   5040
         MaxLength       =   6
         TabIndex        =   103
         ToolTipText     =   "The Open Source Vulnerability Data Base (OSVDB) ID of the vulnerability. So the user could find additional details to the flaw."
         Top             =   1080
         Width           =   1335
      End
      Begin VB.CommandButton cmdSecurityFocus 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3000
         Picture         =   "frmAttackEditor.frx":2A78
         Style           =   1  'Graphical
         TabIndex        =   101
         ToolTipText     =   "Open the SecurityFocus entry in the web browser"
         Top             =   1080
         Width           =   285
      End
      Begin VB.TextBox txtSecurityFocusBID 
         Height          =   285
         Left            =   1560
         MaxLength       =   6
         TabIndex        =   99
         ToolTipText     =   "The SecurityFocus BID (bugtraq id) of the vulnerability. So the user could find additional details to the flaw."
         Top             =   1080
         Width           =   1335
      End
      Begin VB.ComboBox cmbSourcesLiterature 
         Height          =   315
         Left            =   1560
         TabIndex        =   150
         ToolTipText     =   "Further literature for finding additional details to the flaw."
         Top             =   4680
         Width           =   4815
      End
      Begin VB.CommandButton cmdSnort 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3000
         Picture         =   "frmAttackEditor.frx":2E02
         Style           =   1  'Graphical
         TabIndex        =   123
         ToolTipText     =   "Open the Snort entry in the web browser"
         Top             =   2880
         Width           =   285
      End
      Begin VB.CommandButton cmdSecuriTeamURL 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3000
         Picture         =   "frmAttackEditor.frx":318C
         Style           =   1  'Graphical
         TabIndex        =   119
         ToolTipText     =   "Open the SecuriTeam posting in the web browser"
         Top             =   2520
         Width           =   285
      End
      Begin VB.CommandButton cmdHeiseNews 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3000
         Picture         =   "frmAttackEditor.frx":3516
         Style           =   1  'Graphical
         TabIndex        =   115
         ToolTipText     =   "Open the Heise news in the web browser"
         Top             =   2160
         Width           =   285
      End
      Begin VB.CommandButton cmdScip 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3000
         Picture         =   "frmAttackEditor.frx":38A0
         Style           =   1  'Graphical
         TabIndex        =   111
         ToolTipText     =   "Open the scip entry in the web browser"
         Top             =   1800
         Width           =   285
      End
      Begin VB.CommandButton cmdSecunia 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3000
         Picture         =   "frmAttackEditor.frx":3C2A
         Style           =   1  'Graphical
         TabIndex        =   107
         ToolTipText     =   "Open the Secunia advisory in the web browser"
         Top             =   1440
         Width           =   285
      End
      Begin VB.CommandButton cmdCVE 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3000
         Picture         =   "frmAttackEditor.frx":3FB4
         Style           =   1  'Graphical
         TabIndex        =   91
         ToolTipText     =   "Open the CVE entry in the web browser"
         Top             =   360
         Width           =   285
      End
      Begin VB.CommandButton cmdLiterature 
         Enabled         =   0   'False
         Height          =   285
         Left            =   6480
         Picture         =   "frmAttackEditor.frx":433E
         Style           =   1  'Graphical
         TabIndex        =   151
         ToolTipText     =   "Open the Amazon web site"
         Top             =   4680
         Width           =   285
      End
      Begin VB.CommandButton cmdMisc 
         Enabled         =   0   'False
         Height          =   285
         Left            =   6480
         Picture         =   "frmAttackEditor.frx":46C8
         Style           =   1  'Graphical
         TabIndex        =   141
         ToolTipText     =   "Open the misc. URL in the web browser"
         Top             =   4320
         Width           =   285
      End
      Begin VB.CommandButton cmdNessus 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3000
         Picture         =   "frmAttackEditor.frx":4A52
         Style           =   1  'Graphical
         TabIndex        =   127
         ToolTipText     =   "Open the Nessus entry in the web browser"
         Top             =   3240
         Width           =   285
      End
      Begin VB.CommandButton cmdHeiseSecurity 
         Enabled         =   0   'False
         Height          =   285
         Left            =   6480
         Picture         =   "frmAttackEditor.frx":4DDC
         Style           =   1  'Graphical
         TabIndex        =   117
         ToolTipText     =   "Open the heise security news in the web browser"
         Top             =   2160
         Width           =   285
      End
      Begin VB.CommandButton cmdAeraSec 
         Enabled         =   0   'False
         Height          =   285
         Left            =   6480
         Picture         =   "frmAttackEditor.frx":5166
         Style           =   1  'Graphical
         TabIndex        =   113
         ToolTipText     =   "Open the AeraSec entry in the web browser"
         Top             =   1800
         Width           =   285
      End
      Begin VB.CommandButton cmdTecChannel 
         Enabled         =   0   'False
         Height          =   285
         Left            =   6480
         Picture         =   "frmAttackEditor.frx":54F0
         Style           =   1  'Graphical
         TabIndex        =   109
         ToolTipText     =   "Open the tecchannel entry in the web browser"
         Top             =   1440
         Width           =   285
      End
      Begin VB.TextBox txtSecuriTeamURL 
         Height          =   285
         Left            =   1560
         MaxLength       =   255
         TabIndex        =   118
         ToolTipText     =   "The SecuriTeam.com URL of the vulnerability. So the user could find additional details to the flaw."
         Top             =   2520
         Width           =   1335
      End
      Begin VB.TextBox txtSourceMisc 
         Height          =   285
         Left            =   5040
         MaxLength       =   255
         TabIndex        =   140
         ToolTipText     =   "Other sources that could not be listed in the other source fields."
         Top             =   4320
         Width           =   1335
      End
      Begin VB.TextBox txtAeraSecID 
         Height          =   285
         Left            =   5040
         MaxLength       =   13
         TabIndex        =   112
         ToolTipText     =   "The AeraSec ID of the vulnerability. So the user could find additional details (german) to the flaw."
         Top             =   1800
         Width           =   1335
      End
      Begin VB.TextBox txtHeiseSecurity 
         Height          =   285
         Left            =   5040
         MaxLength       =   8
         TabIndex        =   116
         ToolTipText     =   "The Heise Security ID  of the vulnerability. So the user could find additional details (german) to the flaw."
         Top             =   2160
         Width           =   1335
      End
      Begin VB.TextBox txtHeiseNews 
         Height          =   285
         Left            =   1560
         MaxLength       =   6
         TabIndex        =   114
         ToolTipText     =   "The Heise News ID of the vulnerability. So the user could find additional details (german) to the flaw."
         Top             =   2160
         Width           =   1335
      End
      Begin VB.TextBox txtTecchannelID 
         Height          =   285
         Left            =   5040
         MaxLength       =   6
         TabIndex        =   108
         ToolTipText     =   "The tecchannel ID of the vulnerability. So the user could find additional details (german) to the flaw."
         Top             =   1440
         Width           =   1335
      End
      Begin VB.TextBox txtScipID 
         Height          =   285
         Left            =   1560
         MaxLength       =   5
         TabIndex        =   110
         ToolTipText     =   "The scipID of the vulnerability. So the user could find additional details (german) to the flaw."
         Top             =   1800
         Width           =   1335
      End
      Begin VB.TextBox txtSecuniaID 
         Height          =   285
         Left            =   1560
         MaxLength       =   6
         TabIndex        =   106
         ToolTipText     =   "The Secunia ID of the vulnerability. So the user could find additional details to the flaw."
         Top             =   1440
         Width           =   1335
      End
      Begin VB.TextBox txtSnortID 
         Height          =   285
         Left            =   1560
         MaxLength       =   6
         TabIndex        =   122
         ToolTipText     =   "The SnortID of the vulnerability. So the user could find additional details to the flaw."
         Top             =   2880
         Width           =   1335
      End
      Begin VB.TextBox txtNessusID 
         Height          =   285
         Left            =   1560
         MaxLength       =   6
         TabIndex        =   126
         ToolTipText     =   "The NessusID of the vulnerability. So the user could find additional details to the flaw."
         Top             =   3240
         Width           =   1335
      End
      Begin VB.TextBox txtCVE 
         Height          =   285
         Left            =   1560
         MaxLength       =   13
         TabIndex        =   90
         ToolTipText     =   "The CAN or CVE number of the vulnerability. So the user could find additional details to the flaw."
         Top             =   360
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "US-CERT TA ID"
         Height          =   255
         Index           =   24
         Left            =   3600
         TabIndex        =   180
         ToolTipText     =   "source_uscertta_id"
         Top             =   720
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "SecurityTracker"
         Height          =   255
         Index           =   23
         Left            =   3600
         TabIndex        =   179
         ToolTipText     =   "source_securitytracker_url"
         Top             =   2520
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "RedHat RHSA ID"
         Height          =   255
         Index           =   22
         Left            =   3600
         TabIndex        =   178
         ToolTipText     =   "source_rhsa_id"
         Top             =   3960
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "NetBSD SA"
         Height          =   255
         Index           =   21
         Left            =   120
         TabIndex        =   177
         ToolTipText     =   "source_netbsdsa_id"
         Top             =   3960
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "MS SB ID"
         Height          =   255
         Index           =   20
         Left            =   120
         TabIndex        =   176
         ToolTipText     =   "source_mssb_id"
         Top             =   3600
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "MS KB ID"
         Height          =   255
         Index           =   9
         Left            =   3600
         TabIndex        =   175
         ToolTipText     =   "source_mskb_id"
         Top             =   3600
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "ISS X-Force ID"
         Height          =   255
         Index           =   19
         Left            =   3600
         TabIndex        =   174
         ToolTipText     =   "source_issxforce_id"
         Top             =   3240
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "CIAC ID"
         Height          =   255
         Index           =   8
         Left            =   120
         TabIndex        =   173
         ToolTipText     =   "source_ciac_id"
         Top             =   4320
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "CERT VU ID"
         Height          =   255
         Index           =   18
         Left            =   3600
         TabIndex        =   172
         ToolTipText     =   "source_certvu_id"
         Top             =   360
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "CERT ID"
         Height          =   255
         Index           =   7
         Left            =   120
         TabIndex        =   171
         ToolTipText     =   "source_cert_id"
         Top             =   720
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "arachnIDS ID"
         Height          =   255
         Index           =   17
         Left            =   3600
         TabIndex        =   170
         ToolTipText     =   "source_arachnids_id"
         Top             =   2880
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "OSVDB ID"
         Height          =   255
         Index           =   6
         Left            =   3600
         TabIndex        =   169
         ToolTipText     =   "source_osvdb_id"
         Top             =   1080
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "SecurityFocus BID"
         Height          =   255
         Index           =   11
         Left            =   120
         TabIndex        =   168
         ToolTipText     =   "source_securityfocus_bid"
         Top             =   1080
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "SecuriTeam.com"
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   167
         ToolTipText     =   "source_securiteam_url"
         Top             =   2520
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "Misc."
         Height          =   255
         Index           =   16
         Left            =   3600
         TabIndex        =   166
         ToolTipText     =   "source_misc"
         Top             =   4320
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "Literature"
         Height          =   255
         Index           =   10
         Left            =   120
         TabIndex        =   165
         ToolTipText     =   "source_literature"
         Top             =   4680
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "AeraSec ID"
         Height          =   255
         Index           =   13
         Left            =   3600
         TabIndex        =   164
         ToolTipText     =   "source_aerasec_id"
         Top             =   1800
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "Heise Security ID"
         Height          =   255
         Index           =   14
         Left            =   3600
         TabIndex        =   163
         ToolTipText     =   "source_heise_security"
         Top             =   2160
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "Heise News ID"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   162
         ToolTipText     =   "source_heise_news"
         Top             =   2160
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "Tecchannel ID"
         Height          =   255
         Index           =   12
         Left            =   3600
         TabIndex        =   161
         ToolTipText     =   "source_tecchannel_id"
         Top             =   1440
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "scip ID"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   160
         ToolTipText     =   "source_scip_id"
         Top             =   1800
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "Secunia ID"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   159
         ToolTipText     =   "source_secunia_id"
         Top             =   1440
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "Snort ID"
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   158
         ToolTipText     =   "source_snort_id"
         Top             =   2880
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "Nessus ID"
         Height          =   255
         Index           =   15
         Left            =   120
         TabIndex        =   157
         ToolTipText     =   "source_nessus_id"
         Top             =   3240
         Width           =   1335
      End
      Begin VB.Label lblSource 
         Caption         =   "CVE"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   156
         ToolTipText     =   "source_cve"
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.Frame fraDescription 
      Height          =   5175
      Left            =   240
      TabIndex        =   16
      Top             =   1320
      Visible         =   0   'False
      Width           =   6975
      Begin VB.ComboBox cmbPluginFamily 
         Height          =   315
         Left            =   1200
         TabIndex        =   20
         ToolTipText     =   "The name of the plugin family. This field allows grouping of similar checks."
         Top             =   1560
         Width           =   2775
      End
      Begin VB.CommandButton cmdDescriptionWizard 
         Height          =   255
         Left            =   6600
         Picture         =   "frmAttackEditor.frx":587A
         Style           =   1  'Graphical
         TabIndex        =   22
         ToolTipText     =   "Open the description wizard"
         Top             =   2040
         Width           =   255
      End
      Begin VB.CheckBox chkRemote 
         Height          =   255
         Left            =   1200
         TabIndex        =   18
         ToolTipText     =   "This field indicates the possibility to a successfully remote attack."
         Top             =   600
         Width           =   255
      End
      Begin VB.CheckBox chkLocal 
         Height          =   255
         Left            =   1200
         TabIndex        =   17
         ToolTipText     =   "This field indicates the possibility to a successfully local attack."
         Top             =   360
         Width           =   255
      End
      Begin VB.ComboBox cmbVulnerabilityClass 
         Height          =   315
         Left            =   1200
         TabIndex        =   19
         ToolTipText     =   "Class of the vulnerability. Similar to the family field should this field allow grouping of similar plugins."
         Top             =   1080
         Width           =   2775
      End
      Begin VB.TextBox txtDescription 
         Height          =   3015
         Left            =   1200
         MaxLength       =   10000
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   21
         ToolTipText     =   $"frmAttackEditor.frx":5C04
         Top             =   2040
         Width           =   5295
      End
      Begin VB.Label lblPluginInformation 
         Caption         =   "Plugin family"
         Height          =   255
         Index           =   8
         Left            =   120
         TabIndex        =   187
         ToolTipText     =   "bug_plugin_family"
         Top             =   1560
         Width           =   1095
      End
      Begin VB.Label lblRemote 
         Caption         =   "Remote"
         Height          =   255
         Left            =   120
         TabIndex        =   146
         ToolTipText     =   "bug_remote"
         Top             =   600
         Width           =   975
      End
      Begin VB.Label lblLocal 
         Caption         =   "Local"
         Height          =   255
         Left            =   120
         TabIndex        =   145
         ToolTipText     =   "bug_local"
         Top             =   360
         Width           =   975
      End
      Begin VB.Image imgVulnerabilityClass 
         Height          =   240
         Left            =   4200
         Picture         =   "frmAttackEditor.frx":5CAE
         ToolTipText     =   "Unknown"
         Top             =   1080
         Width           =   240
      End
      Begin VB.Label lblClass 
         Caption         =   "Class"
         Height          =   255
         Left            =   120
         TabIndex        =   98
         ToolTipText     =   "bug_vulnerability_class"
         Top             =   1080
         Width           =   975
      End
      Begin VB.Label lblDescription 
         Caption         =   "Description"
         Height          =   255
         Left            =   120
         TabIndex        =   23
         ToolTipText     =   "bug_description"
         Top             =   2040
         Width           =   975
      End
   End
   Begin VB.Frame fraAttackData 
      Height          =   5175
      Left            =   240
      TabIndex        =   3
      Top             =   1320
      Width           =   6975
      Begin VB.CommandButton cmdAddPort 
         Height          =   255
         Left            =   2880
         Picture         =   "frmAttackEditor.frx":5DF8
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Open the port wizard"
         Top             =   840
         Width           =   255
      End
      Begin VB.CommandButton cmdAddTrigger 
         Height          =   255
         Left            =   6600
         Picture         =   "frmAttackEditor.frx":6182
         Style           =   1  'Graphical
         TabIndex        =   152
         ToolTipText     =   "Open the trigger wizard"
         Top             =   3120
         Width           =   255
      End
      Begin VB.CommandButton cmdAddRequest 
         Height          =   255
         Left            =   6600
         Picture         =   "frmAttackEditor.frx":650C
         Style           =   1  'Graphical
         TabIndex        =   149
         ToolTipText     =   "Open the request wizard"
         Top             =   1320
         Width           =   255
      End
      Begin VB.TextBox txtTrigger 
         Height          =   1815
         Left            =   840
         MaxLength       =   10000
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   8
         ToolTipText     =   $"frmAttackEditor.frx":6896
         Top             =   3240
         Width           =   5655
      End
      Begin VB.TextBox txtRequest 
         Height          =   1815
         Left            =   840
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   7
         ToolTipText     =   "The sentence of request for the check. The single commands are seperated by the pipe symbol (""|"")."
         Top             =   1320
         Width           =   5655
      End
      Begin VB.TextBox txtPort 
         Height          =   285
         Left            =   840
         MaxLength       =   5
         TabIndex        =   5
         ToolTipText     =   "The for the check used destination port number. This is a value between 0 and 65535."
         Top             =   840
         Width           =   855
      End
      Begin VB.ComboBox cmbProtocol 
         Height          =   315
         Left            =   840
         TabIndex        =   4
         Text            =   "tcp"
         ToolTipText     =   "Defines which protocol should be used for the check."
         Top             =   360
         Width           =   855
      End
      Begin VB.ListBox lsbRequest 
         Height          =   1815
         Left            =   840
         TabIndex        =   153
         Top             =   1320
         Visible         =   0   'False
         Width           =   5655
      End
      Begin VB.Label lblPortServiceName 
         Alignment       =   2  'Center
         Caption         =   "unknown"
         Height          =   255
         Left            =   1680
         TabIndex        =   154
         ToolTipText     =   "The lookup of the port."
         Top             =   840
         Width           =   1215
      End
      Begin VB.Label lblTriggerName 
         Caption         =   "Trigger"
         Height          =   255
         Left            =   120
         TabIndex        =   12
         ToolTipText     =   "plugin_trigger"
         Top             =   3240
         Width           =   615
      End
      Begin VB.Label lblRequestName 
         Caption         =   "Request"
         Height          =   255
         Left            =   120
         TabIndex        =   11
         ToolTipText     =   "plugin_request"
         Top             =   1320
         Width           =   735
      End
      Begin VB.Label lblProtocolName 
         Caption         =   "Protocol"
         Height          =   255
         Left            =   120
         TabIndex        =   10
         ToolTipText     =   "plugin_protocol"
         Top             =   360
         Width           =   735
      End
      Begin VB.Label lblPortName 
         Caption         =   "Port"
         Height          =   255
         Left            =   120
         TabIndex        =   9
         ToolTipText     =   "plugin_port"
         Top             =   840
         Width           =   735
      End
   End
   Begin VB.Frame fraSolution 
      Height          =   5175
      Left            =   240
      TabIndex        =   87
      Top             =   1320
      Visible         =   0   'False
      Width           =   6975
      Begin VB.CommandButton cmdAddSolution 
         Height          =   255
         Left            =   6600
         Picture         =   "frmAttackEditor.frx":69A6
         Style           =   1  'Graphical
         TabIndex        =   36
         Top             =   360
         Width           =   255
      End
      Begin VB.TextBox txtFixingTime 
         Height          =   765
         Left            =   960
         MaxLength       =   255
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   37
         ToolTipText     =   "A time value that indicate how long does it approx. need to fix the vulnerability."
         Top             =   4200
         Width           =   5535
      End
      Begin VB.TextBox txtSolution 
         Height          =   3615
         Left            =   960
         MaxLength       =   10000
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   35
         ToolTipText     =   $"frmAttackEditor.frx":6D30
         Top             =   360
         Width           =   5535
      End
      Begin VB.Label lblBugFixingTime 
         Caption         =   "Fixing time"
         Height          =   255
         Left            =   120
         TabIndex        =   89
         ToolTipText     =   "bug_fixing_time"
         Top             =   4200
         Width           =   855
      End
      Begin VB.Label lblSolution 
         Caption         =   "Solution"
         Height          =   255
         Left            =   120
         TabIndex        =   88
         ToolTipText     =   "bug_solution"
         Top             =   360
         Width           =   855
      End
   End
   Begin MSComctlLib.ImageList imlVulnerabilityClassIcons 
      Left            =   6240
      Top             =   360
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   14
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAttackEditor.frx":6DD9
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAttackEditor.frx":6F33
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAttackEditor.frx":708D
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAttackEditor.frx":71E7
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAttackEditor.frx":7341
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAttackEditor.frx":749B
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAttackEditor.frx":75F5
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAttackEditor.frx":774F
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAttackEditor.frx":78A9
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAttackEditor.frx":7A03
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAttackEditor.frx":7B5D
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAttackEditor.frx":7CB7
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAttackEditor.frx":7E11
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAttackEditor.frx":7F6B
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Frame fraExternalData 
      Height          =   5175
      Left            =   240
      TabIndex        =   100
      Top             =   1320
      Visible         =   0   'False
      Width           =   6975
      Begin VB.ComboBox cmbExternalDataNessusRisk 
         Height          =   315
         Left            =   1800
         TabIndex        =   82
         Top             =   480
         Width           =   1455
      End
      Begin VB.TextBox txtSymantecNetReconRating 
         Height          =   285
         Left            =   1800
         TabIndex        =   84
         ToolTipText     =   "The rating documented by the commercial Symantec NetRecon vulnerability scanner."
         Top             =   1200
         Width           =   1455
      End
      Begin VB.TextBox txtISSScannerRating 
         Height          =   285
         Left            =   1800
         TabIndex        =   83
         ToolTipText     =   "The rating documented by the commercial ISS Scanners."
         Top             =   840
         Width           =   1455
      End
      Begin VB.Label lblExternelDataName 
         Caption         =   "Symantec NetRecon"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   192
         ToolTipText     =   "bug_netrecon_rating"
         Top             =   1200
         Width           =   1575
      End
      Begin VB.Label lblExternelDataName 
         Caption         =   "ISS Scanner rating"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   191
         ToolTipText     =   "bug_iss_scanner_rating"
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label lblExternelDataName 
         Caption         =   "Nessus risk"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   102
         ToolTipText     =   "bug_nessus_risk"
         Top             =   480
         Width           =   1575
      End
   End
   Begin VB.Frame fraPluginInformation 
      Height          =   5175
      Left            =   240
      TabIndex        =   70
      Top             =   1320
      Visible         =   0   'False
      Width           =   6975
      Begin VB.TextBox txtPluginUpdatedCompany 
         Height          =   285
         Left            =   2160
         MaxLength       =   255
         TabIndex        =   73
         ToolTipText     =   $"frmAttackEditor.frx":80C5
         Top             =   3360
         Width           =   4695
      End
      Begin VB.TextBox txtPluginUpdatedWeb 
         Height          =   285
         Left            =   2160
         MaxLength       =   255
         TabIndex        =   71
         ToolTipText     =   $"frmAttackEditor.frx":8159
         Top             =   3000
         Width           =   4695
      End
      Begin VB.TextBox txtPluginUpdatedEmail 
         Height          =   285
         Left            =   2160
         MaxLength       =   255
         TabIndex        =   69
         ToolTipText     =   $"frmAttackEditor.frx":81ED
         Top             =   2640
         Width           =   4695
      End
      Begin VB.TextBox txtPluginCreatedCompany 
         Height          =   285
         Left            =   2160
         MaxLength       =   255
         TabIndex        =   61
         ToolTipText     =   "The company name of the creator of the plugin. So everyone could contact the person if some questions about the checks are given."
         Top             =   1440
         Width           =   4695
      End
      Begin VB.TextBox txtPluginCreatedWeb 
         Height          =   285
         Left            =   2160
         MaxLength       =   255
         TabIndex        =   60
         ToolTipText     =   "The web site url of the creator of the plugin. So everyone could contact the person if some questions about the checks are given."
         Top             =   1080
         Width           =   4695
      End
      Begin VB.TextBox txtPluginCreatedEmail 
         Height          =   285
         Left            =   2160
         MaxLength       =   255
         TabIndex        =   59
         ToolTipText     =   "The mail address of the creator of the plugin. So everyone could contact the person if some questions about the checks are given."
         Top             =   720
         Width           =   4695
      End
      Begin VB.CommandButton cmdPluginUpdateDateToday 
         Caption         =   "today"
         Height          =   255
         Left            =   3240
         TabIndex        =   77
         Top             =   3720
         Width           =   615
      End
      Begin VB.CommandButton cmdPluginCreateDateToday 
         Caption         =   "today"
         Height          =   255
         Left            =   3240
         TabIndex        =   65
         Top             =   1800
         Width           =   615
      End
      Begin VB.TextBox txtPluginComment 
         Height          =   525
         Left            =   2160
         MaxLength       =   1024
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   81
         ToolTipText     =   $"frmAttackEditor.frx":8281
         Top             =   4560
         Width           =   4695
      End
      Begin VB.TextBox txtPluginCreatedName 
         Height          =   315
         Left            =   2160
         MaxLength       =   255
         TabIndex        =   58
         ToolTipText     =   "The name of the creator of the plugin. So everyone could contact the person if some questions about the checks are given."
         Top             =   360
         Width           =   4695
      End
      Begin VB.TextBox txtPluginCreatedDate 
         Height          =   285
         Left            =   2160
         MaxLength       =   10
         TabIndex        =   63
         ToolTipText     =   $"frmAttackEditor.frx":831A
         Top             =   1800
         Width           =   975
      End
      Begin VB.TextBox txtPluginVersion 
         Height          =   285
         Left            =   2160
         MaxLength       =   10
         TabIndex        =   79
         ToolTipText     =   $"frmAttackEditor.frx":83A3
         Top             =   4200
         Width           =   975
      End
      Begin VB.TextBox txtPluginUpdatedDate 
         Height          =   285
         Left            =   2160
         MaxLength       =   10
         TabIndex        =   75
         ToolTipText     =   $"frmAttackEditor.frx":84B8
         Top             =   3720
         Width           =   975
      End
      Begin VB.TextBox txtPluginUpdatedName 
         Height          =   285
         Left            =   2160
         MaxLength       =   255
         TabIndex        =   67
         ToolTipText     =   $"frmAttackEditor.frx":8542
         Top             =   2280
         Width           =   4695
      End
      Begin VB.Label lblPluginInformation 
         Caption         =   "Plugin updated by company"
         Height          =   255
         Index           =   12
         Left            =   120
         TabIndex        =   186
         ToolTipText     =   "plugin_updated_company"
         Top             =   3360
         Width           =   2055
      End
      Begin VB.Label lblPluginInformation 
         Caption         =   "Plugin updated by web"
         Height          =   255
         Index           =   11
         Left            =   120
         TabIndex        =   185
         ToolTipText     =   "plugin_updated_web"
         Top             =   3000
         Width           =   1935
      End
      Begin VB.Label lblPluginInformation 
         Caption         =   "Plugin updated by email"
         Height          =   255
         Index           =   10
         Left            =   120
         TabIndex        =   184
         ToolTipText     =   "plugin_updated_email"
         Top             =   2640
         Width           =   2055
      End
      Begin VB.Label lblPluginInformation 
         Caption         =   "Plugin created by company"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   183
         ToolTipText     =   "plugin_created_company"
         Top             =   1440
         Width           =   2055
      End
      Begin VB.Label lblPluginInformation 
         Caption         =   "Plugin created by web"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   182
         ToolTipText     =   "plugin_created_web"
         Top             =   1080
         Width           =   2055
      End
      Begin VB.Label lblPluginInformation 
         Caption         =   "Plugin created by email"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   181
         ToolTipText     =   "plugin_created_email"
         Top             =   720
         Width           =   2055
      End
      Begin VB.Label lblPluginInformation 
         Caption         =   "Comments"
         Height          =   255
         Index           =   9
         Left            =   120
         TabIndex        =   85
         ToolTipText     =   "plugin_comment"
         Top             =   4560
         Width           =   2055
      End
      Begin VB.Label lblPluginInformation 
         Caption         =   "Plugin created by name"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   80
         ToolTipText     =   "plugin_created_name"
         Top             =   360
         Width           =   2055
      End
      Begin VB.Label lblPluginInformation 
         Caption         =   "Plugin created date"
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   78
         ToolTipText     =   "plugin_created_date"
         Top             =   1800
         Width           =   2055
      End
      Begin VB.Label lblPluginInformation 
         Caption         =   "Plugin Version"
         Height          =   255
         Index           =   7
         Left            =   120
         TabIndex        =   76
         ToolTipText     =   "plugin_version"
         Top             =   4200
         Width           =   2055
      End
      Begin VB.Label lblPluginInformation 
         Caption         =   "Plugin updated date"
         Height          =   255
         Index           =   6
         Left            =   120
         TabIndex        =   74
         ToolTipText     =   "plugin_updated_date"
         Top             =   3720
         Width           =   1455
      End
      Begin VB.Label lblPluginInformation 
         Caption         =   "Plugin updated by name"
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   72
         ToolTipText     =   "plugin_updated_name"
         Top             =   2280
         Width           =   2055
      End
   End
   Begin VB.Frame fraBugInformation 
      Height          =   5175
      Left            =   240
      TabIndex        =   42
      Top             =   1320
      Visible         =   0   'False
      Width           =   6975
      Begin VB.CommandButton cmdBugPublishedDateToday 
         Caption         =   "today"
         Height          =   255
         Left            =   3000
         TabIndex        =   51
         Top             =   1800
         Width           =   615
      End
      Begin VB.TextBox txtBugPublishedCompany 
         Height          =   285
         Left            =   1920
         MaxLength       =   255
         ScrollBars      =   2  'Vertical
         TabIndex        =   49
         ToolTipText     =   $"frmAttackEditor.frx":85CE
         Top             =   1440
         Width           =   4935
      End
      Begin VB.TextBox txtBugPublishedWeb 
         Height          =   285
         Left            =   1920
         MaxLength       =   255
         ScrollBars      =   2  'Vertical
         TabIndex        =   48
         ToolTipText     =   $"frmAttackEditor.frx":867C
         Top             =   1080
         Width           =   4935
      End
      Begin VB.TextBox txtBugPublishedEmail 
         Height          =   285
         Left            =   1920
         MaxLength       =   255
         ScrollBars      =   2  'Vertical
         TabIndex        =   47
         ToolTipText     =   $"frmAttackEditor.frx":872A
         Top             =   720
         Width           =   4935
      End
      Begin VB.TextBox txtAffected 
         Height          =   1125
         Left            =   1920
         MaxLength       =   65535
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   54
         ToolTipText     =   $"frmAttackEditor.frx":87D8
         Top             =   2760
         Width           =   4935
      End
      Begin VB.TextBox txtNotAffected 
         Height          =   1125
         Left            =   1920
         MaxLength       =   8192
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   55
         ToolTipText     =   $"frmAttackEditor.frx":8860
         Top             =   3960
         Width           =   4935
      End
      Begin VB.TextBox txtAdvisory 
         Height          =   285
         Left            =   1920
         MaxLength       =   1000
         TabIndex        =   53
         ToolTipText     =   "Name, date and URL of the public advisory of the checked bug. So the ATK user could read the original information."
         Top             =   2280
         Width           =   4935
      End
      Begin VB.TextBox txtBugPublishedDate 
         Height          =   285
         Left            =   1920
         MaxLength       =   10
         TabIndex        =   50
         ToolTipText     =   $"frmAttackEditor.frx":8965
         Top             =   1800
         Width           =   975
      End
      Begin VB.TextBox txtBugPublishedName 
         Height          =   285
         Left            =   1920
         MaxLength       =   255
         ScrollBars      =   2  'Vertical
         TabIndex        =   46
         ToolTipText     =   $"frmAttackEditor.frx":89FB
         Top             =   360
         Width           =   4935
      End
      Begin VB.Label lblBugInformation 
         Caption         =   "Published by company"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   190
         ToolTipText     =   "bug_published_company"
         Top             =   1440
         Width           =   1695
      End
      Begin VB.Label lblBugInformation 
         Caption         =   "Published by web"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   189
         ToolTipText     =   "bug_published_web"
         Top             =   1080
         Width           =   1695
      End
      Begin VB.Label lblBugInformation 
         Caption         =   "Published by email"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   188
         ToolTipText     =   "bug_published_email"
         Top             =   720
         Width           =   1815
      End
      Begin VB.Label lblNotAffected 
         Caption         =   "Not Affected"
         Height          =   255
         Left            =   120
         TabIndex        =   68
         ToolTipText     =   "bug_not_affected"
         Top             =   3960
         Width           =   1815
      End
      Begin VB.Label lblAffected 
         Caption         =   "Affected"
         Height          =   255
         Left            =   120
         TabIndex        =   66
         ToolTipText     =   "bug_affected"
         Top             =   2760
         Width           =   1815
      End
      Begin VB.Label lblAdvisory 
         Caption         =   "Advisory"
         Height          =   255
         Left            =   120
         TabIndex        =   64
         ToolTipText     =   "bug_advisory"
         Top             =   2280
         Width           =   1815
      End
      Begin VB.Label lblBugPublishingDate 
         Caption         =   "Published date"
         Height          =   255
         Left            =   120
         TabIndex        =   62
         ToolTipText     =   "bug_published_date"
         Top             =   1800
         Width           =   1815
      End
      Begin VB.Label lblBugInformation 
         Caption         =   "Published by name"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   56
         ToolTipText     =   "bug_published_name"
         Top             =   360
         Width           =   1815
      End
   End
   Begin VB.Frame fraClassification 
      Height          =   5175
      Left            =   240
      TabIndex        =   24
      Top             =   1320
      Visible         =   0   'False
      Width           =   6975
      Begin VB.ComboBox cmbSeverity 
         Height          =   315
         Left            =   1080
         TabIndex        =   43
         ToolTipText     =   "Severity of the flaw."
         Top             =   360
         Width           =   2415
      End
      Begin VB.TextBox txtRisk 
         Alignment       =   2  'Center
         Height          =   285
         Left            =   3600
         MaxLength       =   2
         TabIndex        =   41
         ToolTipText     =   $"frmAttackEditor.frx":8AA1
         Top             =   3480
         Width           =   375
      End
      Begin VB.TextBox txtImpact 
         Alignment       =   2  'Center
         Height          =   285
         Left            =   3600
         MaxLength       =   2
         TabIndex        =   40
         ToolTipText     =   $"frmAttackEditor.frx":8B71
         Top             =   3120
         Width           =   375
      End
      Begin VB.TextBox txtSimplicity 
         Alignment       =   2  'Center
         Height          =   285
         Left            =   3600
         MaxLength       =   2
         TabIndex        =   39
         ToolTipText     =   $"frmAttackEditor.frx":8C76
         Top             =   2760
         Width           =   375
      End
      Begin VB.TextBox txtPopularity 
         Alignment       =   2  'Center
         Height          =   285
         Left            =   3600
         MaxLength       =   2
         TabIndex        =   38
         ToolTipText     =   $"frmAttackEditor.frx":8DBC
         Top             =   2400
         Width           =   375
      End
      Begin MSComctlLib.Slider sldPopularity 
         Height          =   255
         Left            =   960
         TabIndex        =   44
         ToolTipText     =   $"frmAttackEditor.frx":8E96
         Top             =   2400
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         _Version        =   393216
         LargeChange     =   2
      End
      Begin MSComctlLib.Slider sldSimplicity 
         Height          =   255
         Left            =   960
         TabIndex        =   45
         ToolTipText     =   $"frmAttackEditor.frx":8F70
         Top             =   2760
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         _Version        =   393216
         LargeChange     =   2
      End
      Begin MSComctlLib.Slider sldImpact 
         Height          =   255
         Left            =   960
         TabIndex        =   52
         ToolTipText     =   $"frmAttackEditor.frx":90B6
         Top             =   3120
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         _Version        =   393216
         LargeChange     =   2
      End
      Begin MSComctlLib.Slider sldRisk 
         Height          =   255
         Left            =   960
         TabIndex        =   57
         ToolTipText     =   $"frmAttackEditor.frx":91BB
         Top             =   3480
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         _Version        =   393216
         LargeChange     =   2
      End
      Begin VB.Label lblSeverityCriticalNote 
         Caption         =   $"frmAttackEditor.frx":928B
         Height          =   1335
         Left            =   1080
         TabIndex        =   147
         ToolTipText     =   "Please use the suggested names for the classification."
         Top             =   840
         Visible         =   0   'False
         Width           =   2415
      End
      Begin VB.Label lblSeverity 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   3600
         TabIndex        =   86
         ToolTipText     =   "Unknown"
         Top             =   360
         Width           =   375
      End
      Begin VB.Label lblRisk 
         Caption         =   "Risk"
         Height          =   255
         Left            =   120
         TabIndex        =   34
         ToolTipText     =   "bug_risk"
         Top             =   3480
         Width           =   855
      End
      Begin VB.Label lblImpact 
         Caption         =   "Impact"
         Height          =   255
         Left            =   120
         TabIndex        =   33
         ToolTipText     =   "bug_impact"
         Top             =   3120
         Width           =   855
      End
      Begin VB.Label lblPopularity 
         Caption         =   "Popularity"
         Height          =   255
         Left            =   120
         TabIndex        =   32
         ToolTipText     =   "bug_popularity"
         Top             =   2400
         Width           =   855
      End
      Begin VB.Label lblSimplicity 
         Caption         =   "Simplicity"
         Height          =   255
         Left            =   120
         TabIndex        =   26
         ToolTipText     =   "bug_simplicity"
         Top             =   2760
         Width           =   855
      End
      Begin VB.Label lblSeverityName 
         Caption         =   "Severity"
         Height          =   255
         Left            =   120
         TabIndex        =   25
         ToolTipText     =   "bug_severity"
         Top             =   360
         Width           =   855
      End
   End
   Begin VB.Frame fraExploitation 
      Height          =   5175
      Left            =   240
      TabIndex        =   104
      Top             =   1320
      Visible         =   0   'False
      Width           =   6975
      Begin MSComctlLib.ImageList imlFileSources 
         Left            =   6360
         Top             =   120
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   16
         ImageHeight     =   16
         MaskColor       =   12632256
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   5
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmAttackEditor.frx":934F
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmAttackEditor.frx":96E9
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmAttackEditor.frx":9A83
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmAttackEditor.frx":9E1D
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmAttackEditor.frx":A1B7
               Key             =   ""
            EndProperty
         EndProperty
      End
      Begin VB.CommandButton cmdExploitURLGo 
         Height          =   285
         Left            =   6480
         Picture         =   "frmAttackEditor.frx":A551
         Style           =   1  'Graphical
         TabIndex        =   30
         ToolTipText     =   "Click here to open the exploit URL in the default browser."
         Top             =   4440
         Width           =   285
      End
      Begin VB.ComboBox cmbExploitAvailability 
         Height          =   315
         Left            =   1560
         TabIndex        =   28
         Text            =   "Unknown"
         ToolTipText     =   "This field describes the availability of an exploit."
         Top             =   3960
         Width           =   1095
      End
      Begin VB.TextBox txtBugCheckTools 
         Height          =   3135
         Left            =   120
         MaxLength       =   1000
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   27
         ToolTipText     =   $"frmAttackEditor.frx":A8DB
         Top             =   600
         Width           =   6735
      End
      Begin VB.TextBox txtExploitURL 
         Height          =   285
         Left            =   1560
         TabIndex        =   29
         ToolTipText     =   "The URL of the exploit."
         Top             =   4440
         Width           =   4815
      End
      Begin VB.Label lblExploitSearchGoogle 
         AutoSize        =   -1  'True
         Caption         =   "Search an exploit for this vulnerability at www.google.com"
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
         Height          =   195
         Left            =   1560
         MouseIcon       =   "frmAttackEditor.frx":A99A
         MousePointer    =   99  'Custom
         TabIndex        =   31
         ToolTipText     =   "Click here to search an exploit for this vulnerability."
         Top             =   4800
         Width           =   4065
      End
      Begin VB.Label lblToolsAbleToCheck 
         Caption         =   "Tools that are able to check for the flaw"
         Height          =   255
         Left            =   120
         TabIndex        =   144
         ToolTipText     =   "bug_check_tool"
         Top             =   360
         Width           =   3015
      End
      Begin VB.Label lblExploitURL 
         Caption         =   "Exploit URL"
         Height          =   255
         Left            =   120
         TabIndex        =   143
         ToolTipText     =   "bug_exploit_url"
         Top             =   4440
         Width           =   1335
      End
      Begin VB.Label lblExploitAvailability 
         Caption         =   "Exploit availability"
         Height          =   255
         Left            =   120
         TabIndex        =   142
         ToolTipText     =   "bug_exploit_availability"
         Top             =   3960
         Width           =   1335
      End
   End
   Begin MSComDlg.CommonDialog cdgSaveAs 
      Left            =   6960
      Top             =   480
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      DialogTitle     =   "Save a file as"
      Filter          =   "ATK plugins|*.plugin|XML files|*.xml|Text files|*.txt|All Files|*.*|"
   End
   Begin VB.Frame fraPluginData 
      BorderStyle     =   0  'None
      Height          =   735
      Left            =   240
      TabIndex        =   13
      Top             =   600
      Width           =   6975
      Begin VB.TextBox txtPluginName 
         Height          =   285
         Left            =   960
         MaxLength       =   255
         TabIndex        =   1
         ToolTipText     =   "The name of the plugin. Should be very similar to the file name itself to support easier referencation."
         Top             =   360
         Width           =   4575
      End
      Begin VB.TextBox txtPluginID 
         Height          =   285
         Left            =   960
         MaxLength       =   6
         TabIndex        =   0
         ToolTipText     =   "The unique ID of the ATK plugin. It is easier to reference to specific checks."
         Top             =   0
         Width           =   735
      End
      Begin VB.Label lblPluginEditedTag 
         Caption         =   "(plugin is edited)"
         Height          =   285
         Left            =   5640
         TabIndex        =   148
         Top             =   360
         Visible         =   0   'False
         Width           =   1215
      End
      Begin VB.Label lblIDName 
         Caption         =   "ID"
         Height          =   255
         Left            =   120
         TabIndex        =   15
         ToolTipText     =   "plugin_id"
         Top             =   0
         Width           =   735
      End
      Begin VB.Label lblPluginNameName 
         Caption         =   "Name"
         Height          =   255
         Left            =   120
         TabIndex        =   14
         ToolTipText     =   "plugin_name"
         Top             =   360
         Width           =   735
      End
   End
   Begin MSComctlLib.TabStrip tspPluginData 
      Height          =   6495
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   7215
      _ExtentX        =   12726
      _ExtentY        =   11456
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   9
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "&Attack data"
            Object.ToolTipText     =   "Important data for the attack"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab2 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "&Description"
            Object.ToolTipText     =   "Description of the vulnerability"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab3 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "E&xploitation"
            Object.ToolTipText     =   "Information about exploitation"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab4 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "&Solution"
            Object.ToolTipText     =   "Countermeasures for the vulnerability"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab5 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "&Classification"
            Object.ToolTipText     =   "Classification and severity"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab6 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "&Bug information"
            Object.ToolTipText     =   "Additional information about the bug"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab7 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "&Plugin information"
            Object.ToolTipText     =   "Additional information about the plugin"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab8 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Ex&ternal data"
            Object.ToolTipText     =   "Data from external security applications"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab9 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "So&urces"
            Object.ToolTipText     =   "Sources for further investigation"
            ImageVarType    =   2
         EndProperty
      EndProperty
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuFileNewItem 
         Caption         =   "&New"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuReloadItem 
         Caption         =   "&Reload"
         Shortcut        =   {F5}
      End
      Begin VB.Menu mnuFileSeparator1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileSaveItem 
         Caption         =   "&Save"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuSaveAsItem 
         Caption         =   "Save &As ..."
      End
      Begin VB.Menu mnuFileSeparator2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuCloseItem 
         Caption         =   "&Close"
         Shortcut        =   ^Q
      End
   End
   Begin VB.Menu mnuEdit 
      Caption         =   "&Edit"
      Begin VB.Menu mnuEditUndoItem 
         Caption         =   "&Undo"
         Shortcut        =   ^Z
      End
      Begin VB.Menu mnuEditSeparator1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuEditCutItem 
         Caption         =   "Cu&t"
         Shortcut        =   ^X
      End
      Begin VB.Menu mnuEditCopyItem 
         Caption         =   "&Copy"
         Shortcut        =   ^C
      End
      Begin VB.Menu mnuEditPasteItem 
         Caption         =   "&Paste"
         Shortcut        =   ^V
      End
      Begin VB.Menu mnuEditSeparator2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuEditSelectAllItem 
         Caption         =   "&Select All"
         Shortcut        =   ^A
      End
      Begin VB.Menu mnuEditDeleteAllItem 
         Caption         =   "&Delete All"
         Shortcut        =   ^D
      End
   End
   Begin VB.Menu mnuWizards 
      Caption         =   "&Wizards"
      Begin VB.Menu mnuWizardsPort 
         Caption         =   "&Port"
         Begin VB.Menu mnuWizardsPortWhatServiceItem 
            Caption         =   "&What service do you mean?"
         End
         Begin VB.Menu mnuWizardsPortSeparator1 
            Caption         =   "-"
         End
         Begin VB.Menu mnuWizardsPortUselessServices 
            Caption         =   "&Useless services"
            Begin VB.Menu mnuWizardsPortUselessServices0Item 
               Caption         =   "&Reserved port 0"
            End
            Begin VB.Menu mnuWizardsPortUselessServices7Item 
               Caption         =   "&Echo port 7"
            End
            Begin VB.Menu mnuWizardsPortUselessServices9Item 
               Caption         =   "&Discard port 9"
            End
            Begin VB.Menu mnuWizardsPortUselessServices13Item 
               Caption         =   "Day&time port 13"
            End
            Begin VB.Menu mnuWizardsPortUselessServices17Item 
               Caption         =   "&Quote of the Day port 17"
            End
         End
         Begin VB.Menu mnuWizardsPortWorldWideWeb 
            Caption         =   "&World Wide Web"
            Begin VB.Menu mnuWizardsPortWorldWideWeb80Item 
               Caption         =   "Normal &http port 80"
            End
            Begin VB.Menu mnuWizardsPortWorldWideWeb443Item 
               Caption         =   "&Secure https port 443"
            End
         End
         Begin VB.Menu mnuWizardsPortElectronicMail 
            Caption         =   "Electronic &mail"
            Begin VB.Menu mnuWizardsPortElectronicMail25Item 
               Caption         =   "Sending mail smtp port 25"
            End
            Begin VB.Menu mnuWizardsPortElectronicMail110Item 
               Caption         =   "Receiving mail pop3 port 110"
            End
         End
      End
      Begin VB.Menu mnuWizardsRequest 
         Caption         =   "&Request"
         Begin VB.Menu mnuWizardsRequestConvertToListBox 
            Caption         =   "&Convert presentation style (TextBox or ListBox)"
         End
         Begin VB.Menu mnuWizardsRequestSeparator1 
            Caption         =   "-"
         End
         Begin VB.Menu mnuWizardsRequestAddCommand 
            Caption         =   "&Add command"
            Begin VB.Menu mnuWizardsRequestAddCommandOpenItem 
               Caption         =   "&Open connection"
            End
            Begin VB.Menu mnuWizardsRequestAddCommandSleepItem 
               Caption         =   "&Sleep"
            End
            Begin VB.Menu mnuWizardsRequestAddCommandSendItem 
               Caption         =   "Se&nd string"
            End
            Begin VB.Menu mnuWizardsRequestAddCommandPatternExistsItem 
               Caption         =   "Check response for &pattern"
            End
            Begin VB.Menu mnuWizardsRequestAddCommandICMPReachableItem 
               Caption         =   "Check host is &icmp reachable"
            End
            Begin VB.Menu mnuWizardsRequestAddCommandCloseItem 
               Caption         =   "&Close connection"
            End
         End
         Begin VB.Menu mnuWizardsRequestAddTemplateItem 
            Caption         =   "Add &template"
            Begin VB.Menu mnuWizardsRequestAddTemplateSimpleBannerGrabbingItem 
               Caption         =   "Simple &banner grabbing (e.g. FTP, Telnet or SMTP)"
            End
            Begin VB.Menu mnuWizardsRequestSeparator2 
               Caption         =   "-"
            End
            Begin VB.Menu mnuWizardsRequestAddTemplateBannerGrabbingHTTPItem 
               Caption         =   "Banner grabbing for HTTP (&HEAD request)"
            End
            Begin VB.Menu mnuWizardsRequestAddTemplateHTTPGETRequestItem 
               Caption         =   "HTTP request for a specific file (&GET request)"
            End
         End
      End
      Begin VB.Menu mnuWizardsTrigger 
         Caption         =   "&Trigger"
         Begin VB.Menu mnuWizardsTriggerAddRegularyExpression 
            Caption         =   "&Add regulary expression"
            Begin VB.Menu mnuWizardsTriggerAddRegularyExpressionAnySingleCharacterItem 
               Caption         =   "&Any single character"
            End
            Begin VB.Menu mnuWizardsTriggerAddRegularyExpressionZeroOrMoreItem 
               Caption         =   "&Zero or more characters"
            End
            Begin VB.Menu mnuWizardsTriggerAddRegularyExpressionAnySingleDigitItem 
               Caption         =   "Any single &digit"
            End
            Begin VB.Menu mnuWizardsTriggerAddRegularyExpressionSingleCharacterInListItem 
               Caption         =   "Any single &character in a list"
            End
         End
         Begin VB.Menu mnuWizardsTriggerAddAnAdditionalExpressionItem 
            Caption         =   "Add an additional expression"
         End
      End
      Begin VB.Menu mnuWizardsSeparator1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuWizardsDescription 
         Caption         =   "&Description"
         Begin VB.Menu mnuWizardsDescriptionWizardItem 
            Caption         =   "Open description &wizard"
         End
         Begin VB.Menu mnuWizardsDescriptionSeparator1 
            Caption         =   "-"
         End
         Begin VB.Menu mnuWizardsDescriptionAddServiceDescription 
            Caption         =   "Add service &description"
            Begin VB.Menu mnuWizardsDescriptionAddServiceDescriptionFTPItem 
               Caption         =   "&FTP (File Transfer Protocol, RFC959)"
            End
            Begin VB.Menu mnuWizardsDescriptionAddServiceDescriptionSMTPItem 
               Caption         =   "&SMTP (Simple Mail Transfer Protocol, RFC821)"
            End
            Begin VB.Menu mnuWizardsDescriptionAddServiceDescriptionTelnetItem 
               Caption         =   "&Telnet (Terminal Emulation, RFC854)"
            End
            Begin VB.Menu mnuWizardsDescriptionAddServiceDescriptionHTTPItem 
               Caption         =   "&HTTP (Hyper Text Transfer Protocol, RFC2616)"
            End
         End
         Begin VB.Menu mnuWizardsDescriptionAddFlawDescription 
            Caption         =   "Add &flaw description"
            Begin VB.Menu mnuWizardsDescriptionAddFlawDescriptionCrossSiteScriptingItem 
               Caption         =   "&Cross site scripting"
            End
            Begin VB.Menu mnuWizardsDescriptionAddFlawDescriptionBufferOverflowItem 
               Caption         =   "&Buffer overflow"
            End
            Begin VB.Menu mnuWizardsDescriptionAddFlawDescriptionEvasionItem 
               Caption         =   "E&vasion"
            End
            Begin VB.Menu mnuWizardsDescriptionAddFlawDescriptionFormatStringItem 
               Caption         =   "&Format string"
            End
            Begin VB.Menu mnuWizardsDescriptionAddFlawDescriptionMissingAuthenticationItem 
               Caption         =   "Missing &authentication"
            End
            Begin VB.Menu mnuWizardsDescriptionAddFlawDescriptionMissingEncryptionItem 
               Caption         =   "Missing &encryption"
            End
            Begin VB.Menu mnuWizardsDescriptionAddFlawDescriptionRaceConditionItem 
               Caption         =   "Race con&dition"
            End
            Begin VB.Menu mnuWizardsDescriptionAddFlawDescriptionWeakEncryptionItem 
               Caption         =   "&Weak encryption"
            End
            Begin VB.Menu mnuWizardsDescriptionAddFlawDescriptionWeakAuthenticationItem 
               Caption         =   "Weak au&thentication"
            End
            Begin VB.Menu mnuWizardsDescriptionAddFlawDescriptionSeparator1 
               Caption         =   "-"
            End
            Begin VB.Menu mnuWizardsDescriptionAddFlawDescriptionNoDetailsItem 
               Caption         =   "&No further details available"
            End
         End
         Begin VB.Menu mnuWizardsDescriptionAddExploitDescription 
            Caption         =   "Add &exploit status"
            Begin VB.Menu mnuWizardsDescriptionAddExploitDescriptionNoExploitItem 
               Caption         =   "No exploit is available"
            End
            Begin VB.Menu mnuWizardsDescriptionAddExploitDescriptionExploitAnnouncedItem 
               Caption         =   "An exploit was announced"
            End
            Begin VB.Menu mnuWizardsDescriptionAddExploitDescriptionExploitInUnderground 
               Caption         =   "An exploit seems to be traded in the underground"
            End
            Begin VB.Menu mnuWizardsDescriptionAddExploitDescriptionExploitPublicAvailableItem 
               Caption         =   "An exploit is public available"
            End
         End
      End
      Begin VB.Menu mnuWizardsSeparator2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuWizardsSolution 
         Caption         =   "&Solution"
         Begin VB.Menu mnuWizardsSolutionAddSolutionDescription 
            Caption         =   "Add &solution description"
            Begin VB.Menu mnuWizardsSolutionAddSolutionDescriptionAntivirusItem 
               Caption         =   "&Antivirus"
            End
            Begin VB.Menu mnuWizardsSolutionAddSolutionDescriptionEncryptionItem 
               Caption         =   "&Encryption"
            End
            Begin VB.Menu mnuWizardsSolutionAddSolutionDescriptionFirewallingItem 
               Caption         =   "&Firewalling"
            End
            Begin VB.Menu mnuWizardsSolutionAddSolutionDescriptionIntrusionDetectionItem 
               Caption         =   "&Intrusion Detection"
            End
            Begin VB.Menu mnuWizardsSolutionAddSolutionDescriptionPatchingItem 
               Caption         =   "&Patching"
            End
            Begin VB.Menu mnuWizardsSolutionAddSolutionDescriptionUpgradeItem 
               Caption         =   "&Upgrade"
            End
         End
      End
   End
End
Attribute VB_Name = "frmAttackEditor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

' ************************************************************************************
' * Frame Description                                                                *
' *                                                                                  *
' * In this frame the user is able to see all fields of a plugin and change the      *
' * without knowledge of the underlying plain structure of a plugin.                 *
' ************************************************************************************

' ************************************************************************************
' * Developement History                                                             *
' *                                                                                  *
' * Version 2.1 2004-09-09                                                           *
' * - Corrected a nasty bug in handling the checkbox for remote vulnerability.       *
' * Version 2.1 2004-09-08                                                           *
' * - Corrected and enhanced the behavior if changes are made.                       *
' * - Corrected a bug in the wizard for the send command. All length of parameters   *
' *   are now computed correctly.                                                    *
' * - Optimized the all wizards to prevent unsaved changes.                          *
' * - Optimized the wizard for HTTP GET requests. It was possible to delete the      *
' *   first sleep command.                                                           *
' * - Added Directory Traversal in the Class ComboBox (no icon yet!).                *
' * - Changed the whole SecurityTracker.com from URL to ID handling. This affects    *
' *   many parts of ATK 2.x!                                                         *
' * Version 2.1 2004-09-07                                                           *
' * - Increased the length of the textbox for plugin comments. It seems to be needed.*
' * Version 2.0 2004-08-26                                                           *
' * - Added a prevention that checks the change of the data before closing the frame *
' *   without saving.                                                                *
' * - Corrected an error with the plugin reload.                                     *
' * - Corrected an error handling the checkboxes for local and remote.               *
' * - Added some shortcuts for the popular menu points.                              *
' * Version 2.0 2004-08-13                                                           *
' * - Optimized a few LenB tests to be a bit faster (no more > and < if <> or = is   *
' *    enough).                                                                      *
' * - Added and corrected the whole tab stops.                                       *
' * Version 2.0 2004-03-18                                                           *
' * - Changed the whole file menu hierarchy and optimized the copy&paste functions.  *
' * - Added a lot more wizards and templates to create and enhance plugins.          *
' * - Changed the literature textbox into a combobox. Deleted the traditional        *
' *   literature wizard and added a few books as combobox items. Because I needed to *
' *   save controls for other and more important indepented wizards. VB is lame!     *
' * - Modified and enhanced the warning message if a plugin was changed.             *
' ************************************************************************************

Private Sub chkLocal_Click()
    If chkLocal.Value = 1 Then
        bug_local = "Yes"
    Else
        bug_local = "No"
    End If
End Sub

Private Sub chkLocal_LostFocus()
    'Tag the plugin as edited
    Call TagPluginAsEdited
End Sub

Private Sub chkRemote_Click()
    If chkRemote.Value = 1 Then
        bug_remote = "Yes"
    Else
        bug_remote = "No"
    End If
End Sub

Private Sub chkRemote_LostFocus()
    'Tag the plugin as edited
    Call TagPluginAsEdited
End Sub

Private Sub cmbExternalDataNessusRisk_LostFocus()
    Call DetectPluginAltering("Nessus risk", bug_nessus_risk, cmbExternalDataNessusRisk.Text)
End Sub

Private Sub cmbPluginFamily_KeyPress(KeyAscii As Integer)
    'Complete a combobox writing
    Static iLeftOff As Long
    ComboAutoComplete cmbPluginFamily, KeyAscii, iLeftOff
End Sub

Private Sub cmbPluginFamily_LostFocus()
    Call DetectPluginAltering("plugin family", plugin_family, cmbPluginFamily.Text)
End Sub

Private Sub cmbProtocol_KeyPress(KeyAscii As Integer)
    'Complete a combobox writing
    Static iLeftOff As Long
    ComboAutoComplete cmbProtocol, KeyAscii, iLeftOff
End Sub

Private Sub cmbProtocol_LostFocus()
    Call DetectPluginAltering("plugin_protocol", plugin_protocol, cmbProtocol.Text)
End Sub

Private Sub cmbSeverity_Change()
    'Change the color of the severity
    Call ShowSeverityColor
End Sub

Private Sub cmbSeverity_Click()
    'Change the color of the severity
    Call ShowSeverityColor
End Sub

Private Sub cmbSeverity_KeyPress(KeyAscii As Integer)
    'Complete a combobox writing
    Static iLeftOff As Long
    ComboAutoComplete cmbSeverity, KeyAscii, iLeftOff
End Sub

Private Sub cmbSeverity_LostFocus()
    Call DetectPluginAltering("bug severity", bug_severity, cmbSeverity.Text)
End Sub

Private Sub ShowSeverityColor()
    'Set the right severity color
    If cmbSeverity.Text = "Low" Then
        lblSeverity.BackColor = &HC000&
        lblSeverity.ToolTipText = "Green &HC000&"
        lblSeverityCriticalNote.Visible = False
    ElseIf cmbSeverity.Text = "Medium" Then
        lblSeverity.BackColor = &H80FF&
        lblSeverity.ToolTipText = "Orange &H80FF&"
        lblSeverityCriticalNote.Visible = False
    ElseIf cmbSeverity.Text = "High" Then
        lblSeverity.BackColor = &HFF&
        lblSeverity.ToolTipText = "Red &HFF&"
        lblSeverityCriticalNote.Visible = False
    'ATK uses emergency but nessus prefers critical
    ElseIf cmbSeverity.Text = "Emergency" Or cmbSeverity.Text = "Critical" Then
        lblSeverity.BackColor = &H800080
        lblSeverity.ToolTipText = "Purple &H800080"
        'Show the note if there is the nessus term used
        If cmbSeverity.Text = "Critical" Then
            lblSeverityCriticalNote.Visible = True
        Else
            lblSeverityCriticalNote.Visible = False
        End If
    Else
        lblSeverity.BackColor = &H8000000F
        lblSeverity.ToolTipText = "Gray &H8000000F"
        lblSeverityCriticalNote.Visible = False
    End If
End Sub

Private Sub cmbSourcesLiterature_Change()
    'Check the length of the input to activate the amazon button
    If LenB(cmbSourcesLiterature.Text) <> 0 Then
        cmdLiterature.Enabled = True
    Else
        cmdLiterature.Enabled = False
    End If
End Sub

Private Sub cmbSourcesLiterature_Click()
    'Check the length of the input to activate the amazon button
    If LenB(cmbSourcesLiterature.Text) <> 0 Then
        cmdLiterature.Enabled = True
    Else
        cmdLiterature.Enabled = False
    End If
End Sub

Private Sub cmbSourcesLiterature_LostFocus()
    Call DetectPluginAltering("literature", source_literature, cmbSourcesLiterature.Text)
End Sub

Private Sub cmbVulnerabilityClass_Change()
    'Show the icon for the vulnerability class
    Call ComputeVulnerabilityClassIcon
End Sub

Private Sub cmbVulnerabilityClass_Click()
    'Show the icon for the vulnerability class
    Call ComputeVulnerabilityClassIcon
End Sub

Private Sub cmbVulnerabilityClass_KeyPress(KeyAscii As Integer)
    'Complete a combobox writing
    Static iLeftOff As Long
    ComboAutoComplete cmbVulnerabilityClass, KeyAscii, iLeftOff
End Sub

Private Sub cmbVulnerabilityClass_LostFocus()
    Call DetectPluginAltering("vulnerability class", bug_vulnerability_class, cmbVulnerabilityClass.Text)
End Sub

Private Sub ComputeVulnerabilityClassIcon()
    Dim strVulnerabilityClass As String 'Name of the selected vulnerability class
    
    'Write the text into a string to enhance the speed
    strVulnerabilityClass = cmbVulnerabilityClass.Text
    
    'Show the right vulnerability class icon
    If strVulnerabilityClass = "Buffer Overflow" Then
        Set imgVulnerabilityClass.Picture = imlVulnerabilityClassIcons.ListImages(1).Picture
    ElseIf strVulnerabilityClass = "Configuration" Then
        Set imgVulnerabilityClass.Picture = imlVulnerabilityClassIcons.ListImages(2).Picture
    ElseIf strVulnerabilityClass = "Cross Site Scripting" Then
        Set imgVulnerabilityClass.Picture = imlVulnerabilityClassIcons.ListImages(3).Picture
    ElseIf strVulnerabilityClass = "Denial Of Service" Then
        Set imgVulnerabilityClass.Picture = imlVulnerabilityClassIcons.ListImages(4).Picture
    ElseIf strVulnerabilityClass = "Evasion" Then
        Set imgVulnerabilityClass.Picture = imlVulnerabilityClassIcons.ListImages(5).Picture
    ElseIf strVulnerabilityClass = "Format String" Then
        Set imgVulnerabilityClass.Picture = imlVulnerabilityClassIcons.ListImages(6).Picture
    ElseIf strVulnerabilityClass = "Missing Authentication" Then
        Set imgVulnerabilityClass.Picture = imlVulnerabilityClassIcons.ListImages(7).Picture
    ElseIf strVulnerabilityClass = "Missing Encryption" Then
        Set imgVulnerabilityClass.Picture = imlVulnerabilityClassIcons.ListImages(8).Picture
    ElseIf strVulnerabilityClass = "Race Condition" Then
        Set imgVulnerabilityClass.Picture = imlVulnerabilityClassIcons.ListImages(9).Picture
    ElseIf strVulnerabilityClass = "SQL Injection" Then
        Set imgVulnerabilityClass.Picture = imlVulnerabilityClassIcons.ListImages(10).Picture
    ElseIf strVulnerabilityClass = "Symlink" Then
        Set imgVulnerabilityClass.Picture = imlVulnerabilityClassIcons.ListImages(11).Picture
    ElseIf strVulnerabilityClass = "Weak Authentication" Then
        Set imgVulnerabilityClass.Picture = imlVulnerabilityClassIcons.ListImages(12).Picture
    ElseIf strVulnerabilityClass = "Weak Encryption" Then
        Set imgVulnerabilityClass.Picture = imlVulnerabilityClassIcons.ListImages(13).Picture
    Else
        Set imgVulnerabilityClass.Picture = imlVulnerabilityClassIcons.ListImages(14).Picture
    End If

    'Define the vulnerability class text as tool tip text
    imgVulnerabilityClass.ToolTipText = strVulnerabilityClass
End Sub

Private Sub cmbExploitAvailability_KeyPress(KeyAscii As Integer)
    'Complete a combobox writing
    Static iLeftOff As Long
    ComboAutoComplete cmbExploitAvailability, KeyAscii, iLeftOff
End Sub

Private Sub cmbExploitAvailability_LostFocus()
    Call DetectPluginAltering("exploit availability", bug_exploit_availability, cmbExploitAvailability.Text)
End Sub

Private Sub cmdAddPort_Click()
    Call OpenContextMenu(Me, Me.mnuWizardsPort)
End Sub

Private Sub cmdAddRequest_Click()
    Call ShowAddRequestMenu
End Sub

Private Sub cmdAddSolution_Click()
    Call OpenContextMenu(Me, Me.mnuWizardsSolution)
End Sub

Private Sub cmdAddTrigger_Click()
    Call OpenContextMenu(Me, Me.mnuWizardsTrigger)
End Sub

Private Sub cmdAeraSec_Click()
    LoadSourceInBrowser "AeraSec entry", txtAeraSecID.Text, _
    "http://www.aerasec.de/security/index.html?id=" & txtAeraSecID.Text
End Sub

Private Sub cmdArachnIDS_Click()
    LoadSourceInBrowser "ArachnIDS ID", txtArachnIDSID.Text, _
    "http://www.whitehats.com/info/" & txtArachnIDSID.Text
End Sub

Private Sub cmdBugPublishedDateToday_Click()
    'Write the new formatted data into the textbox
    txtBugPublishedDate.Text = GetTodaysDate

    Call DetectPluginAltering("bug published date", bug_published_date, txtBugPublishedDate.Text)
End Sub

Private Sub cmdCERT_Click()
    LoadSourceInBrowser "CERT Advisory", txtCERTID.Text, _
    "http://www.cert.org/advisories/" & txtCERTID.Text & ".html"
End Sub

Private Sub cmdCERTVU_Click()
    LoadSourceInBrowser "CERT VU entry", txtCERTVUID.Text, _
    "http://www.kb.cert.org/vuls/id/" & txtCERTVUID.Text
End Sub

Private Sub cmdCIAC_Click()
    LoadSourceInBrowser "CIAC Information Bulletin", txtCIACID.Text, _
    "http://www.ciac.org/ciac/bulletins/o-" & txtCIACID.Text & ".shtml"
End Sub

Private Sub cmdCVE_Click()
    LoadSourceInBrowser "CVE entry", txtCVE.Text, _
    "http://cve.mitre.org/cgi-bin/cvename.cgi?name=" & txtCVE.Text
End Sub

Private Sub cmdDescriptionWizard_Click()
    Call OpenContextMenu(Me, Me.mnuWizardsDescription)
End Sub

Private Sub cmdExploitURLGo_Click()
    LoadSourceInBrowser "exploit url", txtExploitURL.Text, txtExploitURL.Text
End Sub

Private Sub cmdHeiseNews_Click()
    LoadSourceInBrowser "Heise News", txtHeiseNews.Text, _
    "http://www.heise.de/newsticker/meldung/" & txtHeiseNews.Text
End Sub

Private Sub cmdHeiseSecurity_Click()
    LoadSourceInBrowser "Heise Security URL", txtHeiseSecurity.Text, _
    "http://www.heise.de/security/news/meldung/" & txtHeiseSecurity.Text
End Sub

Private Sub cmdISSXForce_Click()
    LoadSourceInBrowser "ISS X-Force Alert/Advisory ID", txtISSXForceID.Text, _
    "http://xforce.iss.net/xforce/alerts/id/" & txtISSXForceID.Text
End Sub

Private Sub cmdLiterature_Click()
    Dim ISBN As String
    Dim URL As String
    
    ISBN = GetISBNFromString(cmbSourcesLiterature.Text)
    
    If LenB(ISBN) < 20 Then
        URL = "http://www.amazon.com"
    Else
        URL = "http://www.amazon.com/exec/obidos/tg/detail/-/" & ISBN
    End If
    
    LoadSourceInBrowser "www.amazon.com", URL, URL
End Sub

Private Sub cmdMisc_Click()
    LoadSourceInBrowser "misc source", txtSourceMisc.Text, txtSourceMisc.Text
End Sub

Private Sub cmdMSKB_Click()
    LoadSourceInBrowser "Microsoft Knowledge Base Article", txtMSKBID.Text, _
    "http://support.microsoft.com/default.aspx?scid=kb;EN-US;" & txtMSKBID.Text
End Sub

Private Sub cmdMSSB_Click()
    LoadSourceInBrowser "Microsoft Security Bulletin", txtMSSBID.Text, _
    "http://www.microsoft.com/technet/security/bulletin/" & txtMSSBID.Text & ".mspx"
End Sub

Private Sub cmdNessus_Click()
    LoadSourceInBrowser "Nessus plugin", txtNessusID.Text, _
    "http://cgi.nessus.org/plugins/dump.php3?id=" & txtNessusID.Text
End Sub

Private Function GetTodaysDate() As String
    Dim DateArray() As String   'The array to save the delimited date
    
    'Split the date into the array
    DateArray = Split(Date, ".")
    
    'Write the new formatted data into the textbox
    GetTodaysDate = DateArray(2) & "/" & DateArray(1) & "/" & DateArray(0)
End Function

Private Sub cmdNetBSDSA_Click()
    LoadSourceInBrowser "NetBSD Security Advisory", txtNetBSDSA.Text, _
    "ftp://ftp.netbsd.org/pub/NetBSD/security/advisories/" & txtNetBSDSA.Text & ".txt.asc"
End Sub

Private Sub cmdOSVDB_Click()
    LoadSourceInBrowser "OSVDB ID", txtOSVDBID.Text, _
    "http://www.osvdb.org/" & txtOSVDBID.Text
End Sub

Private Sub cmdPluginCreateDateToday_Click()
    'Write the new formatted data into the textbox
    txtPluginCreatedDate.Text = GetTodaysDate

    Call DetectPluginAltering("plugin created date", plugin_created_date, txtPluginCreatedDate.Text)
End Sub

Private Sub cmdPluginUpdateDateToday_Click()
    'Write the new formatted data into the textbox
    txtPluginUpdatedDate.Text = GetTodaysDate

    Call DetectPluginAltering("plugin updated date", plugin_updated_date, txtPluginUpdatedDate.Text)
End Sub

Private Sub cmdRHSA_Click()
    LoadSourceInBrowser "RedHat Security Advisory", txtRHSAID.Text, _
    "http://rhn.redhat.com/errata/" & txtRHSAID.Text & ".html"
End Sub

Private Sub cmdScip_Click()
    LoadSourceInBrowser "scip ID", txtScipID.Text, _
    "http://www.scip.ch/cgi-bin/smss/showadvf.pl?id=" & txtScipID.Text
End Sub

Private Sub cmdSecunia_Click()
    LoadSourceInBrowser "Secunia ID", txtSecuniaID.Text, _
    "http://www.secunia.com/advisories/" & txtSecuniaID.Text
End Sub

Private Sub cmdSecuriTeamURL_Click()
    LoadSourceInBrowser "SecuriTeam URL", txtSecuriTeamURL.Text, txtSecuriTeamURL.Text
End Sub

Private Sub cmdSecurityFocus_Click()
    LoadSourceInBrowser "SecurityFocus BID", txtSecurityFocusBID.Text, _
    "http://www.securityfocus.com/bid/" & txtSecurityFocusBID.Text
End Sub

Private Sub cmdSecurityTracker_Click()
    LoadSourceInBrowser "SecurityTracker ID", txtSecurityTrackerID.Text, "http://www.securitytracker.com/id?" & txtSecurityTrackerID.Text
End Sub

Private Sub cmdSnort_Click()
    LoadSourceInBrowser "Snort ID", txtSnortID.Text, _
    "http://www.snort.org/snort-db/sid.html?sid=" & txtSnortID.Text
End Sub

Private Sub cmdTecChannel_Click()
    LoadSourceInBrowser "tecchannel ID", txtTecchannelID.Text, _
    "http://www.tecchannel.de/sicherheit/reports/" & txtTecchannelID.Text & ".html"
End Sub

Private Sub Form_Load()
    WriteLogEntry Me.Caption & " opened."
    
    'Load the latest values
    Call LoadActualValues
    
    'load the default protocol values
    cmbProtocol.AddItem "tcp"
    cmbProtocol.AddItem "icmp"
    cmbProtocol.AddItem "unknown"
    'cmbProtocol.AddItem "udp"  'UDP not supported yet
    
    'Load the default severity values
    cmbSeverity.AddItem "Information"
    cmbSeverity.AddItem "Low"
    cmbSeverity.AddItem "Medium"
    cmbSeverity.AddItem "High"
    cmbSeverity.AddItem "Emergency"
    
    'Load the default vulnerability classes
    cmbVulnerabilityClass.AddItem "Buffer Overflow"
    cmbVulnerabilityClass.AddItem "Configuration"
    cmbVulnerabilityClass.AddItem "Cross Site Scripting"
    cmbVulnerabilityClass.AddItem "Cross Domain Scripting"
    cmbVulnerabilityClass.AddItem "Denial Of Service"
    cmbVulnerabilityClass.AddItem "Directory Traversal"
    cmbVulnerabilityClass.AddItem "Evasion"
    cmbVulnerabilityClass.AddItem "Format String"
    cmbVulnerabilityClass.AddItem "Missing Authentication"
    cmbVulnerabilityClass.AddItem "Missing Encryption"
    cmbVulnerabilityClass.AddItem "Race Condition"
    cmbVulnerabilityClass.AddItem "SQL Injection"
    cmbVulnerabilityClass.AddItem "Symlink"
    cmbVulnerabilityClass.AddItem "Unknown"
    cmbVulnerabilityClass.AddItem "Weak Authentication"
    cmbVulnerabilityClass.AddItem "Weak Encryption"
    cmbVulnerabilityClass.AddItem "Wrong File Permission"

    'Load the default plugin families
    cmbPluginFamily.AddItem "Backdoors"
    cmbPluginFamily.AddItem "CGI"
    cmbPluginFamily.AddItem "Denial of Service"
    cmbPluginFamily.AddItem "Enumeration"
    cmbPluginFamily.AddItem "Finger"
    cmbPluginFamily.AddItem "Firewalls"
    cmbPluginFamily.AddItem "FTP"
    cmbPluginFamily.AddItem "HTTP"
    cmbPluginFamily.AddItem "Misc"
    cmbPluginFamily.AddItem "Netware"
    cmbPluginFamily.AddItem "Network Devices"
    cmbPluginFamily.AddItem "NIS"
    cmbPluginFamily.AddItem "Peer-to-Peer"
    cmbPluginFamily.AddItem "RPC"
    cmbPluginFamily.AddItem "SMTP"
    cmbPluginFamily.AddItem "SNMP"
    
    'Load the exploit availability values
    cmbExploitAvailability.AddItem "Yes"
    cmbExploitAvailability.AddItem "Maybe"
    cmbExploitAvailability.AddItem "No"
    cmbExploitAvailability.AddItem "Unknown"
    
    'Load the Nessus risk values
    cmbExternalDataNessusRisk.AddItem "Low"
    cmbExternalDataNessusRisk.AddItem "Medium"
    cmbExternalDataNessusRisk.AddItem "High"
    
    'Load books alphabetically into the literature combo box
    cmbSourcesLiterature.AddItem "Applied Cryptography: Protocols, Algorithms, and Source Code in C, " & _
        "Bruce Schneier, " & _
        "October 18, 1995, John Wiley & Sons, ISBN 0471117099, 2nd edition"
    cmbSourcesLiterature.AddItem "Building Internet Firewalls, " & _
        "Elizabeth D. Zwicky, Simon Cooper and D. B. Chapman, " & _
        "September 1, 2000, O'Reilly & Associates, ISBN 1565928717, 2nd edition"
    cmbSourcesLiterature.AddItem "DNS and BIND, " & _
        "Paul Albitz and Cricket Liu, " & _
        "April 1, 2001, O'Reilly & Associates, ISBN 0596001584, 4th edition"
    cmbSourcesLiterature.AddItem "Hacking Exposed: Network Security Secrets & Solutions, " & _
        "Stuart McClure, Joel Scambray and George Kurtz, " & _
        "February 25, 2003, 4th Edition, McGraw-Hill Osborne Media, ISBN 0072227427"
    cmbSourcesLiterature.AddItem "Hacking Intern - Angriffe, Strategien, Abwehr, " & _
        "Marc Ruef, Marko Rogge, Uwe Velten and Wolfram Gieseke, " & _
        "November 1, 2002, Data Becker, Düsseldorf, ISBN 381582284X"
    cmbSourcesLiterature.AddItem "Hardening Cisco Routers, " & _
        "Thomas Akin, " & _
        "March 1, 2002, O'Reilly & Associates, ISBN 0596001665"
    cmbSourcesLiterature.AddItem "Network Intrusion Detection, " & _
        "Stephen Northcutt and Judy Novak, " & _
        "August 1, 2002, Sams, ISBN 0735712654, 3th edition"
    cmbSourcesLiterature.AddItem "Secrets and Lies: Digital Security in a Networked World, " & _
        "Bruce Schneier, " & _
        "August 14, 2000, John Wiley & Sons, ISBN 0471253111"
    cmbSourcesLiterature.AddItem "TCP/IP Illustrated, Volume 1: The Protocols, " & _
        "W. Richard Stevens, " & _
        "January 1994, Addison-Wesley Pub Co, ISBN 0201633469"
    cmbSourcesLiterature.AddItem "TCP/IP Illustrated, Volume 2: The Implementation, " & _
        "Gary R. Wright and W. Richard Stevens, " & _
        "January 31, 1995, Addison-Wesley Pub Co, ISBN 020163354X"
    cmbSourcesLiterature.AddItem "The Art of Deception: Controlling the Human Element of Security, " & _
        "Kevin D. Mitnick,  William L. Simon and Steve Wozniak, " & _
        "October 4, 2002, John Wiley & Sons, ISBN 0471237124"
    cmbSourcesLiterature.AddItem "The Design and Implementation of the 4.4 BSD Operating System, " & _
        "Marshall Kirk McKusick, Keith Bostic, Michael J. Karels and John S. Quarterman, " & _
        "April 30, 1996, Addison-Wesley Pub Co, ISBN 0201549794"
    cmbSourcesLiterature.AddItem "Windows Forensics and Incident Recovery, " & _
        "Harlan Carvey, " & _
        "Juli 15, 2003, Addison-Wesley Professional, ISBN 0321200985"
End Sub

Public Sub LoadActualValues()
    'Delete the edited tag
    lblPluginEditedTag.Visible = False
    
    'Load the actual values
    txtPluginID.Text = plugin_id
    txtPluginName.Text = plugin_name
    Me.Caption = "Attack Editor - " & plugin_name
    
    'Attack data
    cmbProtocol.Text = plugin_protocol
    txtPort.Text = Val(plugin_port)
    txtRequest.Text = plugin_request
    txtTrigger.Text = plugin_trigger
    
    'Description
    txtDescription.Text = bug_description
    
    'Vulnerability dlass
    cmbVulnerabilityClass.Text = bug_vulnerability_class
    
    'Can the bug locally be exploited
    If bug_local = "Yes" Then
        chkLocal.Value = 1
    Else
        chkLocal.Value = 0
    End If
    
    'Can the bug remotely be exploited
    If bug_remote = "Yes" Then
        chkRemote.Value = 1
    Else
        chkRemote.Value = 0
    End If
    
    'Exploiting
    txtBugCheckTools.Text = bug_check_tool
    cmbExploitAvailability.Text = bug_exploit_availability
    
    'The Exploit URL
    txtExploitURL.Text = bug_exploit_url
    If LenB(bug_exploit_url) <> 0 Then
        cmdExploitURLGo.Enabled = True
    Else
        cmdExploitURLGo.Enabled = False
    End If
    
    'Solution
    txtSolution.Text = bug_solution
    txtFixingTime.Text = bug_fixing_time

    'Classification
    cmbSeverity.Text = bug_severity
    
    'The popularity
    txtPopularity.Text = bug_popularity
    If LenB(bug_popularity) <> 0 Then
        sldPopularity.Value = bug_popularity
    End If
    
    'The simplicity
    txtSimplicity.Text = bug_simplicity
    If LenB(bug_simplicity) <> 0 Then
        sldSimplicity.Value = bug_simplicity
    End If
    
    'The impact
    txtImpact.Text = bug_impact
    If LenB(bug_impact) <> 0 Then
        sldImpact.Value = bug_impact
    End If
    
    'The rist
    txtRisk.Text = bug_risk
    If LenB(bug_risk) <> 0 Then
        sldRisk.Value = bug_risk
    End If

    'load the bug data
    txtBugPublishedName.Text = bug_published_name
    txtBugPublishedEmail.Text = bug_published_email
    txtBugPublishedWeb.Text = bug_published_web
    txtBugPublishedCompany.Text = bug_published_company
    txtBugPublishedDate.Text = bug_published_date
    txtAdvisory.Text = bug_advisory
    txtAffected.Text = bug_affected
    txtNotAffected.Text = bug_not_affected

    'load the plugin data
    txtPluginCreatedName.Text = plugin_created_name
    txtPluginCreatedEmail.Text = plugin_created_email
    txtPluginCreatedWeb.Text = plugin_created_web
    txtPluginCreatedCompany.Text = plugin_created_company
    txtPluginCreatedDate.Text = plugin_created_date
    
    txtPluginUpdatedName.Text = plugin_updated_name
    txtPluginUpdatedEmail.Text = plugin_updated_email
    txtPluginUpdatedWeb.Text = plugin_updated_web
    txtPluginUpdatedCompany.Text = plugin_updated_company
    txtPluginUpdatedDate.Text = plugin_updated_date
    
    txtPluginVersion.Text = plugin_version
    cmbPluginFamily.Text = plugin_family
    txtPluginComment.Text = plugin_comment
    
    'load external data
    cmbExternalDataNessusRisk.Text = bug_nessus_risk
    txtISSScannerRating.Text = bug_iss_scanner_rating
    txtSymantecNetReconRating.Text = bug_netrecon_rating
    
    'load the source data
    txtCVE.Text = source_cve
    txtCERTVUID.Text = source_certvu_id
    txtCERTID.Text = source_cert_id
    txtUSCERTTAID.Text = source_uscertta_id
    txtSecurityFocusBID.Text = source_securityfocus_bid
    txtOSVDBID.Text = source_osvdb_id
    txtSecuniaID.Text = source_secunia_id
    txtSecuriTeamURL.Text = source_securiteam_url
    txtSecurityTrackerID.Text = source_securitytracker_id
    txtScipID.Text = source_scip_id
    txtTecchannelID.Text = source_tecchannel_id
    txtHeiseNews.Text = source_heise_news
    txtHeiseSecurity.Text = source_heise_security
    txtAeraSecID.Text = source_aerasec_id
    txtNessusID.Text = source_nessus_id
    txtISSXForceID.Text = source_issxforce_id
    txtSnortID.Text = source_snort_id
    txtArachnIDSID.Text = source_arachnids_id
    txtMSSBID.Text = source_mssb_id
    txtMSKBID.Text = source_mskb_id
    txtNetBSDSA.Text = source_netbsdsa_id
    txtRHSAID.Text = source_rhsa_id
    txtCIACID.Text = source_ciac_id
    cmbSourcesLiterature.Text = source_literature
    txtSourceMisc.Text = source_misc
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If CheckIfPluginIsEdited = True Then
        Cancel = True
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    WriteLogEntry "Unload the " & Me.Caption
    Set frmAttackEditor = Nothing
End Sub

Private Sub txtAeraSecID_KeyPress(KeyAscii As Integer)
    'vbKeySubtract seems not to work properly.
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack, 97, 101, 45
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtArachnIDSID_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack, 73, 68, 83
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtArachnIDSID_LostFocus()
    Call DetectPluginAltering("ArachnIDS ID", source_arachnids_id, txtArachnIDSID.Text)
End Sub

Private Sub txtBugPublishedDate_DblClick()
    Call cmdBugPublishedDateToday_Click
End Sub

Private Sub txtBugPublishedEmail_KeyUp(KeyCode As Integer, Shift As Integer)
    Call ReplaceEmailToPreventSpam(txtBugPublishedEmail)
End Sub

Private Sub txtCERTID_KeyPress(KeyAscii As Integer)
    'vbKeySubtract seems not to work properly.
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack, vbKeyC, vbKeyA, vbKeyN, vbKeyV, vbKeyE, 45
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtCERTID_LostFocus()
    Call DetectPluginAltering("CERT ID", source_cert_id, txtCERTID.Text)
End Sub

Private Sub txtCERTVUID_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtCERTVUID_LostFocus()
    Call DetectPluginAltering("CERT Vulnerability ID", source_certvu_id, txtCERTVUID.Text)
End Sub

Private Sub txtCIACID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtCIACID.Text) <> 0 Then
        cmdCIAC.Enabled = True
    Else
        cmdCIAC.Enabled = False
    End If
End Sub

Private Sub txtCIACID_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtCIACID_LostFocus()
    Call DetectPluginAltering("CIAC ID", source_ciac_id, txtCIACID.Text)
End Sub

Private Sub txtCVE_KeyPress(KeyAscii As Integer)
    'vbKeySubtract seems not to work properly.
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack, _
            vbKeyC, vbKeyV, vbKeyE, vbKeyA, vbKeyN, _
            99, 118, 101, 97, 110, 45 'These are CVE and (C)AN
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtHeiseNews_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtISSXForceID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtISSXForceID.Text) <> 0 Then
        cmdISSXForce.Enabled = True
    Else
        cmdISSXForce.Enabled = False
    End If
End Sub

Private Sub lblExploitSearchGoogle_Click()
    Dim SearchString As String
    
    'Prepare the search string
    SearchString = "Exploit+" & Replace(plugin_name, " ", "+")
    
    LoadSourceInBrowser "exploit query at www.google.com", SearchString, _
    "http://www.google.com/search?q=" & SearchString
End Sub

Private Sub lsbRequest_DblClick()
    Call RequestTextboxConvert
End Sub

Private Sub mnuWizardsDescriptionAddExploitDescriptionExploitAnnouncedItem_Click()
    AddDescriptionToTextBox ("An exploit was announced.")
    cmbExploitAvailability.Text = "Maybe"
End Sub

Private Sub mnuWizardsDescriptionAddExploitDescriptionExploitInUnderground_Click()
    AddDescriptionToTextBox ("An exploit seems to be traded in the underground.")
    cmbExploitAvailability.Text = "Maybe"
End Sub

Private Sub mnuWizardsDescriptionAddExploitDescriptionExploitPublicAvailableItem_Click()
    AddDescriptionToTextBox ("An exploit is available in the public.")
    cmbExploitAvailability.Text = "Yes"
End Sub

Private Sub mnuWizardsDescriptionAddExploitDescriptionNoExploitItem_Click()
    AddDescriptionToTextBox ("No exploit is available.")
    cmbExploitAvailability.Text = "No"
End Sub

Private Sub mnuWizardsDescriptionAddFlawDescriptionBufferOverflowItem_Click()
    AddDescriptionToTextBox ("A buffer overflow (BO) vulnerability is given. " & _
        "An attacker may be able to crash the application or run arbitraty code to gain elevated access.")
End Sub

Private Sub mnuWizardsDescriptionAddFlawDescriptionCrossSiteScriptingItem_Click()
    AddDescriptionToTextBox ("A cross site scripting (XSS) vulnerability is given. " & _
        "An attacker may be able to run arbitraty code in the context of the web site.")
End Sub

Private Sub mnuWizardsDescriptionAddFlawDescriptionEvasionItem_Click()
    AddDescriptionToTextBox ("An evasion vulnerability is given. " & _
        "An attacker may be able circumvent existing security mechanisms. " & _
        "Further access and specific attacks may be possible.")
End Sub

Private Sub mnuWizardsDescriptionAddFlawDescriptionFormatStringItem_Click()
    AddDescriptionToTextBox ("A format string vulnerability is given. " & _
        "An attacker may be able to run arbitraty code and gain elevated access.")

End Sub

Private Sub mnuWizardsDescriptionAddFlawDescriptionMissingAuthenticationItem_Click()
    AddDescriptionToTextBox ("There is no authentication given. " & _
        "An attacker may be able gain elevated access.")
End Sub

Private Sub mnuWizardsDescriptionAddFlawDescriptionMissingEncryptionItem_Click()
    AddDescriptionToTextBox ("There is no encrypten given. " & _
        "An attacker may be able to read sensitive data and use this information for further attacks.")
End Sub

Private Sub mnuWizardsDescriptionAddFlawDescriptionNoDetailsItem_Click()
    AddDescriptionToTextBox ("There were no further details about the flaw available.")
End Sub

Private Sub mnuWizardsDescriptionAddFlawDescriptionRaceConditionItem_Click()
    AddDescriptionToTextBox ("A race condition vulnerability is given. " & _
        "An attacker may be able to gain elevated access.")
End Sub

Private Sub mnuWizardsDescriptionAddFlawDescriptionWeakAuthenticationItem_Click()
    AddDescriptionToTextBox ("A weak authentication is given. " & _
        "An attacker may be able circumvent the authentication and gain elevated access.")
End Sub

Private Sub mnuWizardsDescriptionAddFlawDescriptionWeakEncryptionItem_Click()
    AddDescriptionToTextBox ("A weak encryption is given. " & _
        "An attacker may be able decrypt the data and gain access to sensitive information. " & _
        "These could be used for further attacks.")
End Sub

Private Sub mnuWizardsDescriptionAddServiceDescriptionFTPItem_Click()
    AddDescriptionToTextBox ("The File Transfer Protocol (FTP) is a classic service that " & _
        "is used to transfer files from one host to another. It is client/server based, " & _
        "uses normally the well-known ports tcp/20 and 21, and the protocol is specified " & _
        "in the RFC 959 by Jon Postel and Joyce Reynolds in October 1985 " & _
        "(http://www.faqs.org/rfcs/rfc959.html). The whole communication - this includes " & _
        "the exchange of the login data - is done in clear text.")
    txtDescription.SetFocus
End Sub

Private Sub mnuWizardsDescriptionAddServiceDescriptionHTTPItem_Click()
    AddDescriptionToTextBox ("The Hyper Text Transfer Protocol (HTTP) is a classic " & _
        "service that is used to a hyper text oriented service over networks. HTTP is " & _
        "the back bone of the World Wide Web (WWW). It is client/server based where " & _
        "a web server is the server and a web browser is the client. HTTP connection " & _
        "use normally the well-known port tcp/80, and the protocol is specified " & _
        "in the RFC 2616 in 1999 (http://www.faqs.org/rfcs/rfc2616.html). The whole " & _
        "communication - this includes the exchange of the login data - is done in " & _
        "clear text. HTTPS (tcp/443) is an enhanced standard that provides cryptographic " & _
        "mechanisms to ensure a secure (authenticated and encrypted) communication.")
    txtDescription.SetFocus
End Sub

Private Sub mnuWizardsDescriptionAddServiceDescriptionSMTPItem_Click()
    AddDescriptionToTextBox ("The Simple Mail Transfer Protocol (SMTP) is a classic service that " & _
        "is used to send electronic mail from a host to a mail server. It is client/server based, " & _
        "uses normally the well-known port tcp/25, and the protocol is initially specified " & _
        "in the RFC 821 by Jonathan B. Postel in August 1982 (http://www.faqs.org/rfcs/rfc821.html)." & _
        "The whole communication - this includes the potential exchange of the login data - is done " & _
        "in clear text.")
    txtDescription.SetFocus
End Sub

Private Sub mnuWizardsDescriptionAddServiceDescriptionTelnetItem_Click()
    AddDescriptionToTextBox ("The Telnet protocol is a classic service that is used to " & _
        "provide a terminal emulation over networks. It is client/server based, " & _
        "uses normally the well-known port tcp/23, and the protocol is specified " & _
        "in the RFC 854 by Jon Postel and Joyce Reynolds in May 1983 " & _
        "(http://www.faqs.org/rfcs/rfc854.html). The whole communication - this includes " & _
        "the exchange of the login data - is done in clear text. That is why in networks " & _
        "of today encrypted SSH (Secure Shell) sessions were recommended.")
    txtDescription.SetFocus
End Sub

Private Sub mnuWizardsDescriptionWizardItem_Click()
    Dim SoftwareName As String  'Name of the affected solution
    Dim FlawName As String      'Name of the flaw
    Dim FlawResult As String    'Result of successfull exploitation
    
    'Ask for the name of the affected software or solution
    SoftwareName = InputBox("Please enter the name of the affected software. " & _
        "(e.g. Microsoft Internet Information Server, Apache, Sendmail)", _
        "Attack Editor Description Wizard software name", "Microsoft Internet Information Server")
    
    'Ask for the name of the flaw
    FlawName = InputBox("Please enter the name of the flaw. " & _
        "(e.g. buffer overflow, format string, configuration)", _
        "Attack Editor Description Wizard flaw name", "buffer overflow")
    
    'Ask for the result of successfull exploitation of the flaw
    FlawResult = InputBox("Please enter the result of a successfull exploitation of the flaw. " & _
        "(e.g. sensitive data, unauthorazed access, elevated privileges)", _
        "Attack Editor Description Wizard result", "elevated privileges")
        
    'Add the new description to the box
    AddDescriptionToTextBox ("A " & FlawName & " vulnerability in " & SoftwareName & " is given. " & _
        "An attacker may be able to gain " & FlawResult & ".")
        
    txtDescription.SetFocus
End Sub

Private Sub mnuWizardsPortElectronicMail110Item_Click()
    txtPort.Text = "110"
    txtPort.SetFocus
End Sub

Private Sub mnuWizardsPortElectronicMail25Item_Click()
    txtPort.Text = "25"
    txtPort.SetFocus
End Sub

Private Sub mnuWizardsPortUselessServices0Item_Click()
    txtPort.Text = "0"
    txtPort.SetFocus
End Sub

Private Sub mnuWizardsPortUselessServices13Item_Click()
    txtPort.Text = "13"
    txtPort.SetFocus
End Sub

Private Sub mnuWizardsPortUselessServices17Item_Click()
    txtPort.Text = "17"
    txtPort.SetFocus
End Sub

Private Sub mnuWizardsPortUselessServices7Item_Click()
    txtPort.Text = "7"
    txtPort.SetFocus
End Sub

Private Sub mnuWizardsPortUselessServices9Item_Click()
    txtPort.Text = "9"
    txtPort.SetFocus
End Sub

Private Sub mnuWizardsPortWhatServiceItem_Click()
    Dim ServiceName As String
    Dim ServicePort As String
    
    ServiceName = InputBox("Please enter service name you have in mind." & vbCrLf & _
        "(e.g. 'mail' for 25 or 'web' for 80)", "Attack Editor change plugin port", "web")
    ServiceName = LCase(ServiceName)

    If InStr(1, ServiceName, "echo", vbBinaryCompare) <> 0 Then
        ServicePort = "7"
    ElseIf InStr(1, ServiceName, "discard", vbBinaryCompare) <> 0 Then
        ServicePort = "9"
    ElseIf InStr(1, ServiceName, "time", vbBinaryCompare) <> 0 Then
        ServicePort = "13"
    ElseIf InStr(1, ServiceName, "qotd", vbBinaryCompare) <> 0 Then
        ServicePort = "17"
    ElseIf InStr(1, ServiceName, "quote", vbBinaryCompare) <> 0 Then
        ServicePort = "17"
    ElseIf InStr(1, ServiceName, "ftp", vbBinaryCompare) <> 0 Then
        ServicePort = "21"
    ElseIf InStr(1, ServiceName, "file transfer", vbBinaryCompare) <> 0 Then
        ServicePort = "21"
    ElseIf InStr(1, ServiceName, "secure shell", vbBinaryCompare) <> 0 Then
        ServicePort = "22"
    ElseIf InStr(1, ServiceName, "ssh", vbBinaryCompare) <> 0 Then
        ServicePort = "22"
    ElseIf InStr(1, ServiceName, "telnet", vbBinaryCompare) <> 0 Then
        ServicePort = "23"
    ElseIf InStr(1, ServiceName, "terminal", vbBinaryCompare) <> 0 Then
        ServicePort = "23"
    ElseIf InStr(1, ServiceName, "shell", vbBinaryCompare) <> 0 Then
        ServicePort = "23"
    ElseIf InStr(1, ServiceName, "name", vbBinaryCompare) <> 0 Then
        ServicePort = "53"
    ElseIf InStr(1, ServiceName, "dns", vbBinaryCompare) <> 0 Then
        ServicePort = "53"
    ElseIf InStr(1, ServiceName, "domain", vbBinaryCompare) <> 0 Then
        ServicePort = "53"
    ElseIf InStr(1, ServiceName, "mail", vbBinaryCompare) <> 0 Then
        ServicePort = "25"
    ElseIf InStr(1, ServiceName, "smtp", vbBinaryCompare) <> 0 Then
        ServicePort = "25"
    ElseIf InStr(1, ServiceName, "finger", vbBinaryCompare) <> 0 Then
        ServicePort = "79"
    ElseIf InStr(1, ServiceName, "internet", vbBinaryCompare) <> 0 Then 'I know it is the wrong term ;)
        ServicePort = "80"
    ElseIf InStr(1, ServiceName, "web", vbBinaryCompare) <> 0 Then
        ServicePort = "80"
    ElseIf InStr(1, ServiceName, "www", vbBinaryCompare) <> 0 Then
        ServicePort = "80"
    ElseIf InStr(1, ServiceName, "http", vbBinaryCompare) <> 0 Then
        ServicePort = "80"
    ElseIf InStr(1, ServiceName, "pop3", vbBinaryCompare) <> 0 Then
        ServicePort = "110"
    ElseIf InStr(1, ServiceName, "https", vbBinaryCompare) <> 0 Then
        ServicePort = "443"
    ElseIf InStr(1, ServiceName, "shttp", vbBinaryCompare) <> 0 Then
        ServicePort = "443"
    ElseIf InStr(1, ServiceName, "secure http", vbBinaryCompare) <> 0 Then
        ServicePort = "443"
    ElseIf InStr(1, ServiceName, "reserved", vbBinaryCompare) <> 0 Then
        ServicePort = "0"
    Else
        'Show the error message
        MsgBox ("The service name you entered ('" & ServiceName & "') could not be recognized." & vbCrLf & vbCrLf & _
            "Please give more detailed input or search the public port lists" & vbCrLf & _
            "(e.g. http://www.iana.org/assignments/port-numbers) for the" & vbCrLf & _
            "suggested port number."), _
            vbInformation, "Attack Tool Kit port wizard error"
        ServicePort = "80"
    End If

    txtPort.Text = ServicePort

    txtPort.SetFocus
End Sub

Private Sub mnuWizardsPortWorldWideWeb443Item_Click()
    txtPort.Text = "443"
    txtPort.SetFocus
End Sub

Private Sub mnuWizardsPortWorldWideWeb80Item_Click()
    txtPort.Text = "80"
    txtPort.SetFocus
End Sub

Private Sub mnuWizardsRequestConvertToListBox_Click()
    Call RequestTextboxConvert
End Sub

Private Sub RequestTextboxConvert()
    Dim RequestCommands() As String
    Dim CommandCount As Integer
    Dim i As Integer
    
    'Clear the listbox
    lsbRequest.Clear
        
    RequestCommands = Split(txtRequest.Text, "|")
    CommandCount = UBound(RequestCommands) - LBound(RequestCommands)
    
    For i = 0 To CommandCount
        lsbRequest.AddItem (RequestCommands(i))
    Next i
    
    If txtRequest.Visible = True Then
        lsbRequest.Visible = True
        txtRequest.Visible = False
    Else
        txtRequest.Visible = True
        lsbRequest.Visible = False
    End If
End Sub

Private Sub mnuWizardsSolutionAddSolutionDescriptionAntivirusItem_Click()
    AddSolutionToTextBox ("Use an additional and fully updated anti virus solution.")
End Sub

Private Sub mnuWizardsSolutionAddSolutionDescriptionEncryptionItem_Click()
    AddSolutionToTextBox ("Use an additional encryption.")
End Sub

Private Sub mnuWizardsSolutionAddSolutionDescriptionFirewallingItem_Click()
    AddSolutionToTextBox ("Limit unwanted connections and communications with firewalling.")
End Sub

Private Sub mnuWizardsSolutionAddSolutionDescriptionIntrusionDetectionItem_Click()
    AddSolutionToTextBox ("Check the communication with an Intrusion Detection System.")
End Sub

Private Sub mnuWizardsSolutionAddSolutionDescriptionPatchingItem_Click()
    AddSolutionToTextBox ("Install the newest patch or bugfix to solve the problem.")
End Sub

Private Sub mnuWizardsSolutionAddSolutionDescriptionUpgradeItem_Click()
    AddSolutionToTextBox ("Upgrade to the latest software version which is not vulnerable anymore.")
End Sub

Private Sub mnuWizardsTriggerAddRegularyExpressionAnySingleCharacterItem_Click()
    Call AddTriggerToTextBox("?")
End Sub

Private Sub mnuWizardsTriggerAddRegularyExpressionAnySingleDigitItem_Click()
    Call AddTriggerToTextBox("#")
End Sub

Private Sub mnuWizardsTriggerAddRegularyExpressionSingleCharacterInListItem_Click()
    Dim StartChar As String * 1
    Dim EndChar As String * 1
    
    StartChar = InputBox("Please enter the beginning char in the list.", "Attack editor add single Character from list")
    EndChar = InputBox("Please enter the ending char in the list.", "Attack editor add single Character from list")
    
    AddTriggerToTextBox "[" & StartChar & "-" & EndChar & "]"
End Sub

Private Sub mnuWizardsTriggerAddRegularyExpressionZeroOrMoreItem_Click()
    Call AddTriggerToTextBox("*")
End Sub

Private Sub mnuCloseItem_Click()
    Unload Me
End Sub

Private Sub mnuEditCopyItem_Click()
    On Error Resume Next    'Needed if the selected element is not an input field (e.g. a button)
    Clipboard.Clear
    Clipboard.SetText ActiveControl.SelText, vbCFText
End Sub

Private Sub mnuEditCutItem_Click()
    On Error Resume Next    'Needed if the selected element is not an input field (e.g. a button)
    Clipboard.SetText ActiveControl.SelText, vbCFText
    ActiveControl.SelText = ""
End Sub

Private Sub mnuEditDeleteAllItem_Click()
    On Error Resume Next    'Needed if the selected element is not an input field (e.g. a button)
    'Delete the existing value temporarily
    ActiveControl.Text = vbNullString
End Sub

Private Sub mnuEditPasteItem_Click()
    Dim SelStart As Integer
   
    On Error Resume Next    'Needed if the selected element is not an input field (e.g. a button)
    
    SelStart = ActiveControl.SelStart
   
    ActiveControl.Text = Left$(ActiveControl.Text, SelStart) & _
        Clipboard.GetText(vbCFText) & _
        Right(ActiveControl.Text, _
        Len(ActiveControl.Text) - _
        (SelStart + ActiveControl.SelLength))
   
    ActiveControl.SelStart = SelStart + Len(Clipboard.GetText)
End Sub

Private Sub mnuEditSelectAllItem_Click()
    On Error Resume Next    'Needed if the selected element is not an input field (e.g. a button)
    ActiveControl.SelStart = 0
    ActiveControl.SelLength = Len(ActiveControl.Text)
End Sub

Private Sub mnuEditUndoItem_Click()
    On Error Resume Next    'Needed if the selected element is not an input field (e.g. a button)
    
    'Do the undo function for the given text box
    Const EM_UNDO As String = &HC7
    SendMessage ActiveControl.hwnd, EM_UNDO, 0, 0
End Sub

Private Sub mnuFileNewItem_Click()
    Dim sPluginFileName As String   'We need to cache the filename of the plugin
    
    If CheckIfPluginIsEdited = False Then
    
        'Chacheing of the plugin filename
        sPluginFileName = plugin_filename
        
        'Clear all variables first
        Call ClearAllPluginVariables
        
        'Write the cached plugin filename back
        plugin_filename = sPluginFileName
        
        'Clear all the textboxes now
        Call LoadActualValues
    
        lblPluginEditedTag.Visible = True
    End If
End Sub

Private Sub mnuReloadItem_Click()
    If CheckIfPluginIsEdited = False Then
        WriteLogEntry "Reinitialize the original values of the plugin."
        
        'Reinitialize the original values of the plugin
        ParseATKPlugin (ReadPluginFromFile(plugin_filename))
        
        'Load the latest values
        Call LoadActualValues
    End If
End Sub

Private Sub AddRequestToTextBox(Command As String)
    'Add a pipe if there is already one command and no pipe at the end
    If LenB(txtRequest.Text) <> 0 Then
        If InStr(Len(txtRequest.Text), txtRequest.Text, "|") = 0 Then
            txtRequest.Text = txtRequest.Text & "|"
        End If
    End If
    
    'Add the commando as string the the textbox
    txtRequest.Text = txtRequest.Text & Command

    'Go to the end of the textbox for manual input of the next command
    txtRequest.SetFocus
    txtRequest.SelStart = Len(txtRequest.Text)
End Sub

Private Sub AddDescriptionToTextBox(TextBlock As String)
    Dim ActualDescriptionText As String 'Saving the actual TextBox entry
    
    'Write the TextBox input into the variant to increase the speed
    ActualDescriptionText = txtDescription.Text
    
    If LenB(ActualDescriptionText) <> 0 Then
        'Add the commando as string the the textbox with a space
        txtDescription.Text = ActualDescriptionText & " " & TextBlock
    Else
        'Add the commando as string the the textbox without a space
        txtDescription.Text = ActualDescriptionText & TextBlock
    End If

    'Go to the end of the textbox for manual input of the next command
    txtDescription.SetFocus
    txtDescription.SelStart = Len(txtDescription.Text)
End Sub

Private Sub AddSolutionToTextBox(TextBlock As String)
    Dim ActualSolutionText As String 'Saving the actual TextBox entry
    
    'Write the TextBox input into the variant to increase the speed
    ActualSolutionText = txtSolution.Text
    
    If LenB(ActualSolutionText) <> 0 Then
        'Add the commando as string the the textbox with a space
        txtSolution.Text = ActualSolutionText & " " & TextBlock
    Else
        'Add the commando as string the the textbox without a space
        txtSolution.Text = ActualSolutionText & TextBlock
    End If

    'Go to the end of the textbox for manual input of the next command
    txtSolution.SetFocus
    txtSolution.SelStart = Len(txtSolution.Text)
End Sub

Private Sub AddTriggerToTextBox(Trigger As String)
    'Add the commando as string the the textbox
    txtTrigger.Text = txtTrigger.Text & Trigger

    'Go to the end of the textbox for manual input of the next command
    txtTrigger.SetFocus
    txtTrigger.SelStart = Len(txtTrigger.Text)
End Sub

Private Sub mnuWizardsRequestAddCommandCloseItem_Click()
    AddRequestToTextBox "close"
End Sub

Private Sub mnuWizardsRequestAddCommandICMPReachableItem_Click()
    AddRequestToTextBox "icmp_alive"
End Sub

Private Sub mnuWizardsRequestAddCommandOpenItem_Click()
    AddRequestToTextBox "open"
End Sub

Private Sub mnuWizardsRequestAddCommandPatternExistsItem_Click()
    AddRequestToTextBox "pattern_exists"
End Sub

Private Sub mnuWizardsRequestAddCommandSendItem_Click()
    Dim Request As String
    
    Request = InputBox("Please enter the string you want to send.", "Attack editor add send command")
    
    'Add a newline if the is no one at the end
    If LenB(Request) > 4 Then
        If InStr(Len(Request) - 2, Request, "\n") = 0 Then
            Request = Request & "\n"
        End If
    Else
        Request = Request & "\n"
    End If
    
    AddRequestToTextBox "send " & Request
End Sub

Private Sub mnuWizardsRequestAddCommandSleepItem_Click()
    Dim SleepValue As String
    
    SleepValue = InputBox("Please enter a value how long to sleep in seconds.", "Attack editor add sleep command", "3")
    
    If LenB(SleepValue) <> 0 Then
        If AscW(SleepValue) < 48 Or AscW(SleepValue) > 57 Then
            'Add the sleep command without value of there is no useful input
            AddRequestToTextBox "sleep"
        Else
            'Add the sleep command with the input
            AddRequestToTextBox "sleep " & SleepValue
        End If
    Else
        'Add the sleep command with no value if there is no value given
        AddRequestToTextBox "sleep"
    End If
End Sub

Private Sub mnuWizardsRequestAddTemplateBannerGrabbingHTTPItem_Click()
    AddRequestToTextBox "open|send HEAD / HTTP/1.0\n\n|sleep|close|pattern_exists"
End Sub

Private Sub mnuWizardsRequestAddTemplateHTTPGETRequestItem_Click()
    Dim Filename As String
    
    Filename = InputBox("Please enter the file you want to retrieve with the HTTP GET command.", "Attack Editor add HTTP GET template", "/index.html")

    AddRequestToTextBox "open|send GET " & Filename & " HTTP/1.0\n\n|sleep|close|pattern_exists"
End Sub

Private Sub mnuWizardsRequestAddTemplateSimpleBannerGrabbingItem_Click()
    AddRequestToTextBox "open|sleep|close|pattern_exists"
End Sub

Private Sub mnuFileSaveItem_Click()
    Dim Filename As String  'Here we save the plugin filename

    'Strip the extension to get the plugin filename
    If InStr(1, plugin_filename, ".plugin") <> 0 Then
        Filename = Left$(plugin_filename, Len(plugin_filename) - 7)
    ElseIf InStr(1, plugin_filename, ".nasl") <> 0 Then
        Filename = Left$(plugin_filename, Len(plugin_filename) - 5)
    Else
        Filename = plugin_filename
    End If
    
    'Write the plugin data to the file
    Call WritePluginToFile(PluginDirectory & "\" & Filename)

    'Delete the edited tag to prevent useless messages
    lblPluginEditedTag.Visible = False
    
    'Write the new title
    Call ParseATKPlugin(ReadPluginFromFile(plugin_filename))
    WriteLogEntry "Reading plugin " & plugin_id & " (" & plugin_filename & ")..."
    Me.Caption = "Attack Editor - " & plugin_name
End Sub

Private Sub mnuSaveAsItem_Click()
    Dim PluginFileName As String    'Here we save the desired filename for the new plugin
    
    'Define the initial directory of the plugins
    cdgSaveAs.InitDir = PluginDirectory
    
    'Ask the user for the desired filename
    cdgSaveAs.ShowSave 'Opens the save dialog
    PluginFileName = cdgSaveAs.Filename 'Get the filename
    
    'Cut the plugin extension if there is one given
    If LenB(PluginFileName) > 7 Then
        If InStr(Len(PluginFileName) - 7, PluginFileName, ".plugin") > 0 Then
            PluginFileName = Mid$(PluginFileName, 1, Len(PluginFileName) - 7)
        End If
    
        'Write the new plugin
        Call WritePluginToFile(PluginFileName)
    End If

    'Delete the edited tag to prevent useless messages
    lblPluginEditedTag.Visible = False

    'Write the new title
    Me.Caption = "Attack Editor - " & plugin_name
End Sub

Private Sub mnuWizardsTriggerAddAnAdditionalExpressionItem_Click()
    Call AddTriggerToTextBox(" OR ")
End Sub

Private Sub sldImpact_Change()
    'Write the slider value into the textbox
    txtImpact.Text = sldImpact.Value
End Sub

Private Sub sldImpact_LostFocus()
    Call DetectPluginAltering("impact", bug_impact, txtImpact.Text)
End Sub

Private Sub sldPopularity_Change()
    'Write the slider value into the textbox
    txtPopularity.Text = sldPopularity.Value
End Sub

Private Sub sldPopularity_LostFocus()
    Call DetectPluginAltering("bug popularity", bug_popularity, txtPopularity.Text)
End Sub

Private Sub sldRisk_Change()
    'Write the slider value into the textbox
    txtRisk.Text = sldRisk.Value
End Sub

Private Sub sldRisk_LostFocus()
    Call DetectPluginAltering("risk", bug_risk, txtRisk.Text)
End Sub

Private Sub sldSimplicity_Change()
    'Write the slider value into the textbox
    txtSimplicity.Text = sldSimplicity.Value
End Sub

Private Sub sldSimplicity_LostFocus()
    Call DetectPluginAltering("simplicity", bug_simplicity, txtSimplicity.Text)
End Sub

Private Sub tspPluginData_Click()
    Dim intSelectedItem As Integer
    intSelectedItem = tspPluginData.SelectedItem.Index
    
    fraAttackData.Visible = False
    fraDescription.Visible = False
    fraExploitation.Visible = False
    fraSolution.Visible = False
    fraClassification.Visible = False
    fraBugInformation.Visible = False
    fraPluginInformation.Visible = False
    fraExternalData.Visible = False
    fraSources.Visible = False
    
    If intSelectedItem = 1 Then
        fraAttackData.Visible = True
    ElseIf intSelectedItem = 2 Then
        fraDescription.Visible = True
    ElseIf intSelectedItem = 3 Then
        fraExploitation.Visible = True
    ElseIf intSelectedItem = 4 Then
        fraSolution.Visible = True
    ElseIf intSelectedItem = 5 Then
        fraClassification.Visible = True
    ElseIf intSelectedItem = 6 Then
        fraBugInformation.Visible = True
    ElseIf intSelectedItem = 7 Then
        fraPluginInformation.Visible = True
    ElseIf intSelectedItem = 8 Then
        fraExternalData.Visible = True
    ElseIf intSelectedItem = 9 Then
        fraSources.Visible = True
    End If
End Sub

Private Sub txtAdvisory_LostFocus()
    Call DetectPluginAltering("advisory", bug_advisory, txtAdvisory.Text)
End Sub

Private Sub txtAeraSecID_Change()
    Dim strAeraSecInput As String
    
    strAeraSecInput = txtAeraSecID.Text
    
    'Detect changes and disables the button if there is no entry
    If LenB(strAeraSecInput) = 26 Then
        If InStr(3, strAeraSecInput, "-") = 3 Then
            If InStr(10, strAeraSecInput, "-") = 10 Then
                'Enable the button if the whole ID ae-xxxx-xxx is given
                cmdAeraSec.Enabled = True
            Else
                cmdAeraSec.Enabled = False
            End If
        Else
            cmdAeraSec.Enabled = False
        End If
    Else
        cmdAeraSec.Enabled = False
    End If
End Sub

Private Sub txtAeraSecID_LostFocus()
    Call DetectPluginAltering("AeraSecID", source_aerasec_id, txtAeraSecID.Text)
End Sub

Private Sub txtAffected_LostFocus()
    Call DetectPluginAltering("affected systems", bug_affected, txtAffected.Text)
End Sub

Private Sub txtArachnIDSID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtArachnIDSID.Text) <> 0 Then
        cmdArachnIDS.Enabled = True
    Else
        cmdArachnIDS.Enabled = False
    End If
End Sub

Private Sub txtBugCheckTools_LostFocus()
    Call DetectPluginAltering("tools that are able to check the flaw", bug_check_tool, txtBugCheckTools.Text)
End Sub

Private Sub txtCERTID_Change()
    Dim strCERTIDInput As String    'String for faster computation
    
    'Prepare the string for faster computation
    strCERTIDInput = txtCERTID.Text
    
    'Detect changes and disables the button if there is no entry
    If LenB(strCERTIDInput) = 20 Then
        If InStr(3, strCERTIDInput, "-") = 3 Then
            If InStr(8, strCERTIDInput, "-") = 8 Then
                If LenB(txtCERTID.Text) = 20 Then
                    cmdCERT.Enabled = True
                Else
                    cmdCERT.Enabled = False
                End If
            Else
                cmdCERT.Enabled = False
            End If
        Else
            cmdCERT.Enabled = False
        End If
    Else
        cmdCERT.Enabled = False
    End If
End Sub

Private Sub txtCERTVUID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtCERTVUID.Text) <> 0 Then
        cmdCERTVU.Enabled = True
    Else
        cmdCERTVU.Enabled = False
    End If
End Sub

Private Sub txtCVE_Change()
    Dim strCVEInput As String
    
    strCVEInput = txtCVE.Text
    
    'Detect changes and disables the button if there is no entry
    If LenB(strCVEInput) = 26 Then
        If InStr(4, strCVEInput, "-") = 4 Then
            If InStr(9, strCVEInput, "-") = 9 Then
                'Enable the button if the whole ID CVE-xxxx-xxxx is given
                cmdCVE.Enabled = True
            Else
                cmdCVE.Enabled = False
            End If
        Else
            cmdCVE.Enabled = False
        End If
    ElseIf LenB(strCVEInput) = 18 Then
        If InStr(5, strCVEInput, "-") = 5 Then
            'Enable the button if just the ID xxxx-xxxx is given
            cmdCVE.Enabled = True
        Else
            cmdCVE.Enabled = False
        End If
    Else
        cmdCVE.Enabled = False
    End If
End Sub

Private Sub txtCVE_LostFocus()
    Call DetectPluginAltering("CVE or CAN number", source_cve, txtCVE.Text)
End Sub

Private Sub txtDescription_LostFocus()
    Call DetectPluginAltering("bug description", bug_description, txtDescription.Text)
End Sub

Private Sub txtDescription_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'Show context menu if 2nd mouse button is pressed
    If Button = vbRightButton Then
        Call OpenContextMenu(Me, Me.mnuWizardsDescription)
    End If
End Sub

Private Sub txtExploitURL_Change()
    'Enable or disable the exploit command button if there is (no) exploit url
    If LenB(txtExploitURL.Text) <> 0 Then
        cmdExploitURLGo.Enabled = True
    Else
        cmdExploitURLGo.Enabled = False
    End If
    
    'Show the SecurityFocus.com icon
    If InStr(1, LCase(txtExploitURL.Text), "securityfocus.com", vbBinaryCompare) Then
        Set cmdExploitURLGo.Picture = imlFileSources.ListImages(3).Picture
    'Show the PacketStorm icon
    ElseIf InStr(1, LCase(txtExploitURL.Text), "packetstorm.", vbBinaryCompare) Or _
        InStr(1, LCase(txtExploitURL.Text), "packetstormsecurity.", vbBinaryCompare) Then
        Set cmdExploitURLGo.Picture = imlFileSources.ListImages(4).Picture
    'Show the SecuriTeam.com icon
    ElseIf InStr(1, LCase(txtExploitURL.Text), "securiteam.com", vbBinaryCompare) Then
        Set cmdExploitURLGo.Picture = imlFileSources.ListImages(5).Picture
    'Show the ftp icon
    ElseIf InStr(1, LCase(txtExploitURL.Text), "ftp.", vbBinaryCompare) Or _
        InStr(1, LCase(txtExploitURL.Text), "ftp://", vbBinaryCompare) Or _
        InStr(1, txtExploitURL.Text, ":21") Then
        Set cmdExploitURLGo.Picture = imlFileSources.ListImages(2).Picture
    'Show normally the http icon
    Else
        Set cmdExploitURLGo.Picture = imlFileSources.ListImages(1).Picture
    End If
End Sub

Private Sub txtExploitURL_KeyPress(KeyAscii As Integer)
    'Load the exploit url if the user press' enter and an url is given
    If KeyAscii = 13 Then
        If LenB(txtExploitURL.Text) <> 0 Then
            Call cmdExploitURLGo_Click
        End If
    End If
End Sub

Private Sub txtExploitURL_LostFocus()
    Call DetectPluginAltering("exploit URL", bug_exploit_url, txtExploitURL.Text)
End Sub

Private Sub txtFixingTime_LostFocus()
    Call DetectPluginAltering("time to fix the bug", bug_fixing_time, txtFixingTime.Text)
End Sub

Private Sub txtHeiseNews_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtHeiseNews.Text) > 3 Then
        cmdHeiseNews.Enabled = True
    Else
        cmdHeiseNews.Enabled = False
    End If
End Sub

Private Sub txtHeiseNews_LostFocus()
    Call DetectPluginAltering("Heise News ID", source_heise_news, txtHeiseNews.Text)
End Sub

Private Sub txtHeiseSecurity_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtHeiseSecurity.Text) <> 0 Then
        cmdHeiseSecurity.Enabled = True
    Else
        cmdHeiseSecurity.Enabled = False
    End If
End Sub

Private Sub txtHeiseSecurity_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtHeiseSecurity_LostFocus()
    Call DetectPluginAltering("Heise Security ID", source_heise_security, txtHeiseSecurity.Text)
End Sub

Private Sub txtImpact_Change()
    If LenB(txtImpact.Text) <> 0 Then
        If txtImpact.Text > 10 Then
            txtImpact.Text = "10"
        End If
        
        'Display the textbox data with the slider
        sldImpact.Value = txtImpact.Text
    
        If txtImpact.Text = 0 Then
            txtImpact.Text = vbNullString
        End If
    
    Else
        sldImpact.Value = 0
    End If
End Sub

Private Sub txtImpact_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtImpact_LostFocus()
    Call DetectPluginAltering("impact", bug_impact, txtImpact.Text)
End Sub

Private Sub txtISSScannerRating_LostFocus()
    Call DetectPluginAltering("ISS Scanner rating", bug_iss_scanner_rating, txtISSScannerRating.Text)
End Sub

Private Sub txtISSXForceID_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtISSXForceID_LostFocus()
    Call DetectPluginAltering("ISS X-Force ID", source_issxforce_id, txtISSXForceID.Text)
End Sub

Private Sub txtMSKBID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtMSKBID.Text) <> 0 Then
        cmdMSKB.Enabled = True
    Else
        cmdMSKB.Enabled = False
    End If
End Sub

Private Sub txtMSKBID_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtMSKBID_LostFocus()
    Call DetectPluginAltering("Microsoft Knowledge-Base ID", source_mskb_id, txtMSKBID.Text)
End Sub

Private Sub txtMSSBID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtMSSBID.Text) = 16 Then
        cmdMSSB.Enabled = True
    Else
        cmdMSSB.Enabled = False
    End If
End Sub

Private Sub txtMSSBID_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack, 45, 77, 83 '-, M and S
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtMSSBID_LostFocus()
    Call DetectPluginAltering("Microsoft Security Bulletin ID", source_mssb_id, txtMSSBID.Text)
End Sub

Private Sub txtNessusID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtNessusID.Text) <> 0 Then
        cmdNessus.Enabled = True
    Else
        cmdNessus.Enabled = False
    End If
End Sub

Private Sub txtNessusID_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtNessusID_LostFocus()
    Call DetectPluginAltering("Nessus ID", source_nessus_id, txtNessusID.Text)
End Sub

Private Sub txtNetBSDSA_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtNetBSDSA.Text) = 34 Then
        cmdNetBSDSA.Enabled = True
    Else
        cmdNetBSDSA.Enabled = False
    End If
End Sub

Private Sub txtNetBSDSA_LostFocus()
    Call DetectPluginAltering("NetBSD Security Advisory", source_netbsdsa_id, txtNetBSDSA.Text)
End Sub

Private Sub txtNotAffected_LostFocus()
    Call DetectPluginAltering("not affected systems", bug_not_affected, txtNotAffected.Text)
End Sub

Private Sub txtOSVDBID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtOSVDBID.Text) <> 0 Then
        cmdOSVDB.Enabled = True
    Else
        cmdOSVDB.Enabled = False
    End If
End Sub

Private Sub txtOSVDBID_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtOSVDBID_LostFocus()
    Call DetectPluginAltering("Open Source Vulnerability Data Base ID", source_osvdb_id, txtOSVDBID.Text)
End Sub

Private Sub txtPluginCreatedDate_DblClick()
    Call cmdPluginCreateDateToday_Click
End Sub

Private Sub txtPluginCreatedName_LostFocus()
    Call DetectPluginAltering("plugin creator name", plugin_created_name, txtPluginCreatedName.Text)
End Sub

Private Sub txtPluginCreatedEmail_LostFocus()
    Dim strEmail As String
    
    strEmail = txtPluginCreatedEmail.Text
    
    'Add a space if there is a mail address ending. So we prevent deleting the line
    'during optimazion process of saving the plugin.
    If InStr(Len(strEmail), strEmail, ">") <> 0 Then
        txtPluginCreatedEmail.Text = strEmail & " "
    End If
    
    Call DetectPluginAltering("plugin creator email", plugin_created_email, strEmail)
End Sub

Private Sub txtPluginCreatedWeb_LostFocus()
    Call DetectPluginAltering("plugin creator web", plugin_created_web, txtPluginCreatedWeb.Text)
End Sub

Private Sub txtPluginCreatedCompany_LostFocus()
    Call DetectPluginAltering("plugin creator company", plugin_created_company, txtPluginCreatedCompany.Text)
End Sub

Private Sub txtPluginComment_LostFocus()
    Call DetectPluginAltering("plugin comment", plugin_comment, txtPluginComment.Text)
End Sub

Private Sub txtPluginCreatedDate_LostFocus()
    Call DetectPluginAltering("plugin created date", plugin_created_date, txtPluginCreatedDate.Text)
End Sub

Private Sub txtPluginCreatedEmail_KeyUp(KeyCode As Integer, Shift As Integer)
    Call ReplaceEmailToPreventSpam(txtPluginCreatedEmail)
End Sub

Private Function ReplaceEmailToPreventSpam(TextBoxName As TextBox) As String
    'Dev note: This one is not perfect yet! Check it again!
    
    Dim PositionInTextBox As Integer    'The cache for saving the actual position in the textbox
    Dim BeginSearchPosition As Integer  'The position we begin the instr search
    Dim ReplacementString As String     'The replacement string (e.g. " at ")
                                        'We use all this variants more often in this procedure
    
    PositionInTextBox = TextBoxName.SelStart
    
    If PositionInTextBox = 0 Then
        BeginSearchPosition = 1
    Else
        BeginSearchPosition = PositionInTextBox
    End If

    If InStr(BeginSearchPosition, TextBoxName.Text, "@") <> 0 Then
        ReplacementString = " at "
        TextBoxName.Text = Replace(TextBoxName.Text, "@", ReplacementString)
        TextBoxName.SelStart = PositionInTextBox + Len(ReplacementString)
    'Replace all dot characters with the string
    ElseIf InStr(BeginSearchPosition, TextBoxName.Text, ".") <> 0 Then
        ReplacementString = " dot "
        TextBoxName.Text = Replace(TextBoxName.Text, ".", ReplacementString)
        TextBoxName.SelStart = PositionInTextBox + Len(ReplacementString)
    End If
End Function

Private Sub txtPluginID_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtPluginID_LostFocus()
    Call DetectPluginAltering("plugin ID", plugin_id, txtPluginID.Text)
End Sub

Private Sub txtPluginName_LostFocus()
    Call DetectPluginAltering("plugin name", plugin_name, txtPluginName.Text)
End Sub

Private Sub txtPluginUpdatedDate_DblClick()
    Call cmdPluginUpdateDateToday_Click
End Sub

Private Sub txtPluginUpdatedEmail_KeyUp(KeyCode As Integer, Shift As Integer)
    Call ReplaceEmailToPreventSpam(txtPluginUpdatedEmail)
End Sub

Private Sub txtPluginUpdatedName_LostFocus()
    Call DetectPluginAltering("plugin updated name", plugin_updated_name, txtPluginUpdatedName.Text)
End Sub

Private Sub txtPluginUpdatedEmail_LostFocus()
    Dim strEmail As String
    
    strEmail = txtPluginUpdatedEmail.Text

    'Add a space if there is a mail address ending. So we prevent deleting the line
    'during optimazion process of saving the plugin.
    If InStr(Len(strEmail), strEmail, ">") <> 0 Then
        txtPluginUpdatedEmail.Text = strEmail & " "
    End If
    
    Call DetectPluginAltering("plugin updated email", plugin_updated_email, strEmail)
End Sub

Private Sub txtPluginUpdatedWeb_LostFocus()
    Call DetectPluginAltering("plugin updated web", plugin_updated_web, txtPluginUpdatedWeb.Text)
End Sub

Private Sub txtPluginUpdatedCompany_LostFocus()
    Call DetectPluginAltering("plugin updated company", plugin_updated_company, txtPluginUpdatedCompany.Text)
End Sub

Private Sub txtPluginUpdatedDate_LostFocus()
    Call DetectPluginAltering("plugin update date", plugin_updated_date, txtPluginUpdatedDate.Text)
End Sub

Private Sub txtPluginVersion_LostFocus()
    Call DetectPluginAltering("plugin version", plugin_version, txtPluginVersion.Text)
End Sub

Private Sub txtPopularity_Change()
    If LenB(txtPopularity.Text) <> 0 Then
        If txtPopularity.Text > 10 Then
            txtPopularity.Text = "10"
        End If
        
        'Display the textbox data with the slider
        sldPopularity.Value = txtPopularity.Text
        
        If txtPopularity.Text = 0 Then
            txtPopularity.Text = vbNullString
        End If
    Else
        sldPopularity.Value = 0
    End If
End Sub

Private Sub txtPopularity_KeyPress(KeyAscii As Integer)
    'only allow numbers as data
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtPopularity_LostFocus()
    Call DetectPluginAltering("popularity", bug_popularity, txtPopularity.Text)
End Sub

Private Sub txtPort_Change()
    Dim PortText As Long
    
    'Prevent an empty port number
    If LenB(txtPort.Text) = 0 Then
        txtPort.Text = 0
    End If
        
    'Put the textbox into an integer to increase computation speed.
    'Developer note: This has to be done after the checking for senseless values because
    'otherwise we will get an underflow if there is no input
    PortText = txtPort.Text
    
    'Reject to big values for the destination port
    If PortText > 65535 Then
        PortText = 65535
        txtPort.Text = PortText
    End If
    
    If PortText = 7 Then
        lblPortServiceName.Caption = "echo"
    ElseIf PortText = 9 Then
        lblPortServiceName.Caption = "discard"
    ElseIf PortText = 13 Then
        lblPortServiceName.Caption = "daytime"
    ElseIf PortText = 17 Then
        lblPortServiceName.Caption = "qotd"
    ElseIf PortText = 20 Then
        lblPortServiceName.Caption = "ftp-data"
    ElseIf PortText = 21 Then
        lblPortServiceName.Caption = "ftp"
    ElseIf PortText = 22 Then
        lblPortServiceName.Caption = "ssh"
    ElseIf PortText = 23 Then
        lblPortServiceName.Caption = "telnet"
    ElseIf PortText = 25 Then
        lblPortServiceName.Caption = "smtp"
    ElseIf PortText = 53 Then
        lblPortServiceName.Caption = "domain"
    ElseIf PortText = 69 Then
        lblPortServiceName.Caption = "tftp"
    ElseIf PortText = 70 Then
        lblPortServiceName.Caption = "gopher"
    ElseIf PortText = 79 Then
        lblPortServiceName.Caption = "finger"
    ElseIf PortText = 80 Then
        lblPortServiceName.Caption = "http"
    ElseIf PortText = 81 Then
        lblPortServiceName.Caption = "http2"
    ElseIf PortText = 88 Then
        lblPortServiceName.Caption = "kerberos"
    ElseIf PortText = 109 Then
        lblPortServiceName.Caption = "pop2"
    ElseIf PortText = 110 Then
        lblPortServiceName.Caption = "pop3"
    ElseIf PortText = 111 Then
        lblPortServiceName.Caption = "sunrpc"
    ElseIf PortText = 113 Then
        lblPortServiceName.Caption = "auth"
    ElseIf PortText = 135 Then
        lblPortServiceName.Caption = "epmap"
    ElseIf PortText = 137 Then
        lblPortServiceName.Caption = "netbios-ns"
    ElseIf PortText = 139 Then
        lblPortServiceName.Caption = "netbios-ssn"
    ElseIf PortText = 143 Then
        lblPortServiceName.Caption = "imap"
    ElseIf PortText = 179 Then
        lblPortServiceName.Caption = "bgp"
    ElseIf PortText = 443 Then
        lblPortServiceName.Caption = "https"
    ElseIf PortText = 445 Then
        lblPortServiceName.Caption = "microsoft-ds"
    ElseIf PortText = 666 Then
        lblPortServiceName.Caption = "suspicous"
    ElseIf PortText = 800 Then
        lblPortServiceName.Caption = "webproxy"
    ElseIf PortText = 888 Then
        lblPortServiceName.Caption = "webproxy"
    ElseIf PortText = 8000 Then
        lblPortServiceName.Caption = "webproxy"
    ElseIf PortText = 8080 Then
        lblPortServiceName.Caption = "webproxy"
    ElseIf PortText = 8081 Then
        lblPortServiceName.Caption = "webproxy"
    ElseIf PortText = 1234 Then
        lblPortServiceName.Caption = "suspicous"
    ElseIf PortText = 12345 Then
        lblPortServiceName.Caption = "suspicous"
    ElseIf PortText = 0 Then
        lblPortServiceName.Caption = "reserved"
    Else
        lblPortServiceName.Caption = "unknown"
    End If
End Sub

Private Sub txtPort_KeyPress(KeyAscii As Integer)
    'only allow numbers as port data
    Select Case KeyAscii
      Case vbKey0 To vbKey9, vbKeyBack
      Case Else
          KeyAscii = 0
    End Select
End Sub

Private Sub txtPort_LostFocus()
    'Developer note: We need CLng because a textbox is normally
    'a string but the plugin_port is defined as long. So we can
    'compare these two values.
    Call DetectPluginAltering("plugin port", plugin_port, txtPort.Text)
End Sub

Private Sub txtPort_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'Show context menu if 2nd mouse button is pressed
    If Button = vbRightButton Then
        Call OpenContextMenu(Me, Me.mnuWizardsPort)
    End If
End Sub

Private Sub txtBugPublishedName_LostFocus()
    Call DetectPluginAltering("bug publisher name", bug_published_name, txtBugPublishedName.Text)
End Sub

Private Sub txtBugPublishedEmail_LostFocus()
    Dim strEmail As String
    
    strEmail = txtBugPublishedEmail.Text
    
    'Add a space if there is a mail address ending. So we prevent deleting the line
    'during optimazion process of saving the plugin.
    If InStr(Len(strEmail), strEmail, ">") <> 0 Then
        txtBugPublishedEmail.Text = strEmail & " "
    End If
    
    Call DetectPluginAltering("bug publisher email", bug_published_email, strEmail)
End Sub

Private Sub txtBugPublishedWeb_LostFocus()
    Call DetectPluginAltering("bug publisher web", bug_published_web, txtBugPublishedWeb.Text)
End Sub

Private Sub txtBugPublishedCompany_LostFocus()
    Call DetectPluginAltering("bug publisher company", bug_published_company, txtBugPublishedCompany.Text)
End Sub

Private Sub txtBugPublishedDate_LostFocus()
    Call DetectPluginAltering("bug published date", bug_published_date, txtBugPublishedDate.Text)
End Sub

Private Sub txtRequest_LostFocus()
    Call DetectPluginAltering("request", plugin_request, txtRequest.Text)
End Sub

Private Sub txtRequest_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'Show context menu if 2nd mouse button is pressed
    'Delete the existing request temporarily
    If Button = vbRightButton Then
        Call ShowAddRequestMenu
    End If
End Sub

Private Sub ShowAddRequestMenu()
    'Dev note: please check once more!
    If InStr(1, txtRequest.Text, "open") > 0 Then
        If InStr(1, txtRequest.Text, "close") = 0 Then
            mnuWizardsRequestAddCommandSendItem.Enabled = True
            mnuWizardsRequestAddCommandPatternExistsItem.Enabled = True
        End If
    ElseIf InStr(1, txtRequest.Text, "open") > 0 Then
        mnuWizardsRequestAddCommandSendItem.Enabled = False
        mnuWizardsRequestAddCommandPatternExistsItem.Enabled = True
    Else
        mnuWizardsRequestAddCommandSendItem.Enabled = False
        mnuWizardsRequestAddCommandPatternExistsItem.Enabled = False
    End If
    
    If txtRequest.Text Like "*open*close*" = True Then
        If txtRequest.Text Like "*close*open*" = False Then
            mnuWizardsRequestAddCommandCloseItem.Enabled = True
        Else
            mnuWizardsRequestAddCommandCloseItem.Enabled = False
        End If
    Else
        mnuWizardsRequestAddCommandCloseItem.Enabled = True
    End If
    
    Call OpenContextMenu(Me, Me.mnuWizardsRequest)
End Sub

Private Sub txtRHSAID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtRHSAID.Text) = 26 Then
        cmdRHSA.Enabled = True
    Else
        cmdRHSA.Enabled = False
    End If
End Sub

Private Sub txtRHSAID_LostFocus()
    Call DetectPluginAltering("Red Hat Security Advisory ID", source_rhsa_id, txtRHSAID.Text)
End Sub

Private Sub txtRisk_Change()
    If LenB(txtRisk.Text) <> 0 Then
        If txtRisk.Text > 10 Then
            txtRisk.Text = "10"
        End If
        
        'Display the textbox data with the slider
        sldRisk.Value = txtRisk.Text
    
        If txtRisk.Text = 0 Then
            txtRisk.Text = vbNullString
        End If
    Else
        sldRisk.Value = 0
    End If
End Sub

Private Sub txtRisk_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtRisk_LostFocus()
    Call DetectPluginAltering("risk", bug_risk, txtRisk.Text)
End Sub

Private Sub txtScipID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtScipID.Text) <> 0 Then
        cmdScip.Enabled = True
    Else
        cmdScip.Enabled = False
    End If
End Sub

Private Sub txtScipID_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtScipID_LostFocus()
    Call DetectPluginAltering("scip ID", source_scip_id, txtScipID.Text)
End Sub

Private Sub txtSecuniaID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtSecuniaID.Text) <> 0 Then
        cmdSecunia.Enabled = True
    Else
        cmdSecunia.Enabled = False
    End If
End Sub

Private Sub txtSecuniaID_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtSecuniaID_LostFocus()
    Call DetectPluginAltering("Secunia ID", source_secunia_id, txtSecuniaID.Text)
End Sub

Private Sub txtSecuriTeamURL_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtSecuriTeamURL.Text) <> 0 Then
        cmdSecuriTeamURL.Enabled = True
    Else
        cmdSecuriTeamURL.Enabled = False
    End If
End Sub

Private Sub txtSecuriTeamURL_LostFocus()
    Call DetectPluginAltering("SecuriTeam.com URL", source_securiteam_url, txtSecuriTeamURL.Text)
End Sub

Private Sub txtSecurityFocusBID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtSecurityFocusBID.Text) <> 0 Then
        cmdSecurityFocus.Enabled = True
    Else
        cmdSecurityFocus.Enabled = False
    End If
End Sub

Private Sub txtSecurityFocusBID_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtSecurityFocusBID_LostFocus()
    Call DetectPluginAltering("SecurityFocus BID", source_securityfocus_bid, txtSecurityFocusBID.Text)
End Sub

Private Sub txtSecurityTrackerID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtSecurityTrackerID.Text) <> 0 Then
        cmdSecurityTracker.Enabled = True
    Else
        cmdSecurityTracker.Enabled = False
    End If
End Sub

Private Sub txtSecurityTrackerID_LostFocus()
    Call DetectPluginAltering("Security Tracker ID", source_securitytracker_id, txtSecurityTrackerID.Text)
End Sub

Private Sub txtSecurityTrackerID_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtSimplicity_Change()
    If LenB(txtSimplicity.Text) <> 0 Then
        If txtSimplicity.Text > 10 Then
            txtSimplicity.Text = "10"
        End If
        
        'Display the textbox data with the slider
        sldSimplicity.Value = txtSimplicity.Text
        
        If txtSimplicity.Text = 0 Then
            txtSimplicity.Text = vbNullString
        End If
    Else
        sldSimplicity.Value = 0
    End If
End Sub

Private Sub txtSimplicity_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtSimplicity_LostFocus()
    Call DetectPluginAltering("simplicity", bug_simplicity, txtSimplicity.Text)
End Sub

Private Sub txtSnortID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtSnortID.Text) <> 0 Then
        cmdSnort.Enabled = True
    Else
        cmdSnort.Enabled = False
    End If
End Sub

Private Sub txtSnortID_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtSnortID_LostFocus()
    Call DetectPluginAltering("Snort ID", source_snort_id, txtSnortID.Text)
End Sub

Private Sub txtSolution_LostFocus()
    Call DetectPluginAltering("solution", bug_solution, txtSolution.Text)
End Sub

Private Sub txtSourceMisc_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtSourceMisc.Text) <> 0 Then
        cmdMisc.Enabled = True
    Else
        cmdMisc.Enabled = False
    End If
End Sub

Private Sub txtSourceMisc_LostFocus()
    Call DetectPluginAltering("misc. sources", source_misc, txtSourceMisc.Text)
End Sub

Private Sub txtSymantecNetReconRating_LostFocus()
    Call DetectPluginAltering("Symantec NetRecon rating", bug_netrecon_rating, txtSymantecNetReconRating.Text)
End Sub

Private Sub txtTecchannelID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtTecchannelID.Text) <> 0 Then
        cmdTecChannel.Enabled = True
    Else
        cmdTecChannel.Enabled = False
    End If
End Sub

Private Sub txtTecchannelID_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
        Case vbKey0 To vbKey9, vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
End Sub

Private Sub txtTecchannelID_LostFocus()
    Call DetectPluginAltering("TecChannel ID", source_tecchannel_id, txtTecchannelID.Text)
End Sub

Private Sub txtTrigger_LostFocus()
    Dim strTrigger As String
    
    strTrigger = txtTrigger.Text

    If InStr(Len(strTrigger), strTrigger, ">") <> 0 Then
        txtTrigger.Text = Left(strTrigger, Len(strTrigger) - 1)
    End If
    
    Call DetectPluginAltering("trigger", plugin_trigger, strTrigger)
End Sub

Private Sub DetectPluginAltering(ElementName As String, PublicVariable As String, Element As String)
    'Write the new data in the public variable
    If PublicVariable <> Element Then
        PublicVariable = Element
        
        'Write the log entry
        WriteLogEntry "Changed the " & ElementName & "."
        
        'Tag the plugin as edited
        Call TagPluginAsEdited
    End If
End Sub

Private Sub TagPluginAsEdited()
    'Tag the plugin as edited
    lblPluginEditedTag.Visible = True

    'Write the log entry
    WriteLogEntry "Tag the selected plugin as 'edited'."
End Sub

Private Sub txtTrigger_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'Show context menu if the 2nd mouse button is pressed
    If Button = vbRightButton Then
        Call OpenContextMenu(Me, Me.mnuWizardsTrigger)
    End If
End Sub

Public Function CheckIfPluginIsEdited() As Boolean
    Dim iMsgBoxResponse As Integer
    
    'Set the focus to prevent not seen changes. The DoEvents is needed!
    txtPluginID.SetFocus
    DoEvents
    
    CheckIfPluginIsEdited = False
    
    If lblPluginEditedTag.Visible = True Then
        iMsgBoxResponse = MsgBox("You have changed the behaviour of the plugin " & plugin_id & vbCrLf & _
                "(" & plugin_name & ")." & vbCrLf & vbCrLf & _
                "If you close the Attack Editor or load new values without" & vbCrLf & _
                "saving the old data, all changes will be lost." & vbCrLf & vbCrLf & _
                "Do you want to save your edited plugin?", _
                vbYesNoCancel + vbInformation, "Attack Editor plugin changed")
                
        If iMsgBoxResponse = vbYes Then
            Call mnuFileSaveItem_Click
        ElseIf iMsgBoxResponse = vbNo Then
            Call ParseATKPlugin(ReadPluginFromFile(plugin_filename))
        ElseIf iMsgBoxResponse = vbCancel Then
            CheckIfPluginIsEdited = True
        End If
    End If
End Function

Private Sub txtUSCERTTAID_Change()
    'Detect changes and disables the button if there is no entry
    If LenB(txtUSCERTTAID.Text) <> 0 Then
        cmdUSCERTTA.Enabled = True
    Else
        cmdUSCERTTA.Enabled = False
    End If
End Sub

Private Sub txtUSCERTTAID_LostFocus()
    Call DetectPluginAltering("US CERT Technical Advisory ID", source_uscertta_id, txtUSCERTTAID.Text)
End Sub

Public Function LoadSourceInBrowser(ByVal strSourceName As String, ByVal strSourceID As String, ByVal strSourceURL As String)
    'Open the source URL in the default browser
    Call ShellExecute(Me.hwnd, "Open", strSourceURL, "", App.Path, 1)

    'Write the log entry
    WriteLogEntry "Open " & strSourceName & " " & strSourceID
End Function

