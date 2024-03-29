VERSION 5.00
Begin VB.Form frmReport 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Report"
   ClientHeight    =   7845
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   5550
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7845
   ScaleWidth      =   5550
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSave 
      Caption         =   "&Save"
      Height          =   375
      Left            =   3120
      TabIndex        =   3
      ToolTipText     =   "Save Report as ASCII plain text"
      Top             =   7320
      Width           =   1095
   End
   Begin VB.CommandButton cmdClose 
      Caption         =   "&Close"
      Height          =   375
      Left            =   4320
      TabIndex        =   2
      ToolTipText     =   "Close Report"
      Top             =   7320
      Width           =   1095
   End
   Begin VB.Frame fraActualReport 
      Caption         =   "Actual Report"
      Height          =   7095
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5295
      Begin VB.TextBox txtReport 
         Height          =   6735
         Left            =   120
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   1
         Top             =   240
         Width           =   5055
      End
   End
End
Attribute VB_Name = "frmReport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdClose_Click()
    Unload Me
End Sub

Private Sub cmdSave_Click()
    'save the actual report as text file
    Dim FileNr As Integer
    FileNr = FreeFile
    Open "result-" & Target & ".txt" For Output As FileNr
        Print #FileNr, ActualReport
    Close
End Sub

Private Sub Form_Load()
    txtReport.Text = ActualReport

    'MsgBox CreateReportFromFile(ReportsDirectory & "/" & Target & ".report")
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set frmReport = Nothing
End Sub
