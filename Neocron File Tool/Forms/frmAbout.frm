VERSION 5.00
Begin VB.Form frmAbout 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "About"
   ClientHeight    =   2910
   ClientLeft      =   2760
   ClientTop       =   3750
   ClientWidth     =   3495
   Icon            =   "frmAbout.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   194
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   233
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Visible         =   0   'False
   Begin VB.CommandButton OKButton 
      Caption         =   "OK"
      Height          =   315
      Left            =   1020
      TabIndex        =   0
      Top             =   2400
      Width           =   1095
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      Caption         =   "Label10"
      Height          =   255
      Left            =   0
      TabIndex        =   10
      Top             =   2160
      Width           =   3495
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      Caption         =   "Label9"
      Height          =   255
      Left            =   0
      TabIndex        =   9
      Top             =   1920
      Width           =   3495
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      Caption         =   "Label8"
      Height          =   255
      Left            =   0
      TabIndex        =   8
      Top             =   1680
      Width           =   3495
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      Caption         =   "Label7"
      Height          =   255
      Left            =   0
      TabIndex        =   7
      Top             =   1440
      Width           =   3495
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Caption         =   "Label6"
      Height          =   255
      Left            =   0
      TabIndex        =   6
      Top             =   1200
      Width           =   3495
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "Label5"
      Height          =   255
      Left            =   0
      TabIndex        =   5
      Top             =   960
      Width           =   3495
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "Label4"
      Height          =   255
      Left            =   0
      TabIndex        =   4
      Top             =   720
      Width           =   3495
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "Label3"
      Height          =   255
      Left            =   0
      TabIndex        =   3
      Top             =   480
      Width           =   3495
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "Label2"
      Height          =   255
      Left            =   0
      TabIndex        =   2
      Top             =   240
      Width           =   3495
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Label1"
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   3495
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub OKButton_Click()
    Me.Hide
End Sub
