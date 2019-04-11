VERSION 5.00
Begin VB.Form frmPreferences 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Preferences"
   ClientHeight    =   5595
   ClientLeft      =   2970
   ClientTop       =   1290
   ClientWidth     =   9030
   Icon            =   "frmPreferences.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   373
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   602
   StartUpPosition =   1  'CenterOwner
   Visible         =   0   'False
   Begin VB.Frame fraPaths 
      Caption         =   "Default File Paths"
      Height          =   3855
      Left            =   60
      TabIndex        =   0
      Top             =   0
      Width           =   8895
      Begin VB.CheckBox chkUseGlobalDefaultPath 
         Height          =   255
         Left            =   2160
         TabIndex        =   29
         Top             =   3480
         Width           =   255
      End
      Begin VB.CommandButton cmdDPDefaultPath 
         Caption         =   "..."
         Height          =   285
         Left            =   8490
         TabIndex        =   27
         Top             =   3120
         Width           =   285
      End
      Begin VB.CommandButton cmdDFDefaultPath 
         Caption         =   "..."
         Height          =   285
         Left            =   8490
         TabIndex        =   24
         Top             =   2760
         Width           =   285
      End
      Begin VB.CommandButton cmdDMFDefaultPath 
         Caption         =   "..."
         Height          =   285
         Left            =   8490
         TabIndex        =   21
         Top             =   2400
         Width           =   285
      End
      Begin VB.CommandButton cmdDSFDefaultPath 
         Caption         =   "..."
         Height          =   285
         Left            =   8490
         TabIndex        =   18
         Top             =   2040
         Width           =   285
      End
      Begin VB.CommandButton cmdCPDefaultPath 
         Caption         =   "..."
         Height          =   285
         Left            =   8490
         TabIndex        =   15
         Top             =   1680
         Width           =   285
      End
      Begin VB.CommandButton cmdCFDefaultPath 
         Caption         =   "..."
         Height          =   285
         Left            =   8490
         TabIndex        =   12
         Top             =   1320
         Width           =   285
      End
      Begin VB.CommandButton cmdCMFDefaultPath 
         Caption         =   "..."
         Height          =   285
         Left            =   8490
         TabIndex        =   9
         Top             =   960
         Width           =   285
      End
      Begin VB.CommandButton cmdCSFDefaultPath 
         Caption         =   "..."
         Height          =   285
         Left            =   8490
         TabIndex        =   6
         Top             =   600
         Width           =   285
      End
      Begin VB.TextBox txtDPDefaultPath 
         Height          =   285
         Left            =   2160
         TabIndex        =   26
         Top             =   3120
         Width           =   6255
      End
      Begin VB.TextBox txtDFDefaultPath 
         Height          =   285
         Left            =   2160
         TabIndex        =   23
         Top             =   2760
         Width           =   6255
      End
      Begin VB.TextBox txtDMFDefaultPath 
         Height          =   285
         Left            =   2160
         TabIndex        =   20
         Top             =   2400
         Width           =   6255
      End
      Begin VB.TextBox txtDSFDefaultPath 
         Height          =   285
         Left            =   2160
         TabIndex        =   17
         Top             =   2040
         Width           =   6255
      End
      Begin VB.TextBox txtCPDefaultPath 
         Height          =   285
         Left            =   2160
         TabIndex        =   14
         Top             =   1680
         Width           =   6255
      End
      Begin VB.TextBox txtCFDefaultPath 
         Height          =   285
         Left            =   2160
         TabIndex        =   11
         Top             =   1320
         Width           =   6255
      End
      Begin VB.TextBox txtCMFDefaultPath 
         Height          =   285
         Left            =   2160
         TabIndex        =   8
         Top             =   960
         Width           =   6255
      End
      Begin VB.TextBox txtCSFDefaultPath 
         Height          =   285
         Left            =   2160
         TabIndex        =   5
         Top             =   600
         Width           =   6255
      End
      Begin VB.CommandButton cmdGlobalDefaultPath 
         Caption         =   "..."
         Height          =   285
         Left            =   8490
         TabIndex        =   3
         Top             =   240
         Width           =   285
      End
      Begin VB.TextBox txtGlobalDefaultPath 
         Height          =   285
         Left            =   2160
         TabIndex        =   2
         Top             =   240
         Width           =   6255
      End
      Begin VB.Label lblUseGlobalDefaultPath 
         Caption         =   "Use Global Default Path:"
         Height          =   255
         Left            =   120
         TabIndex        =   28
         Top             =   3480
         Width           =   1935
      End
      Begin VB.Label lblDPDefaultPath 
         Caption         =   "Decompress from .pak:"
         Height          =   255
         Left            =   120
         TabIndex        =   25
         Top             =   3120
         Width           =   1695
      End
      Begin VB.Label lblDFDefaultPath 
         Caption         =   "Decompress Folder:"
         Height          =   255
         Left            =   120
         TabIndex        =   22
         Top             =   2760
         Width           =   1695
      End
      Begin VB.Label lblDMFDefaultPath 
         Caption         =   "Decompress Multi-File:"
         Height          =   255
         Left            =   120
         TabIndex        =   19
         Top             =   2400
         Width           =   1695
      End
      Begin VB.Label lblDSFDefaultPath 
         Caption         =   "Decompress File:"
         Height          =   255
         Left            =   120
         TabIndex        =   16
         Top             =   2040
         Width           =   1695
      End
      Begin VB.Label lblCPDefaultPath 
         Caption         =   "Compress to .pak:"
         Height          =   255
         Left            =   120
         TabIndex        =   13
         Top             =   1680
         Width           =   1695
      End
      Begin VB.Label lblCFDefaultPath 
         Caption         =   "Compress Folder:"
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   1320
         Width           =   1695
      End
      Begin VB.Label lblCMFDefaultPath 
         Caption         =   "Compress Multi-File:"
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   960
         Width           =   1695
      End
      Begin VB.Label lblCSFDefaultPath 
         Caption         =   "Compress File:"
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   600
         Width           =   1695
      End
      Begin VB.Label lblGlobalDefaultPath 
         Caption         =   "Global:"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Frame fraOptions 
      Caption         =   "Options"
      Height          =   1695
      Left            =   60
      TabIndex        =   30
      Top             =   3840
      Width           =   3495
      Begin VB.ComboBox cmbCompressionLevel 
         Height          =   315
         ItemData        =   "frmPreferences.frx":57E2
         Left            =   2160
         List            =   "frmPreferences.frx":5801
         Style           =   2  'Dropdown List
         TabIndex        =   36
         Top             =   960
         Width           =   1215
      End
      Begin VB.TextBox txtDFilePrefix 
         Height          =   285
         Left            =   2160
         TabIndex        =   34
         Top             =   600
         Width           =   1215
      End
      Begin VB.TextBox txtCFilePrefix 
         Height          =   285
         Left            =   2160
         TabIndex        =   32
         Top             =   240
         Width           =   1215
      End
      Begin VB.ComboBox cmbOverwriteFiles 
         Height          =   315
         ItemData        =   "frmPreferences.frx":5844
         Left            =   2160
         List            =   "frmPreferences.frx":5851
         Style           =   2  'Dropdown List
         TabIndex        =   38
         Top             =   1320
         Width           =   1215
      End
      Begin VB.Label lblOverwriteFiles 
         Caption         =   "Overwrite Files:"
         Height          =   255
         Left            =   120
         TabIndex        =   37
         Top             =   1320
         Width           =   1935
      End
      Begin VB.Label lblCompressionLevel 
         Caption         =   "Compression Level:"
         Height          =   255
         Left            =   120
         TabIndex        =   35
         Top             =   960
         Width           =   1935
      End
      Begin VB.Label lblDFilePrefix 
         Caption         =   "Decompressed File Prefix:"
         Height          =   255
         Left            =   120
         TabIndex        =   33
         Top             =   600
         Width           =   1935
      End
      Begin VB.Label lblCFilePrefix 
         Caption         =   "Compressed File Prefix:"
         Height          =   255
         Left            =   120
         TabIndex        =   31
         Top             =   240
         Width           =   1935
      End
   End
   Begin VB.Frame fraAdvanced 
      Caption         =   "Advanced"
      Height          =   1335
      Left            =   3660
      TabIndex        =   39
      Top             =   3840
      Width           =   5295
      Begin VB.CheckBox chkAdvancedSettings 
         Height          =   255
         Left            =   2160
         TabIndex        =   41
         Top             =   240
         Width           =   255
      End
      Begin VB.TextBox txtFileHeader 
         Enabled         =   0   'False
         Height          =   285
         Left            =   2160
         TabIndex        =   44
         Top             =   600
         Width           =   3015
      End
      Begin VB.TextBox txtPAKHeader 
         Enabled         =   0   'False
         Height          =   285
         Left            =   2160
         TabIndex        =   46
         Top             =   960
         Width           =   3015
      End
      Begin VB.CommandButton cmdAdvancedReset 
         Caption         =   "&Reset"
         Height          =   315
         Left            =   4050
         TabIndex        =   42
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label lblAdvancedSettings 
         Caption         =   "Edit Advanced Settings:"
         Height          =   255
         Left            =   120
         TabIndex        =   40
         Top             =   240
         Width           =   1815
      End
      Begin VB.Label lblFileHeader 
         Caption         =   "File Header Information:"
         Height          =   255
         Left            =   120
         TabIndex        =   43
         Top             =   600
         Width           =   1815
      End
      Begin VB.Label lblPAKHeader 
         Caption         =   "PAK Header Information:"
         Height          =   255
         Left            =   120
         TabIndex        =   45
         Top             =   960
         Width           =   1815
      End
   End
   Begin VB.CommandButton cmdAdvancedDefault 
      Caption         =   "&Defaults"
      Height          =   315
      Left            =   3660
      TabIndex        =   47
      Top             =   5205
      Width           =   1095
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Default         =   -1  'True
      Height          =   315
      Left            =   6645
      TabIndex        =   48
      Top             =   5205
      Width           =   1095
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      Height          =   315
      Left            =   7845
      TabIndex        =   49
      Top             =   5205
      Width           =   1095
   End
End
Attribute VB_Name = "frmPreferences"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub chkAdvancedSettings_Click()
    On Error GoTo ErrHandler
    
    Dim myCount As Integer
    
    If chkAdvancedSettings.Value = 1 Then
        myCount = MsgBox("WARNING: Only change the advanced settings if you really" & Chr(13) & "know what you're doing." & Chr(13) & Chr(13) & "Continue?", vbYesNo + vbDefaultButton2 + vbCritical, "WARNING!")
        If myCount = vbYes Then
            txtFileHeader.Enabled = True
            txtPAKHeader.Enabled = True
        Else
            chkAdvancedSettings.Value = 0
        End If
    Else
        txtFileHeader.Enabled = False
        txtPAKHeader.Enabled = False
    End If
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub chkUseGlobalDefaultPath_Click()
    On Error GoTo ErrHandler
    
    If chkUseGlobalDefaultPath.Value = 1 Then
        lblGlobalDefaultPath.Enabled = True
        
        lblCSFDefaultPath.Enabled = False
        lblCMFDefaultPath.Enabled = False
        lblCFDefaultPath.Enabled = False
        lblCPDefaultPath.Enabled = False
        lblDSFDefaultPath.Enabled = False
        lblDMFDefaultPath.Enabled = False
        lblDFDefaultPath.Enabled = False
        lblDPDefaultPath.Enabled = False
    Else
        lblGlobalDefaultPath.Enabled = False
        
        lblCSFDefaultPath.Enabled = True
        lblCMFDefaultPath.Enabled = True
        lblCFDefaultPath.Enabled = True
        lblCPDefaultPath.Enabled = True
        lblDSFDefaultPath.Enabled = True
        lblDMFDefaultPath.Enabled = True
        lblDFDefaultPath.Enabled = True
        lblDPDefaultPath.Enabled = True
    End If
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub cmdAdvancedDefault_Click()
    On Error GoTo ErrHandler
    
    chkAdvancedSettings.Value = 0
    
    txtCFilePrefix.Text = modPreferences.CFilePrefix_Default
    txtDFilePrefix.Text = modPreferences.DFilePrefix_Default
    cmbCompressionLevel.ListIndex = modPreferences.CompressionLevel_Default - 1
    cmbOverwriteFiles.ListIndex = modPreferences.OverwriteFiles_Default
    chkUseGlobalDefaultPath.Value = modPreferences.UseGlobalDefaultPath_Default
    
    txtGlobalDefaultPath.Text = modPreferences.GlobalDefaultPath_Default
    txtCSFDefaultPath.Text = modPreferences.CSFDefaultPath_Default
    txtCMFDefaultPath.Text = modPreferences.CMFDefaultPath_Default
    txtCFDefaultPath.Text = modPreferences.CFDefaultPath_Default
    txtCPDefaultPath.Text = modPreferences.CPDefaultPath_Default
    txtDSFDefaultPath.Text = modPreferences.DSFDefaultPath_Default
    txtDMFDefaultPath.Text = modPreferences.DMFDefaultPath_Default
    txtDFDefaultPath.Text = modPreferences.DFDefaultPath_Default
    txtDPDefaultPath.Text = modPreferences.DPDefaultPath_Default
    
    txtFileHeader.Text = modPreferences.FileHeader_Default
    txtPAKHeader.Text = modPreferences.PAKHeader_Default
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub cmdAdvancedReset_Click()
    On Error GoTo ErrHandler
    
    Dim myCount
    Dim TempStr As String
    
    chkAdvancedSettings.Value = 0
    For myCount = 0 To UBound(modPreferences.FileHeader)
        If Len(Hex(CInt(modPreferences.FileHeader(myCount)))) <> 2 Then TempStr = TempStr & "0"
        TempStr = TempStr & Hex(CInt(modPreferences.FileHeader(myCount)))
    Next myCount
    txtFileHeader.Text = TempStr
    TempStr = ""
    For myCount = 0 To UBound(modPreferences.PAKHeader)
        If Len(Hex(CInt(modPreferences.PAKHeader(myCount)))) <> 2 Then TempStr = TempStr & "0"
        TempStr = TempStr & Hex(CInt(modPreferences.PAKHeader(myCount)))
    Next myCount
    txtPAKHeader.Text = TempStr
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

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

Private Sub cmdCFDefaultPath_Click()
    On Error GoTo ErrHandler
    
    Load frmChooseFolder
    On Error Resume Next
    frmChooseFolder.drvChooseFolder.Drive = Left(txtCFDefaultPath.Text, 2)
    frmChooseFolder.dirChooseFolder.Path = txtCFDefaultPath.Text
    On Error GoTo 0
    frmChooseFolder.Show 1, Me
    If frmChooseFolder.Tag <> "" Then txtCFDefaultPath.Text = frmChooseFolder.Tag
    Unload frmChooseFolder
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub cmdCMFDefaultPath_Click()
    On Error GoTo ErrHandler
    
    Load frmChooseFolder
    On Error Resume Next
    frmChooseFolder.drvChooseFolder.Drive = Left(txtCMFDefaultPath.Text, 2)
    frmChooseFolder.dirChooseFolder.Path = txtCMFDefaultPath.Text
    On Error GoTo 0
    frmChooseFolder.Show 1, Me
    If frmChooseFolder.Tag <> "" Then txtCMFDefaultPath.Text = frmChooseFolder.Tag
    Unload frmChooseFolder
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub cmdCPDefaultPath_Click()
    On Error GoTo ErrHandler
    
    Load frmChooseFolder
    On Error Resume Next
    frmChooseFolder.drvChooseFolder.Drive = Left(txtCPDefaultPath.Text, 2)
    frmChooseFolder.dirChooseFolder.Path = txtCPDefaultPath.Text
    On Error GoTo 0
    frmChooseFolder.Show 1, Me
    If frmChooseFolder.Tag <> "" Then txtCPDefaultPath.Text = frmChooseFolder.Tag
    Unload frmChooseFolder
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub cmdCSFDefaultPath_Click()
    On Error GoTo ErrHandler
    
    Load frmChooseFolder
    On Error Resume Next
    frmChooseFolder.drvChooseFolder.Drive = Left(txtCSFDefaultPath.Text, 2)
    frmChooseFolder.dirChooseFolder.Path = txtCSFDefaultPath.Text
    On Error GoTo 0
    frmChooseFolder.Show 1, Me
    If frmChooseFolder.Tag <> "" Then txtCSFDefaultPath.Text = frmChooseFolder.Tag
    Unload frmChooseFolder
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub cmdDFDefaultPath_Click()
    On Error GoTo ErrHandler
    
    Load frmChooseFolder
    On Error Resume Next
    frmChooseFolder.drvChooseFolder.Drive = Left(txtDFDefaultPath.Text, 2)
    frmChooseFolder.dirChooseFolder.Path = txtDFDefaultPath.Text
    On Error GoTo 0
    frmChooseFolder.Show 1, Me
    If frmChooseFolder.Tag <> "" Then txtDFDefaultPath.Text = frmChooseFolder.Tag
    Unload frmChooseFolder
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub cmdDMFDefaultPath_Click()
    On Error GoTo ErrHandler
    
    Load frmChooseFolder
    On Error Resume Next
    frmChooseFolder.drvChooseFolder.Drive = Left(txtDMFDefaultPath.Text, 2)
    frmChooseFolder.dirChooseFolder.Path = txtDMFDefaultPath.Text
    On Error GoTo 0
    frmChooseFolder.Show 1, Me
    If frmChooseFolder.Tag <> "" Then txtDMFDefaultPath.Text = frmChooseFolder.Tag
    Unload frmChooseFolder
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub cmdDPDefaultPath_Click()
    On Error GoTo ErrHandler
    
    Load frmChooseFolder
    On Error Resume Next
    frmChooseFolder.drvChooseFolder.Drive = Left(txtDPDefaultPath.Text, 2)
    frmChooseFolder.dirChooseFolder.Path = txtDPDefaultPath.Text
    On Error GoTo 0
    frmChooseFolder.Show 1, Me
    If frmChooseFolder.Tag <> "" Then txtDPDefaultPath.Text = frmChooseFolder.Tag
    Unload frmChooseFolder
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub cmdDSFDefaultPath_Click()
    On Error GoTo ErrHandler
    
    Load frmChooseFolder
    On Error Resume Next
    frmChooseFolder.drvChooseFolder.Drive = Left(txtDSFDefaultPath.Text, 2)
    frmChooseFolder.dirChooseFolder.Path = txtDSFDefaultPath.Text
    On Error GoTo 0
    frmChooseFolder.Show 1, Me
    If frmChooseFolder.Tag <> "" Then txtDSFDefaultPath.Text = frmChooseFolder.Tag
    Unload frmChooseFolder
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub cmdGlobalDefaultPath_Click()
    On Error GoTo ErrHandler
    
    Load frmChooseFolder
    On Error Resume Next
    frmChooseFolder.drvChooseFolder.Drive = Left(txtGlobalDefaultPath.Text, 2)
    frmChooseFolder.dirChooseFolder.Path = txtGlobalDefaultPath.Text
    On Error GoTo 0
    frmChooseFolder.Show 1, Me
    If frmChooseFolder.Tag <> "" Then txtGlobalDefaultPath.Text = frmChooseFolder.Tag
    Unload frmChooseFolder
    
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
    
    Dim myCount As Integer
        
    modPreferences.CFilePrefix = txtCFilePrefix.Text
    modPreferences.DFilePrefix = txtDFilePrefix.Text
    modPreferences.CompressionLevel = cmbCompressionLevel.ListIndex + 1
    modPreferences.OverwriteFiles = cmbOverwriteFiles.ListIndex
    modPreferences.UseGlobalDefaultPath = chkUseGlobalDefaultPath.Value
    
    modPreferences.GlobalDefaultPath = txtGlobalDefaultPath.Text
    modPreferences.CSFDefaultPath = txtCSFDefaultPath.Text
    modPreferences.CMFDefaultPath = txtCMFDefaultPath.Text
    modPreferences.CFDefaultPath = txtCFDefaultPath.Text
    modPreferences.CPDefaultPath = txtCPDefaultPath.Text
    modPreferences.DSFDefaultPath = txtDSFDefaultPath.Text
    modPreferences.DMFDefaultPath = txtDMFDefaultPath.Text
    modPreferences.DFDefaultPath = txtDFDefaultPath.Text
    modPreferences.DPDefaultPath = txtDPDefaultPath.Text
    
    ReDim modPreferences.FileHeader(Len(txtFileHeader.Text) / 2 - 1)
    For myCount = 0 To Len(txtFileHeader.Text) / 2 - 1
        modPreferences.FileHeader(myCount) = "&H" & Mid$(txtFileHeader.Text, myCount * 2 + 1, 2)
    Next myCount
    ReDim modPreferences.PAKHeader(Len(txtPAKHeader.Text) / 2 - 1)
    For myCount = 0 To Len(txtPAKHeader.Text) / 2 - 1
        modPreferences.PAKHeader(myCount) = "&H" & Mid$(txtPAKHeader.Text, myCount * 2 + 1, 2)
    Next myCount
    
    Call WriteINISettings
    
    Me.Hide
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub Form_Load()
    On Error GoTo ErrHandler
    
    Dim myCount As Integer
    
    txtCFilePrefix.Text = modPreferences.CFilePrefix
    txtDFilePrefix.Text = modPreferences.DFilePrefix
    cmbCompressionLevel.ListIndex = modPreferences.CompressionLevel - 1
    cmbOverwriteFiles.ListIndex = modPreferences.OverwriteFiles
    chkUseGlobalDefaultPath.Value = modPreferences.UseGlobalDefaultPath
    
    txtGlobalDefaultPath.Text = modPreferences.GlobalDefaultPath
    txtCSFDefaultPath.Text = modPreferences.CSFDefaultPath
    txtCMFDefaultPath.Text = modPreferences.CMFDefaultPath
    txtCFDefaultPath.Text = modPreferences.CFDefaultPath
    txtCPDefaultPath.Text = modPreferences.CPDefaultPath
    txtDSFDefaultPath.Text = modPreferences.DSFDefaultPath
    txtDMFDefaultPath.Text = modPreferences.DMFDefaultPath
    txtDFDefaultPath.Text = modPreferences.DFDefaultPath
    txtDPDefaultPath.Text = modPreferences.DPDefaultPath
    
    For myCount = 0 To UBound(modPreferences.FileHeader)
        If Len(Hex(CInt(modPreferences.FileHeader(myCount)))) <> 2 Then txtFileHeader.Text = txtFileHeader.Text & "0"
        txtFileHeader.Text = txtFileHeader.Text & Hex(CInt(modPreferences.FileHeader(myCount)))
    Next myCount
    For myCount = 0 To UBound(modPreferences.PAKHeader)
        If Len(Hex(CInt(modPreferences.PAKHeader(myCount)))) <> 2 Then txtPAKHeader.Text = txtPAKHeader.Text & "0"
        txtPAKHeader.Text = txtPAKHeader.Text & Hex(CInt(modPreferences.PAKHeader(myCount)))
    Next myCount
    
    Call chkUseGlobalDefaultPath_Click
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub txtFileHeader_LostFocus()
    On Error GoTo ErrHandler
    
    txtFileHeader.Text = Trim$(txtFileHeader.Text)
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub txtPAKHeader_LostFocus()
    On Error GoTo ErrHandler
    
    txtPAKHeader.Text = Trim$(txtPAKHeader.Text)
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub
