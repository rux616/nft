VERSION 5.00
Begin VB.Form frmDone 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Done"
   ClientHeight    =   900
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   2895
   Icon            =   "frmDone.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   60
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   193
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Visible         =   0   'False
   Begin VB.CommandButton cmdOK 
      Cancel          =   -1  'True
      Caption         =   "&OK"
      Default         =   -1  'True
      Height          =   300
      Left            =   960
      TabIndex        =   0
      Top             =   480
      Width           =   975
   End
   Begin VB.Label lblDone 
      Alignment       =   2  'Center
      Caption         =   "Done!"
      Height          =   270
      Left            =   960
      TabIndex        =   1
      Top             =   120
      Width           =   975
   End
End
Attribute VB_Name = "frmDone"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdOK_Click()
    On Error GoTo ErrHandler
    
    Me.Hide
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub
