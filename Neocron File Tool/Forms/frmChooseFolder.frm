VERSION 5.00
Begin VB.Form frmChooseFolder 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Choose Folder"
   ClientHeight    =   4260
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4575
   Icon            =   "frmChooseFolder.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   284
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   305
   StartUpPosition =   1  'CenterOwner
   Visible         =   0   'False
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      Height          =   315
      Left            =   3360
      TabIndex        =   3
      Top             =   3840
      Width           =   1095
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Default         =   -1  'True
      Height          =   315
      Left            =   2160
      TabIndex        =   2
      Top             =   3840
      Width           =   1095
   End
   Begin VB.DriveListBox drvChooseFolder 
      Height          =   315
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4335
   End
   Begin VB.DirListBox dirChooseFolder 
      Height          =   3240
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   4335
   End
End
Attribute VB_Name = "frmChooseFolder"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
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

Private Sub cmdOK_Click()
    On Error GoTo ErrHandler
    
    frmChooseFolder.Tag = dirChooseFolder.List(dirChooseFolder.ListIndex)
    Me.Hide
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub drvChooseFolder_Change()
    On Error GoTo ErrHandler
    
    On Error Resume Next
    dirChooseFolder.Path = Left(drvChooseFolder.Drive, 2) & "\"
    On Error GoTo ErrHandler
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub
