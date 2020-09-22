VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Coffee Break! - by Alan Phillips"
   ClientHeight    =   5895
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4575
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5895
   ScaleWidth      =   4575
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command2 
      Caption         =   "&Exit"
      Height          =   495
      Left            =   2400
      TabIndex        =   17
      Top             =   5280
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Start"
      Default         =   -1  'True
      Height          =   495
      Left            =   3480
      TabIndex        =   15
      Top             =   5280
      Width           =   975
   End
   Begin VB.Frame Frame2 
      Caption         =   "Options"
      Height          =   3495
      Left            =   120
      TabIndex        =   6
      Top             =   1680
      Width           =   4335
      Begin VB.CheckBox Check1 
         Caption         =   "Window Exitable"
         Height          =   255
         Left            =   240
         TabIndex        =   16
         Top             =   2760
         Width           =   3375
      End
      Begin VB.TextBox Text3 
         Height          =   285
         Left            =   240
         TabIndex        =   13
         Top             =   2040
         Width           =   855
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   240
         TabIndex        =   11
         Top             =   600
         Width           =   3855
      End
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   240
         TabIndex        =   9
         Top             =   1320
         Width           =   3855
      End
      Begin VB.Label Label7 
         Caption         =   "Default = 5 minutes"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   240
         TabIndex        =   18
         Top             =   2400
         Width           =   2655
      End
      Begin VB.Label Label6 
         Caption         =   "Minutes"
         Height          =   255
         Left            =   1200
         TabIndex        =   14
         Top             =   2160
         Width           =   855
      End
      Begin VB.Label Label3 
         Caption         =   "Time:"
         Height          =   255
         Left            =   240
         TabIndex        =   12
         Top             =   1800
         Width           =   2655
      End
      Begin VB.Label Label2 
         Caption         =   "Window Description:"
         Height          =   255
         Left            =   240
         TabIndex        =   10
         Top             =   1080
         Width           =   1575
      End
      Begin VB.Label Label5 
         Caption         =   "Window Title:"
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   360
         Width           =   1095
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "NOTE: Leave Fields Blank for Default"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   3120
         Width           =   4095
      End
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Option1"
      Height          =   135
      Left            =   5400
      TabIndex        =   2
      Top             =   2880
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Frame Frame1 
      Caption         =   "Dialogs/excuses"
      Height          =   735
      Left            =   120
      TabIndex        =   0
      Top             =   840
      Width           =   4335
      Begin VB.OptionButton Option4 
         Caption         =   "Virus Scan"
         Height          =   375
         Left            =   2880
         TabIndex        =   5
         Top             =   240
         Width           =   1215
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Scan Disk"
         Height          =   375
         Left            =   240
         TabIndex        =   4
         Top             =   240
         Value           =   -1  'True
         Width           =   1215
      End
      Begin VB.OptionButton Option3 
         Caption         =   "Defrag"
         Height          =   375
         Left            =   1680
         TabIndex        =   3
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Label Label1 
      Caption         =   $"Form1.frx":000C
      Height          =   615
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   4335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Form2.Show
End Sub

Private Sub Command2_Click()
Unload Me
End Sub
