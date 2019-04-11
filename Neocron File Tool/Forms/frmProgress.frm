VERSION 5.00
Begin VB.Form frmProgress 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Processing..."
   ClientHeight    =   495
   ClientLeft      =   5460
   ClientTop       =   4005
   ClientWidth     =   2415
   ControlBox      =   0   'False
   Icon            =   "frmProgress.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   33
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   161
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Processing.  Please wait..."
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2175
   End
End
Attribute VB_Name = "frmProgress"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
