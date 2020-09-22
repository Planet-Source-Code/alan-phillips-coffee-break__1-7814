VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form2 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   2070
   ClientLeft      =   45
   ClientTop       =   45
   ClientWidth     =   5310
   ControlBox      =   0   'False
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2070
   ScaleWidth      =   5310
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Timer Timer1 
      Left            =   1200
      Top             =   1560
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Exit"
      Enabled         =   0   'False
      Height          =   375
      Left            =   4320
      TabIndex        =   2
      Top             =   1560
      Width           =   855
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   1200
      Width           =   5055
      _ExtentX        =   8916
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.Label Label2 
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   1560
      Width           =   375
   End
   Begin VB.Label Label1 
      Height          =   855
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   5055
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()

If Form1.Text3.Text = "" Then
Timer1.Interval = "5000"
Else
Timer1.Interval = Form1.Text3.Text & "000"
End If
If Form1.Check1.Value = 1 Then Command1.Enabled = True
If Form1.Option2.Value = True Then
If Form1.Text1.Text = "" Then
Me.Caption = "Scandisk"
Else
Me.Caption = Form1.Text1.Text
End If
If Form1.Text2.Text = "" Then
Label1.Caption = "Windows has found errors on your systm.... performing Scandisk"
Else
Label1.Caption = Form1.Text2.Text
End If
End If
If Form1.Option3.Value = True Then
If Form1.Text1.Text = "" Then
Me.Caption = "Defrag"
Else
Me.Caption = Form1.Text1.Text
End If
If Form1.Text2.Text = "" Then
Label1.Caption = "Windows has found errors on your systm.... performing Defrag"
Else
Label1.Caption = Form1.Text2.Text
End If
End If
If Form1.Option4.Value = True Then
If Form1.Text1.Text = "" Then
Me.Caption = "Virus Scan"
Else
Me.Caption = Form1.Text1.Text
End If
If Form1.Text2.Text = "" Then
Label1.Caption = "Windows has found a possible Virus on your systm.... performing Check"
Else
Label1.Caption = Form1.Text2.Text
End If
End If
Unload Form1
End Sub

Private Sub Timer1_Timer()
Static progress As Integer
progress = (progress + 1) Mod 100
Label2.Caption = Str$(progress) & "%"
ProgressBar1.Value = progress
If progress = 99 Then Unload Me
End Sub
