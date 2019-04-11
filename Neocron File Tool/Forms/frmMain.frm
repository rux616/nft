VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "nft"
   ClientHeight    =   3375
   ClientLeft      =   150
   ClientTop       =   540
   ClientWidth     =   9015
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   225
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   601
   StartUpPosition =   2  'CenterScreen
   Begin VB.ListBox lstInput2 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1980
      IntegralHeight  =   0   'False
      ItemData        =   "frmMain.frx":57E2
      Left            =   1200
      List            =   "frmMain.frx":5801
      MultiSelect     =   2  'Extended
      TabIndex        =   6
      ToolTipText     =   "Order of data is: FileName, Compressed Size, Compression Ratio, Uncompressed Size.  Double click on an item to get more info."
      Top             =   840
      Visible         =   0   'False
      Width           =   7335
   End
   Begin VB.TextBox txtOutput 
      Height          =   285
      Left            =   1200
      TabIndex        =   4
      Text            =   "txtOutput"
      Top             =   480
      Visible         =   0   'False
      Width           =   7335
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      Height          =   315
      Left            =   4560
      TabIndex        =   10
      Top             =   2940
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.CommandButton cmdGo 
      Caption         =   "&Go!"
      Default         =   -1  'True
      Height          =   315
      Left            =   3360
      TabIndex        =   9
      Top             =   2940
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.ListBox lstOutput 
      Height          =   1035
      ItemData        =   "frmMain.frx":5883
      Left            =   1200
      List            =   "frmMain.frx":5885
      TabIndex        =   8
      Top             =   1200
      Visible         =   0   'False
      Width           =   7335
   End
   Begin VB.TextBox txtInput 
      Height          =   285
      Left            =   1200
      TabIndex        =   0
      Text            =   "txtInput"
      Top             =   120
      Visible         =   0   'False
      Width           =   7335
   End
   Begin VB.CommandButton cmdOutput 
      Caption         =   "..."
      Height          =   285
      Left            =   8640
      TabIndex        =   7
      Top             =   480
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.CommandButton cmdInput 
      Caption         =   "..."
      Height          =   285
      Left            =   8640
      TabIndex        =   3
      Top             =   120
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.ListBox lstInput 
      Height          =   1035
      Left            =   1200
      TabIndex        =   2
      Top             =   120
      Visible         =   0   'False
      Width           =   7335
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000010&
      X1              =   0
      X2              =   600
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Label lblOutput 
      Caption         =   "lblOutput"
      Height          =   285
      Left            =   120
      TabIndex        =   5
      Top             =   480
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Label lblInput 
      Caption         =   "lblInput"
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuAbout 
         Caption         =   "&About..."
      End
      Begin VB.Menu mnuSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPreferences 
         Caption         =   "&Preferences..."
      End
      Begin VB.Menu mnuSep2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "&Exit"
      End
      Begin VB.Menu mnuSep5 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuTest 
         Caption         =   "Test"
         Visible         =   0   'False
      End
   End
   Begin VB.Menu mnuDecompress 
      Caption         =   "&Decompress"
      Begin VB.Menu mnuDSF 
         Caption         =   "&Single File..."
         Shortcut        =   {F1}
      End
      Begin VB.Menu mnuDMF 
         Caption         =   "&Multi-File..."
         Shortcut        =   {F2}
      End
      Begin VB.Menu mnuDF 
         Caption         =   "&Folder..."
         Shortcut        =   {F3}
      End
      Begin VB.Menu mnuSep3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuDP 
         Caption         =   "From .&pak..."
         Shortcut        =   {F4}
      End
   End
   Begin VB.Menu mnuCompress 
      Caption         =   "&Compress"
      Begin VB.Menu mnuCSF 
         Caption         =   "&Single File..."
         Shortcut        =   {F5}
      End
      Begin VB.Menu mnuCMF 
         Caption         =   "&Multi-File..."
         Shortcut        =   {F6}
      End
      Begin VB.Menu mnuCF 
         Caption         =   "&Folder..."
         Shortcut        =   {F7}
      End
      Begin VB.Menu mnuSep4 
         Caption         =   "-"
      End
      Begin VB.Menu mnuCP 
         Caption         =   "To .&pak..."
         Shortcut        =   {F8}
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim cmnInput As OPENFILENAME
Dim cmnOutput As OPENFILENAME
Const OFN_Buffer As Long = 4094

Const AppName As String = "nft"
Const VersionNumber As Integer = 27

Private Sub cmdCancel_Click()
    On Error GoTo ErrHandler
    
    Call DefaultCMN
    Call DefaultWindowSize
    Call CenterWindow(Me)
    Call DefaultControlState
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub cmdGo_Click()
    On Error GoTo ErrHandler
    
    Dim DoOverwrite As Integer
    Dim DoOverwriteAll As Integer
    Dim ShowDone As Boolean
    Dim myCount As Long
    Dim ShowNotOverwritten As Boolean
    Dim ShowInvalid As Boolean
    Dim GoodFile As Boolean
    Dim InfoPAKFile() As Variant
    
    Load frmProgress
    frmProgress.Show 0, Me
    frmProgress.Refresh
    
    Select Case Me.Tag
        Case 1
            'COMPLETE
            If txtInput.Text <> "" And txtOutput.Text <> "" Then
                If ValidateFile(txtInput.Text) Then
                    If FileExists(txtOutput.Text) Then
                        Select Case modPreferences.OverwriteFiles
                            Case 0
                                MsgBox "The file: " & txtOutput.Text & Chr(13) & "already exists... It was not overwritten per your preferences.", vbInformation, "File Exists"
                            Case 1
                                Kill (txtOutput.Text)
                                Call SaveByteToFile(txtOutput.Text, Uncompress(GrabCData(txtInput.Text), GrabOriginalSize(txtInput.Text)))
                            Case 2
                                DoOverwrite = MsgBox("The file: " & txtOutput.Text & Chr(13) & "already exists... Ok to overwrite?", vbDefaultButton2 + vbQuestion + vbYesNo, "File Exists")
                                If DoOverwrite = vbYes Then
                                    Call SaveByteToFile(txtOutput.Text, Uncompress(GrabCData(txtInput.Text), GrabOriginalSize(txtInput.Text)))
                                End If
                        End Select
                    Else
                        If Not FolderExists(Left(txtOutput.Text, InStrRev(txtOutput.Text, "\"))) Then _
                            Call CreateFolder(Left(txtOutput.Text, 3), Left(txtOutput.Text, InStrRev(txtOutput.Text, "\")))
                        Call SaveByteToFile(txtOutput.Text, Uncompress(GrabCData(txtInput.Text), GrabOriginalSize(txtInput.Text)))
                    End If
                    ShowDone = True
                Else
                    MsgBox txtInput.Text & Chr$(13) & "is not a valid file.", vbCritical, "Invalid File"
                End If
            End If
        Case 2
            'COMPLETE
            If lstInput.ListCount > 0 Then
                For myCount = 0 To lstInput.ListCount - 1
                    If ValidateFile(lstInput.List(myCount)) Then
                        If FileExists(lstOutput.List(myCount)) And DoOverwriteAll <> vbYes Then
                            Select Case modPreferences.OverwriteFiles
                                Case 0
                                    ShowNotOverwritten = True
                                Case 1
                                    Kill (lstOutput.List(myCount))
                                    Call SaveByteToFile(lstOutput.List(myCount), Uncompress(GrabCData(lstInput.List(myCount)), GrabOriginalSize(lstInput.List(myCount))))
                                Case 2
                                    DoOverwrite = MsgBox("The file: " & lstOutput.List(myCount) & Chr(13) & "already exists... Ok to overwrite?", vbDefaultButton2 + vbQuestion + vbYesNo, "File Exists")
                                    If DoOverwrite = vbYes Then
                                        If DoOverwriteAll <> vbYes And DoOverwriteAll <> vbNo Then DoOverwriteAll = MsgBox("Would you like to overwrite other existing files if found?", vbDefaultButton2 + vbQuestion + vbYesNo, "Overwrite All")
                                        Kill (lstOutput.List(myCount))
                                        Call SaveByteToFile(lstOutput.List(myCount), Uncompress(GrabCData(lstInput.List(myCount)), GrabOriginalSize(lstInput.List(myCount))))
                                    End If
                            End Select
                        Else
                            If Not FolderExists(Left(lstOutput.List(myCount), InStrRev(lstOutput.List(myCount), "\"))) Then _
                                Call CreateFolder(Left(lstOutput.List(myCount), 3), Left(lstOutput.List(myCount), InStrRev(lstOutput.List(myCount), "\")))
                            Call SaveByteToFile(lstOutput.List(myCount), Uncompress(GrabCData(lstInput.List(myCount)), GrabOriginalSize(lstInput.List(myCount))))
                        End If
                        ShowDone = True
                    Else
                        ShowInvalid = True
                    End If
                Next myCount
            End If
        Case 3
            'COMPLETE
            lstInput.Clear
            lstOutput.Clear
            Call RecurseFolderList(txtInput.Text)
            For myCount = lstInput.ListCount - 1 To 0 Step -1
                GoodFile = True
                If InStrRev(lstInput.List(myCount), "\" & modPreferences.CFilePrefix) <> InStrRev(lstInput.List(myCount), "\") Then GoodFile = False
                If InStrRev(lstInput.List(myCount), ".act") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".bmp") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".bsp") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".dat") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".def") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".fx") = Len(lstInput.List(myCount)) - 3 Or _
                   InStrRev(lstInput.List(myCount), ".ini") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".lua") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".tsc") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".txt") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".wav") = Len(lstInput.List(myCount)) - 4 Then _
                   GoodFile = False
                If Not ValidateFile(lstInput.List(myCount)) Then GoodFile = False
                If GoodFile = False Then lstInput.RemoveItem (myCount)
            Next myCount
            For myCount = 0 To lstInput.ListCount - 1
                lstOutput.AddItem txtOutput.Text & Mid(lstInput.List(myCount), Len(txtInput.Text) + 1, InStrRev(lstInput.List(myCount), "\" & modPreferences.CFilePrefix) - Len(txtInput.Text)) & modPreferences.DFilePrefix & Right(lstInput.List(myCount), Len(lstInput.List(myCount)) - InStrRev(lstInput.List(myCount), "\" & modPreferences.CFilePrefix) - Len(modPreferences.CFilePrefix))
            Next myCount
            If lstInput.ListCount > 0 Then
                For myCount = 0 To lstInput.ListCount - 1
                    If FileExists(lstOutput.List(myCount)) And DoOverwriteAll <> vbYes Then
                        Select Case modPreferences.OverwriteFiles
                            Case 0
                                ShowNotOverwritten = True
                            Case 1
                                Kill (lstOutput.List(myCount))
                                Call SaveByteToFile(lstOutput.List(myCount), Uncompress(GrabCData(lstInput.List(myCount)), GrabOriginalSize(lstInput.List(myCount))))
                            Case 2
                                DoOverwrite = MsgBox("The file: " & lstOutput.List(myCount) & Chr(13) & "already exists... Ok to overwrite?", vbDefaultButton2 + vbQuestion + vbYesNo, "File Exists")
                                If DoOverwrite = vbYes Then
                                    If DoOverwriteAll <> vbYes And DoOverwriteAll <> vbNo Then DoOverwriteAll = MsgBox("Would you like to overwrite other existing files if found?", vbDefaultButton2 + vbQuestion + vbYesNo, "Overwrite All")
                                    Kill (lstOutput.List(myCount))
                                    Call SaveByteToFile(lstOutput.List(myCount), Uncompress(GrabCData(lstInput.List(myCount)), GrabOriginalSize(lstInput.List(myCount))))
                                End If
                        End Select
                    Else
                        If Not FolderExists(Left(lstOutput.List(myCount), InStrRev(lstOutput.List(myCount), "\"))) Then _
                            Call CreateFolder(Left(lstOutput.List(myCount), 3), Left(lstOutput.List(myCount), InStrRev(lstOutput.List(myCount), "\")))
                        Call SaveByteToFile(lstOutput.List(myCount), Uncompress(GrabCData(lstInput.List(myCount)), GrabOriginalSize(lstInput.List(myCount))))
                    End If
                    ShowDone = True
                Next myCount
            End If
        Case 4
            'COMPLETE
            If txtInput.Text <> "" And lstInput2.ListCount > 0 Then
                If ValidatePAK(txtInput.Text) Then
                    For myCount = 0 To lstInput2.ListCount - 1
                        If lstInput2.Selected(myCount) = True Then
                            InfoPAKFile = GetPAKFileInfo(txtInput.Text, myCount + 1)
                            If FileExists(txtOutput.Text & "\" & CStr(InfoPAKFile(0))) And DoOverwriteAll <> vbYes Then
                                Select Case modPreferences.OverwriteFiles
                                    Case 0
                                        ShowNotOverwritten = True
                                    Case 1
                                        Kill (txtOutput.Text & "\" & CStr(InfoPAKFile(0)))
                                        Call SaveByteToFile(txtOutput.Text & "\" & CStr(InfoPAKFile(0)), Uncompress(GrabCData2(txtInput.Text, CLng(InfoPAKFile(7)), CLng(InfoPAKFile(2))), CLng(InfoPAKFile(4))))
                                    Case 2
                                        DoOverwrite = MsgBox("The file: " & txtOutput.Text & "\" & CStr(InfoPAKFile(0)) & Chr(13) & "already exists... Ok to overwrite?", vbDefaultButton2 + vbQuestion + vbYesNo, "File Exists")
                                        If DoOverwrite = vbYes Then
                                            If DoOverwriteAll <> vbYes And DoOverwriteAll <> vbNo Then DoOverwriteAll = MsgBox("Would you like to overwrite other existing files if found?", vbDefaultButton2 + vbQuestion + vbYesNo, "Overwrite All")
                                            Kill (txtOutput.Text & "\" & CStr(InfoPAKFile(0)))
                                            Call SaveByteToFile(txtOutput.Text & "\" & CStr(InfoPAKFile(0)), Uncompress(GrabCData2(txtInput.Text, CLng(InfoPAKFile(7)), CLng(InfoPAKFile(2))), CLng(InfoPAKFile(4))))
                                        End If
                                End Select
                            Else
                                If Not FolderExists(Left(txtOutput.Text & "\" & CStr(InfoPAKFile(0)), InStrRev(txtOutput.Text & "\" & CStr(InfoPAKFile(0)), "\"))) Then _
                                    Call CreateFolder(Left(txtOutput.Text & "\" & CStr(InfoPAKFile(0)), 3), Left(txtOutput.Text & "\" & CStr(InfoPAKFile(0)), InStrRev(txtOutput.Text & "\" & CStr(InfoPAKFile(0)), "\")))
                                Call SaveByteToFile(txtOutput.Text & "\" & CStr(InfoPAKFile(0)), Uncompress(GrabCData2(txtInput.Text, CLng(InfoPAKFile(7)), CLng(InfoPAKFile(2))), CLng(InfoPAKFile(4))))
                            End If
                            ShowDone = True
                        End If
                    Next myCount
                End If
            End If
        Case 5
            'COMPLETE
            If txtInput.Text <> "" And txtOutput.Text <> "" Then
                If FileExists(txtOutput.Text) Then
                    Select Case modPreferences.OverwriteFiles
                        Case 0
                            MsgBox "The file: " & txtOutput.Text & Chr(13) & "already exists... It was not overwritten per your preferences.", vbInformation, "File Exists"
                        Case 1
                            Kill (txtOutput.Text)
                            Call SaveByteToFile(txtOutput.Text, modPreferences.FileHeader, 1)
                            Call SaveLongToFile(txtOutput.Text, FileLen(txtInput.Text), UBound(modPreferences.FileHeader) + 2)
                            Call SaveByteToFile(txtOutput.Text, Compress(GrabUData(txtInput.Text)), UBound(modPreferences.FileHeader) + 2 + 4)
                        Case 2
                            DoOverwrite = MsgBox("The file: " & txtOutput & Chr(13) & "already exists... Ok to overwrite?", vbDefaultButton2 + vbQuestion + vbYesNo, "File Exists")
                            If DoOverwrite = vbYes Then
                                Call SaveByteToFile(txtOutput.Text, modPreferences.FileHeader, 1)
                                Call SaveLongToFile(txtOutput.Text, FileLen(txtInput.Text), UBound(modPreferences.FileHeader) + 2)
                                Call SaveByteToFile(txtOutput.Text, Compress(GrabUData(txtInput.Text)), UBound(modPreferences.FileHeader) + 2 + 4)
                            End If
                    End Select
                Else
                    If Not FolderExists(Left(txtOutput.Text, InStrRev(txtOutput.Text, "\"))) Then _
                        Call CreateFolder(Left(txtOutput.Text, 3), Left(txtOutput.Text, InStrRev(txtOutput.Text, "\")))
                    Call SaveByteToFile(txtOutput.Text, modPreferences.FileHeader, 1)
                    Call SaveLongToFile(txtOutput.Text, FileLen(txtInput.Text), UBound(modPreferences.FileHeader) + 2)
                    Call SaveByteToFile(txtOutput.Text, Compress(GrabUData(txtInput.Text)), UBound(modPreferences.FileHeader) + 2 + 4)
                End If
                ShowDone = True
            End If
        Case 6
            'COMPLETE
            If lstInput.ListCount > 0 Then
                For myCount = 0 To lstInput.ListCount - 1
                    If FileExists(lstOutput.List(myCount)) And DoOverwriteAll <> vbYes Then
                        Select Case modPreferences.OverwriteFiles
                            Case 0
                                ShowNotOverwritten = True
                            Case 1
                                Kill (lstOutput.List(myCount))
                                Call SaveByteToFile(lstOutput.List(myCount), modPreferences.FileHeader, 1)
                                Call SaveLongToFile(lstOutput.List(myCount), FileLen(lstInput.List(myCount)), UBound(modPreferences.FileHeader) + 2)
                                Call SaveByteToFile(lstOutput.List(myCount), Compress(GrabUData(lstInput.List(myCount))), UBound(modPreferences.FileHeader) + 2 + 4)
                            Case 2
                                DoOverwrite = MsgBox("The file: " & lstOutput.List(myCount) & Chr(13) & "already exists... Ok to overwrite?", vbDefaultButton2 + vbQuestion + vbYesNo, "File Exists")
                                If DoOverwrite = vbYes Then
                                    If DoOverwriteAll <> vbYes And DoOverwriteAll <> vbNo Then DoOverwriteAll = MsgBox("Would you like to overwrite other existing files if found?", vbDefaultButton2 + vbQuestion + vbYesNo, "Overwrite All")
                                    Kill (lstOutput.List(myCount))
                                    Call SaveByteToFile(lstOutput.List(myCount), modPreferences.FileHeader, 1)
                                    Call SaveLongToFile(lstOutput.List(myCount), FileLen(lstInput.List(myCount)), UBound(modPreferences.FileHeader) + 2)
                                    Call SaveByteToFile(lstOutput.List(myCount), Compress(GrabUData(lstInput.List(myCount))), UBound(modPreferences.FileHeader) + 2 + 4)
                                End If
                        End Select
                    Else
                        If Not FolderExists(Left(lstOutput.List(myCount), InStrRev(lstOutput.List(myCount), "\"))) Then _
                            Call CreateFolder(Left(lstOutput.List(myCount), 3), Left(lstOutput.List(myCount), InStrRev(lstOutput.List(myCount), "\")))
                        Call SaveByteToFile(lstOutput.List(myCount), modPreferences.FileHeader, 1)
                        Call SaveLongToFile(lstOutput.List(myCount), FileLen(lstInput.List(myCount)), UBound(modPreferences.FileHeader) + 2)
                        Call SaveByteToFile(lstOutput.List(myCount), Compress(GrabUData(lstInput.List(myCount))), UBound(modPreferences.FileHeader) + 2 + 4)
                    End If
                    ShowDone = True
                Next myCount
            End If
        Case 7
            'COMPLETE
            lstInput.Clear
            lstOutput.Clear
            Call RecurseFolderList(txtInput.Text)
            For myCount = lstInput.ListCount - 1 To 0 Step -1
                GoodFile = True
                If InStrRev(lstInput.List(myCount), ".act") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".bmp") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".bsp") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".dat") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".def") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".fx") = Len(lstInput.List(myCount)) - 3 Or _
                   InStrRev(lstInput.List(myCount), ".ini") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".lua") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".tsc") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".txt") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".wav") = Len(lstInput.List(myCount)) - 4 Then _
                   GoodFile = False
                If GoodFile = False Then lstInput.RemoveItem (myCount)
            Next myCount
            For myCount = 0 To lstInput.ListCount - 1
                lstOutput.AddItem txtOutput.Text & Mid(lstInput.List(myCount), Len(txtInput.Text) + 1, InStrRev(lstInput.List(myCount), "\") - Len(txtInput.Text)) & modPreferences.CFilePrefix & IIf(InStr(1, lstInput.List(myCount), "\" & modPreferences.DFilePrefix) = InStrRev(lstInput.List(myCount), "\"), Right(lstInput.List(myCount), Len(lstInput.List(myCount)) - InStrRev(lstInput.List(myCount), "\") - Len(modPreferences.DFilePrefix)), Right(lstInput.List(myCount), Len(lstInput.List(myCount)) - InStrRev(lstInput.List(myCount), "\"))) 'Right(lstInput.List(myCount), Len(lstInput.List(myCount)) - InStrRev(lstInput.List(myCount), "\"))
            Next myCount
            If lstInput.ListCount > 0 Then
                For myCount = 0 To lstInput.ListCount - 1
                    If FileExists(lstOutput.List(myCount)) And DoOverwriteAll <> vbYes Then
                        Select Case modPreferences.OverwriteFiles
                            Case 0
                                ShowNotOverwritten = True
                            Case 1
                                Kill (lstOutput.List(myCount))
                                Call SaveByteToFile(lstOutput.List(myCount), modPreferences.FileHeader, 1)
                                Call SaveLongToFile(lstOutput.List(myCount), FileLen(lstInput.List(myCount)), UBound(modPreferences.FileHeader) + 2)
                                Call SaveByteToFile(lstOutput.List(myCount), Compress(GrabUData(lstInput.List(myCount))), UBound(modPreferences.FileHeader) + 2 + 4)
                            Case 2
                                DoOverwrite = MsgBox("The file: " & lstOutput.List(myCount) & Chr(13) & "already exists... Ok to overwrite?", vbDefaultButton2 + vbQuestion + vbYesNo, "File Exists")
                                If DoOverwrite = vbYes Then
                                    If DoOverwriteAll <> vbYes And DoOverwriteAll <> vbNo Then DoOverwriteAll = MsgBox("Would you like to overwrite other existing files if found?", vbDefaultButton2 + vbQuestion + vbYesNo, "Overwrite All")
                                    Kill (lstOutput.List(myCount))
                                    Call SaveByteToFile(lstOutput.List(myCount), modPreferences.FileHeader, 1)
                                    Call SaveLongToFile(lstOutput.List(myCount), FileLen(lstInput.List(myCount)), UBound(modPreferences.FileHeader) + 2)
                                    Call SaveByteToFile(lstOutput.List(myCount), Compress(GrabUData(lstInput.List(myCount))), UBound(modPreferences.FileHeader) + 2 + 4)
                                End If
                        End Select
                    Else
                        If Not FolderExists(Left(lstOutput.List(myCount), InStrRev(lstOutput.List(myCount), "\"))) Then _
                            Call CreateFolder(Left(lstOutput.List(myCount), 3), Left(lstOutput.List(myCount), InStrRev(lstOutput.List(myCount), "\")))
                        Call SaveByteToFile(lstOutput.List(myCount), modPreferences.FileHeader, 1)
                        Call SaveLongToFile(lstOutput.List(myCount), FileLen(lstInput.List(myCount)), UBound(modPreferences.FileHeader) + 2)
                        Call SaveByteToFile(lstOutput.List(myCount), Compress(GrabUData(lstInput.List(myCount))), UBound(modPreferences.FileHeader) + 2 + 4)
                    End If
                    ShowDone = True
                Next myCount
            End If
        Case 8
            'COMPLETE
            lstInput.Clear
            lstOutput.Clear
            Call RecurseFolderList(txtInput.Text)
            For myCount = lstInput.ListCount - 1 To 0 Step -1
                GoodFile = True
                If InStrRev(lstInput.List(myCount), ".act") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".bmp") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".bsp") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".dat") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".def") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".fx") = Len(lstInput.List(myCount)) - 3 Or _
                   InStrRev(lstInput.List(myCount), ".ini") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".lua") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".tsc") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".txt") = Len(lstInput.List(myCount)) - 4 Or _
                   InStrRev(lstInput.List(myCount), ".wav") = Len(lstInput.List(myCount)) - 4 Then _
                   GoodFile = False
                If GoodFile = False Then lstInput.RemoveItem (myCount)
            Next myCount
            For myCount = 0 To lstInput.ListCount - 1
                lstOutput.AddItem Right(lstInput.List(myCount), Len(lstInput.List(myCount)) - Len(txtInput.Text) - 1)
            Next myCount
            If FileExists(txtOutput.Text) Then
                Select Case modPreferences.OverwriteFiles
                    Case 0
                        MsgBox "The file: " & txtOutput.Text & Chr(13) & "already exists... It was not overwritten per your preferences.", vbInformation, "File Exists"
                    Case 1
                        Kill (txtOutput.Text)
                        Call MakePAK(txtOutput.Text)
                    Case 2
                        DoOverwrite = MsgBox("The file: " & txtOutput.Text & Chr(13) & "already exists... Ok to overwrite?", vbDefaultButton2 + vbQuestion + vbYesNo, "File Exists")
                        If DoOverwrite = vbYes Then
                            Call MakePAK(txtOutput.Text)
                        End If
                End Select
            Else
                If Not FolderExists(Left(txtOutput.Text, InStrRev(txtOutput.Text, "\"))) Then _
                    Call CreateFolder(Left(txtOutput.Text, 3), Left(txtOutput.Text, InStrRev(txtOutput.Text, "\")))
                Call MakePAK(txtOutput.Text)
            End If
            ShowDone = True
    End Select
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
    frmProgress.Hide
    Unload frmProgress
    
    If ShowNotOverwritten Then MsgBox "At least one file already exists and was not overwritten due to your preferences.", vbInformation, "File Exists"
    If ShowInvalid Then MsgBox "At least one file was invalid.", vbExclamation, "Invalid File Warning"
    If ShowDone Then
        Beep
        Load frmDone
        frmDone.Show 1, Me
        Unload frmDone
    End If
End Sub

Private Sub cmdInput_Click()
    On Error GoTo ErrHandler
    
    Dim PathVar As String
    Dim TempPath As String
    Dim TempFileName As String
    Dim myCount As Long
    
    cmnInput.FileName = Space$(OFN_Buffer)
    
    Select Case Me.Tag
        Case 1
            'COMPLETE OFN
            If GetOpenFileName(cmnInput) Then
                txtInput.Text = cmnInput.FileName
                PathVar = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.DSFDefaultPath)
                txtOutput.Text = PathVar & "\" & modPreferences.DFilePrefix & IIf(InStrRev(txtInput.Text, "\" & modPreferences.CFilePrefix) = InStrRev(txtInput.Text, "\"), Right(txtInput.Text, Len(txtInput.Text) - InStrRev(txtInput.Text, "\") - Len(modPreferences.CFilePrefix)), Right(txtInput.Text, Len(txtInput.Text) - InStrRev(txtInput.Text, "\")))
            End If
        Case 2
            'COMPLETE OFN
            If GetOpenFileName(cmnInput) Then
                lstInput.Clear
                lstOutput.Clear
                TempFileName = Trim(cmnInput.FileName)
                If InStr(1, TempFileName, Chr(0)) = InStrRev(TempFileName, Chr(0) & Chr(0)) Then _
                    TempFileName = Left(TempFileName, InStrRev(TempFileName, "\") - 1) & Chr(0) & Right(TempFileName, Len(TempFileName) - InStrRev(TempFileName, "\"))
                TempPath = Left(TempFileName, InStr(1, TempFileName, Chr(0)) - 1)
                PathVar = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.DMFDefaultPath)
                TempFileName = Mid(TempFileName, Len(TempPath) + 2, Len(TempFileName) - Len(TempPath) - 2)
                Do
                    lstInput.AddItem TempPath & "\" & Left(TempFileName, InStr(1, TempFileName, Chr(0)))
                    lstOutput.AddItem PathVar & "\" & modPreferences.DFilePrefix & Right(TempFileName, Len(TempFileName) - InStrRev(TempFileName, "\") - Len(modPreferences.CFilePrefix))
                    TempFileName = Right(TempFileName, Len(TempFileName) - InStr(1, TempFileName, Chr(0)))
                Loop While Len(TempFileName) > 0
            End If
        Case 3
            'COMPLETE
            Load frmChooseFolder
            On Error Resume Next
            If txtInput.Text = "" Then
                frmChooseFolder.drvChooseFolder.Drive = Left(IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.DFDefaultPath), 2)
                frmChooseFolder.dirChooseFolder.Path = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.DFDefaultPath)
            Else
                frmChooseFolder.drvChooseFolder.Drive = Left(txtInput.Text, 2)
                frmChooseFolder.dirChooseFolder.Path = txtInput.Text
            End If
            On Error GoTo ErrHandler
            frmChooseFolder.Show 1, Me
            If frmChooseFolder.Tag <> "" Then
                txtInput.Text = frmChooseFolder.Tag
                If txtOutput.Text = "" Then
                    txtOutput.Text = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.DFDefaultPath)
                End If
            End If
            Unload frmChooseFolder
        Case 4
            'COMPLETE OFN
            cmnInput.DefaultExtension = "pak"
            If GetOpenFileName(cmnInput) Then
                lstInput2.Clear
                txtInput.Text = cmnInput.FileName
                txtOutput.Text = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.DPDefaultPath)
                Call ReadPAKTOC(txtInput.Text)
            End If
            cmnInput.DefaultExtension = ""
        Case 5
            'COMPLETE OFN
            If GetOpenFileName(cmnInput) Then
                txtInput.Text = cmnInput.FileName
                PathVar = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.CSFDefaultPath)
                txtOutput.Text = PathVar & "\" & modPreferences.CFilePrefix & IIf(InStrRev(txtInput.Text, "\" & modPreferences.DFilePrefix) = InStrRev(txtInput.Text, "\"), Right(txtInput.Text, Len(txtInput.Text) - InStrRev(txtInput.Text, "\") - Len(modPreferences.DFilePrefix)), Right(txtInput.Text, Len(txtInput.Text) - InStrRev(txtInput.Text, "\")))
            End If
        Case 6
            'COMPLETE OFN
            If GetOpenFileName(cmnInput) Then
                lstInput.Clear
                lstOutput.Clear
                TempFileName = Trim(cmnInput.FileName)
                If InStr(1, TempFileName, Chr(0)) = InStrRev(TempFileName, Chr(0) & Chr(0)) Then _
                    TempFileName = Left(TempFileName, InStrRev(TempFileName, "\") - 1) & Chr(0) & Right(TempFileName, Len(TempFileName) - InStrRev(TempFileName, "\"))
                TempPath = Left(TempFileName, InStr(1, TempFileName, Chr(0)) - 1)
                PathVar = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.CMFDefaultPath)
                TempFileName = Mid(TempFileName, Len(TempPath) + 2, Len(TempFileName) - Len(TempPath) - 2)
                Do
                    lstInput.AddItem TempPath & "\" & Left(TempFileName, InStr(1, TempFileName, Chr(0)))
                    lstOutput.AddItem PathVar & "\" & modPreferences.CFilePrefix & IIf(InStr(1, Left(TempFileName, InStr(1, TempFileName, Chr(0))), modPreferences.DFilePrefix) = 1, Right(Left(TempFileName, InStr(1, TempFileName, Chr(0))), Len(Left(TempFileName, InStr(1, TempFileName, Chr(0)))) - Len(modPreferences.DFilePrefix)), Left(TempFileName, InStr(1, TempFileName, Chr(0))))
                    TempFileName = Right(TempFileName, Len(TempFileName) - InStr(1, TempFileName, Chr(0)))
                Loop While Len(TempFileName) > 0
            End If
        Case 7
            'COMPLETE
            Load frmChooseFolder
            On Error Resume Next
            If txtInput.Text = "" Then
                frmChooseFolder.drvChooseFolder.Drive = Left(IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.CFDefaultPath), 2)
                frmChooseFolder.dirChooseFolder.Path = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.CFDefaultPath)
            Else
                frmChooseFolder.drvChooseFolder.Drive = Left(txtInput.Text, 2)
                frmChooseFolder.dirChooseFolder.Path = txtInput.Text
            End If
            On Error GoTo ErrHandler
            frmChooseFolder.Show 1, Me
            If frmChooseFolder.Tag <> "" Then
                txtInput.Text = frmChooseFolder.Tag
                If txtOutput.Text = "" Then
                    txtOutput.Text = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.CFDefaultPath)
                End If
            End If
            Unload frmChooseFolder
        Case 8
            'COMPLETE
            Load frmChooseFolder
            On Error Resume Next
            If txtInput.Text = "" Then
                frmChooseFolder.drvChooseFolder.Drive = Left(IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.CPDefaultPath), 2)
                frmChooseFolder.dirChooseFolder.Path = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.CPDefaultPath)
            Else
                frmChooseFolder.drvChooseFolder.Drive = Left(txtInput.Text, 2)
                frmChooseFolder.dirChooseFolder.Path = txtInput.Text
            End If
            On Error GoTo ErrHandler
            frmChooseFolder.Show 1, Me
            If frmChooseFolder.Tag <> "" Then
                txtInput.Text = frmChooseFolder.Tag
                If txtOutput.Text = "" Then
                    txtOutput.Text = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.CPDefaultPath) & "\" & IIf(Right(txtInput.Text, Len(txtInput.Text) - InStrRev(txtInput.Text, "\")) = "", "nft", Right(txtInput.Text, Len(txtInput.Text) - InStrRev(txtInput.Text, "\"))) & ".pak"
                End If
            End If
            Unload frmChooseFolder
    End Select
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub cmdOutput_Click()
    On Error GoTo ErrHandler
    
    Dim PathVar As String
    Dim myCount As Integer
    
    cmnOutput.FileName = Space$(OFN_Buffer)
    
    Select Case Me.Tag
        Case 1
            'COMPLETE OFN
            If GetSaveFileName(cmnOutput) Then
                txtOutput.Text = cmnOutput.FileName
            End If
        Case 2
            'COMPLETE
            Load frmChooseFolder
            On Error Resume Next
            If lstOutput.ListCount = 0 Then
                frmChooseFolder.drvChooseFolder.Drive = Left(IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.DMFDefaultPath), 2)
                frmChooseFolder.dirChooseFolder.Path = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.DMFDefaultPath)
            Else
                frmChooseFolder.drvChooseFolder.Drive = Left(lstOutput.List(0), 2)
                frmChooseFolder.dirChooseFolder.Path = Left(lstOutput.List(0), InStrRev(lstOutput.List(0), "\") - 1)
            End If
            On Error GoTo ErrHandler
            frmChooseFolder.Show 1, Me
            PathVar = frmChooseFolder.Tag
            Unload frmChooseFolder
            If PathVar = "" Then GoTo ErrHandler
            lstOutput.Clear
            For myCount = 0 To lstInput.ListCount - 1
                lstOutput.AddItem PathVar & "\" & modPreferences.DFilePrefix & Right(lstInput.List(myCount), Len(lstInput.List(myCount)) - InStrRev(lstInput.List(myCount), "\") - Len(modPreferences.CFilePrefix))
            Next myCount
        Case 3
            'COMPLETE
            Load frmChooseFolder
            On Error Resume Next
            If txtOutput.Text = "" Then
                frmChooseFolder.drvChooseFolder.Drive = Left(IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.DFDefaultPath), 2)
                frmChooseFolder.dirChooseFolder.Path = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.DFDefaultPath)
            Else
                frmChooseFolder.drvChooseFolder.Drive = Left(txtOutput.Text, 2)
                frmChooseFolder.dirChooseFolder.Path = txtOutput.Text
            End If
            On Error GoTo ErrHandler
            frmChooseFolder.Show 1, Me
            If frmChooseFolder.Tag <> "" Then txtOutput.Text = frmChooseFolder.Tag
            Unload frmChooseFolder
        Case 4
            'COMPLETE
            Load frmChooseFolder
            On Error Resume Next
            If txtOutput.Text = "" Then
                frmChooseFolder.drvChooseFolder.Drive = Left(IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.DPDefaultPath), 2)
                frmChooseFolder.dirChooseFolder.Path = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.DPDefaultPath)
            Else
                frmChooseFolder.drvChooseFolder.Drive = Left(txtOutput.Text, 2)
                frmChooseFolder.dirChooseFolder.Path = txtOutput.Text
            End If
            On Error GoTo ErrHandler
            frmChooseFolder.Show 1, Me
            If frmChooseFolder.Tag <> "" Then txtOutput.Text = frmChooseFolder.Tag
            Unload frmChooseFolder
        Case 5
            'COMPLETE OFN
            If GetSaveFileName(cmnOutput) Then
                txtOutput.Text = cmnOutput.FileName
            End If
        Case 6
            'COMPLETE
            Load frmChooseFolder
            On Error Resume Next
            If lstOutput.ListCount = 0 Then
                frmChooseFolder.drvChooseFolder.Drive = Left(IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.CMFDefaultPath), 2)
                frmChooseFolder.dirChooseFolder.Path = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.CMFDefaultPath)
            Else
                frmChooseFolder.drvChooseFolder.Drive = Left(lstOutput.List(0), 2)
                frmChooseFolder.dirChooseFolder.Path = Left(lstOutput.List(0), InStrRev(lstOutput.List(0), "\") - 1)
            End If
            On Error GoTo ErrHandler
            frmChooseFolder.Show 1, Me
            PathVar = frmChooseFolder.Tag
            Unload frmChooseFolder
            If PathVar = "" Then GoTo ErrHandler
            lstOutput.Clear
            For myCount = 0 To lstInput.ListCount - 1
                lstOutput.AddItem PathVar & "\" & modPreferences.CFilePrefix & IIf(InStr(1, lstInput.List(myCount), "\" & modPreferences.DFilePrefix) = InStrRev(lstInput.List(myCount), "\"), Right(lstInput.List(myCount), Len(lstInput.List(myCount)) - InStrRev(lstInput.List(myCount), "\") - Len(modPreferences.DFilePrefix)), Right(lstInput.List(myCount), Len(lstInput.List(myCount)) - InStrRev(lstInput.List(myCount), "\")))
            Next myCount
        Case 7
            'COMPLETE
            Load frmChooseFolder
            On Error Resume Next
            If txtOutput.Text = "" Then
                frmChooseFolder.drvChooseFolder.Drive = Left(IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.CFDefaultPath), 2)
                frmChooseFolder.dirChooseFolder.Path = IIf(modPreferences.UseGlobalDefaultPath = 1, modPreferences.GlobalDefaultPath, modPreferences.CFDefaultPath)
            Else
                frmChooseFolder.drvChooseFolder.Drive = Left(txtOutput.Text, 2)
                frmChooseFolder.dirChooseFolder.Path = txtOutput.Text
            End If
            On Error GoTo ErrHandler
            frmChooseFolder.Show 1, Me
            If frmChooseFolder.Tag <> "" Then txtOutput.Text = frmChooseFolder.Tag
            Unload frmChooseFolder
        Case 8
            'COMPLETE OFN
            cmnOutput.DefaultExtension = "pak"
            If GetSaveFileName(cmnOutput) Then
                txtOutput.Text = cmnOutput.FileName
            End If
            cmnOutput.DefaultExtension = ""
    End Select
    
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
    
    Call CheckTheme
    Call DefaultCMN
    Call DefaultWindowSize
    Call CenterWindow(Me)
    Call DefaultControlState
    Call SetDefaults
    Call ReadINISettings
    If Not FileExists(App.Path & "\nft.ini") Then Call WriteDefaultINISettings
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub lstInput2_DblClick()
    On Error GoTo ErrHandler
    
    Dim InfoPAK() As Variant
    Dim InfoPAKFile() As Variant
    
    InfoPAK = GetPAKInfo(txtInput.Text)
    InfoPAKFile = GetPAKFileInfo(txtInput.Text, lstInput2.ListIndex + 1)
    
    MsgBox "File:" & vbTab & vbTab & InfoPAKFile(0) & Chr(13) & _
           "Index Number:" & vbTab & InfoPAKFile(1) & Chr(13) & _
           "Comp. Size:" & vbTab & InfoPAKFile(3) & Chr(13) & _
           "Uncomp. Size:" & vbTab & InfoPAKFile(5) & Chr(13) & _
           "Comp. Ratio:" & vbTab & InfoPAKFile(6) & Chr(13) & _
           Chr(13) & _
           "PAK File:" & vbTab & vbTab & InfoPAK(0) & Chr(13) & _
           "Total Files:" & vbTab & InfoPAK(1) & Chr(13) & _
           "Size:" & vbTab & vbTab & InfoPAK(3) & Chr(13) _
           , vbInformation, "File Information"
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub mnuAbout_Click()
    On Error GoTo ErrHandler
    
    'MsgBox AppName & " (Neocron File Tool) build " & VersionNumber & Chr(13) & Chr(169) & "2006 by Stryfe" & Chr(13) & "(AKA StryfeX/CyberStryfe/Lavos)" & Chr(13) & "All Rights Reserved" & Chr(13) & Chr(13) & "-- In Memory of PlasmaStorm --" & Chr(13) & "Damn you, Snow.", , "About " & AppName
    
    Load frmAbout
    frmAbout.Label1.Caption = AppName & " (Neocron File Tool) build " & VersionNumber
    frmAbout.Label2.Caption = ""
    frmAbout.Label3.Caption = Chr(169) & "2006 by Stryfe"
    frmAbout.Label4.Caption = "(AKA StryfeX/CyberStryfe/Lavos)"
    frmAbout.Label5.Caption = "All Rights Reserved"
    frmAbout.Label6.Caption = ""
    frmAbout.Label7.Caption = "Those who cannot learn from history"
    frmAbout.Label8.Caption = "are doomed to repeat it." '  -George Santayana"
    frmAbout.Label9.Caption = "" '-George Santayana-"
    frmAbout.Label10.Caption = "--George Santayana"
    frmAbout.Show 1, Me
    Unload frmAbout
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub mnuCF_Click()
    On Error GoTo ErrHandler
    
    'Reset Controls
    Call DefaultControlState
    
    'Set Tag
    Me.Tag = 7

    'Rename Control Captions
    lblInput.Caption = "Input Folder:"
    lblOutput.Caption = "Output Folder:"

    'Reposition Controls
    lblInput.Top = 8
    txtInput.Top = 8
    cmdInput.Top = 8
    lblOutput.Top = 32
    txtOutput.Top = 32
    cmdOutput.Top = 32
    cmdGo.Top = 56
    cmdCancel.Top = 56

    'Resize Window
    Call ResizeWindow(Me, 1890, 9105)
    
    'Reposition Window
    Call CenterWindow(Me)
    
    'Rename Window
    Me.Caption = AppName & " - Compress Folder"

    'Unhide Controls
    lblInput.Visible = True
    txtInput.Visible = True
    cmdInput.Visible = True
    lblOutput.Visible = True
    txtOutput.Visible = True
    cmdOutput.Visible = True
    cmdGo.Visible = True
    cmdCancel.Visible = True
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub mnuCMF_Click()
    On Error GoTo ErrHandler
    'Reset Controls
    Call DefaultControlState
    
    'Set Tag
    Me.Tag = 6

    'Rename Control Captions
    lblInput.Caption = "Input Files:"
    lblOutput.Caption = "Output Files:"
    cmnInput.DialogTitle = "Choose Files To Be Compressed..."
    cmnInput.Filter = "Neocron 2 Files|*.act;*.bmp;*.bsp;*.dat;*.def;*.fx;*.ini;*.lua;*.tsc;*.txt;*.wav"
    cmnInput.flags = 2626052

    'Reposition Controls
    lblInput.Top = 8
    lstInput.Top = 8
    cmdInput.Top = 8
    lblOutput.Top = 80
    lstOutput.Top = 80
    cmdOutput.Top = 80
    cmdGo.Top = 156
    cmdCancel.Top = 156

    'Resize Window
    Call ResizeWindow(Me, 3390, 9105)
    
    'Reposition Window
    Call CenterWindow(Me)
    
    'Rename Window
    Me.Caption = AppName & " - Compress Multiple File"

    'Unhide Controls
    lblInput.Visible = True
    lstInput.Visible = True
    cmdInput.Visible = True
    lblOutput.Visible = True
    lstOutput.Visible = True
    cmdOutput.Visible = True
    cmdGo.Visible = True
    cmdCancel.Visible = True
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub mnuCP_Click()
    On Error GoTo ErrHandler
    
    'Reset Controls
    Call DefaultControlState
    
    'Set Tag
    Me.Tag = 8

    'Rename Control Captions
    lblInput.Caption = "Input Folder:"
    lblOutput.Caption = "Output PAK:"
    cmnOutput.DialogTitle = "Save PAK File As..."
    cmnOutput.Filter = "Neocron 2 PAK Files" & Chr(0) & "*.pak" & Chr(0)

    'Reposition Controls
    lblInput.Top = 8
    txtInput.Top = 8
    cmdInput.Top = 8
    lblOutput.Top = 32
    txtOutput.Top = 32
    cmdOutput.Top = 32
    cmdGo.Top = 56
    cmdCancel.Top = 56

    'Resize Window
    Call ResizeWindow(Me, 1890, 9105)
    
    'Reposition Window
    Call CenterWindow(Me)
    
    'Rename Window
    Me.Caption = AppName & " - Compress to .pak"

    'Unhide Controls
    lblInput.Visible = True
    txtInput.Visible = True
    cmdInput.Visible = True
    lblOutput.Visible = True
    txtOutput.Visible = True
    cmdOutput.Visible = True
    cmdGo.Visible = True
    cmdCancel.Visible = True
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub mnuCSF_Click()
    On Error GoTo ErrHandler
    
    'Reset Controls
    Call DefaultControlState
    
    'Set Tag
    Me.Tag = 5

    'Rename Control Captions
    lblInput.Caption = "Input File:"
    lblOutput.Caption = "Output File:"
    cmnInput.DialogTitle = "Choose File To Be Compressed..."
    cmnInput.Filter = "Neocron 2 Files" & Chr(0) & "*.act;*.bmp;*.bsp;*.dat;*.def;*.fx;*.ini;*.lua;*.tsc;*.txt;*.wav" & Chr(0)
    cmnInput.flags = 2625540
    cmnOutput.DialogTitle = "Save Compressed File As..."
    cmnOutput.Filter = "Compressed Neocron 2 Files" & Chr(0) & modPreferences.CFilePrefix & "*.act;" & modPreferences.CFilePrefix & "*.bmp;" & modPreferences.CFilePrefix & "*.bsp;" & modPreferences.CFilePrefix & "*.dat;" & modPreferences.CFilePrefix & "*.def;" & modPreferences.CFilePrefix & "*.fx;" & modPreferences.CFilePrefix & "*.ini;" & modPreferences.CFilePrefix & "*.lua;" & modPreferences.CFilePrefix & "*.tsc;" & modPreferences.CFilePrefix & "*.txt;" & modPreferences.CFilePrefix & "*.wav" & Chr(0)

    'Reposition Controls
    lblInput.Top = 8
    txtInput.Top = 8
    cmdInput.Top = 8
    lblOutput.Top = 32
    txtOutput.Top = 32
    cmdOutput.Top = 32
    cmdGo.Top = 56
    cmdCancel.Top = 56

    'Resize Window
    Call ResizeWindow(Me, 1890, 9105)

    'Reposition Window
    Call CenterWindow(Me)
    
    'Rename Window
    Me.Caption = AppName & " - Compress Single File"

    'Unhide Controls
    lblInput.Visible = True
    txtInput.Visible = True
    cmdInput.Visible = True
    lblOutput.Visible = True
    txtOutput.Visible = True
    cmdOutput.Visible = True
    cmdGo.Visible = True
    cmdCancel.Visible = True
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub mnuDF_Click()
    On Error GoTo ErrHandler
    
    'Reset Controls
    Call DefaultControlState
    
    'Set Tag
    Me.Tag = 3

    'Rename Control Captions
    lblInput.Caption = "Input Folder:"
    lblOutput.Caption = "Output Folder:"

    'Reposition Controls
    lblInput.Top = 8
    txtInput.Top = 8
    cmdInput.Top = 8
    lblOutput.Top = 32
    txtOutput.Top = 32
    cmdOutput.Top = 32
    cmdGo.Top = 56
    cmdCancel.Top = 56

    'Resize Window
    Call ResizeWindow(Me, 1890, 9105)

    'Reposition Window
    Call CenterWindow(Me)
    
    'Rename Window
    Me.Caption = AppName & " - Decompress Folder"

    'Unhide Controls
    lblInput.Visible = True
    txtInput.Visible = True
    cmdInput.Visible = True
    lblOutput.Visible = True
    txtOutput.Visible = True
    cmdOutput.Visible = True
    cmdGo.Visible = True
    cmdCancel.Visible = True
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub mnuDMF_Click()
    On Error GoTo ErrHandler
    
    'Reset Controls
    Call DefaultControlState
    
    'Set Tag
    Me.Tag = 2

    'Rename Control Captions
    lblInput.Caption = "Input Files:"
    lblOutput.Caption = "Output Files:"
    cmnInput.DialogTitle = "Choose Files To Be Decompressed..."
    cmnInput.Filter = "Compressed Neocron 2 Files" & Chr(0) & modPreferences.CFilePrefix & "*.act;" & modPreferences.CFilePrefix & "*.bmp;" & modPreferences.CFilePrefix & "*.bsp;" & modPreferences.CFilePrefix & "*.dat;" & modPreferences.CFilePrefix & "*.def;" & modPreferences.CFilePrefix & "*.fx;" & modPreferences.CFilePrefix & "*.ini;" & modPreferences.CFilePrefix & "*.lua;" & modPreferences.CFilePrefix & "*.tsc;" & modPreferences.CFilePrefix & "*.txt;" & modPreferences.CFilePrefix & "*.wav" & Chr(0)
    cmnInput.flags = 2626052

    'Reposition Controls
    lblInput.Top = 8
    lstInput.Top = 8
    cmdInput.Top = 8
    lblOutput.Top = 80
    lstOutput.Top = 80
    cmdOutput.Top = 80
    cmdGo.Top = 156
    cmdCancel.Top = 156

    'Resize Window
    Call ResizeWindow(Me, 3390, 9105)

    'Reposition Window
    Call CenterWindow(Me)
    
    'Rename Window
    Me.Caption = AppName & " - Decompress Multiple File"

    'Unhide Controls
    lblInput.Visible = True
    lstInput.Visible = True
    cmdInput.Visible = True
    lblOutput.Visible = True
    lstOutput.Visible = True
    cmdOutput.Visible = True
    cmdGo.Visible = True
    cmdCancel.Visible = True
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub mnuDP_Click()
    On Error GoTo ErrHandler
    
    'Reset Controls
    Call DefaultControlState
    
    'Set Tag
    Me.Tag = 4
    
    'Rename Control Captions
    lblInput.Caption = "Input PAK:"
    lblOutput.Caption = "Output Folder:"
    cmnInput.DialogTitle = "Choose PAK..."
    cmnInput.Filter = "Neocron 2 PAK Files" & Chr(0) & "*.pak" & Chr(0)
    cmnInput.flags = 2625540
    
    'Reposition Controls
    lblInput.Top = 8
    txtInput.Top = 8
    cmdInput.Top = 8
    lblOutput.Top = 32
    txtOutput.Top = 32
    cmdOutput.Top = 32
    lstInput2.Top = 56
    cmdGo.Top = 196
    cmdCancel.Top = 196
    
    'Resize Window
    Call ResizeWindow(Me, 3990 - 0 * 285, 9105)

    'Reposition Window
    Call CenterWindow(Me)
    
    'Rename Window
    Me.Caption = AppName & " - Decompress from .pak"

    'Unhide Controls
    lblInput.Visible = True
    txtInput.Visible = True
    cmdInput.Visible = True
    lblOutput.Visible = True
    txtOutput.Visible = True
    cmdOutput.Visible = True
    lstInput2.Visible = True
    cmdGo.Visible = True
    cmdCancel.Visible = True
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub mnuDSF_Click()
    On Error GoTo ErrHandler
    
    'Reset Controls
    Call DefaultControlState
    
    'Set Tag
    Me.Tag = 1
    
    'Rename Control Captions
    lblInput.Caption = "Input File:"
    lblOutput.Caption = "Output File:"
    cmnInput.DialogTitle = "Choose File To Be Decompressed..."
    cmnInput.Filter = "Compressed Neocron 2 Files" & Chr(0) & modPreferences.CFilePrefix & "*.act;" & modPreferences.CFilePrefix & "*.bmp;" & modPreferences.CFilePrefix & "*.bsp;" & modPreferences.CFilePrefix & "*.dat;" & modPreferences.CFilePrefix & "*.def;" & modPreferences.CFilePrefix & "*.fx;" & modPreferences.CFilePrefix & "*.ini;" & modPreferences.CFilePrefix & "*.lua;" & modPreferences.CFilePrefix & "*.tsc;" & modPreferences.CFilePrefix & "*.txt;" & modPreferences.CFilePrefix & "*.wav" & Chr(0)
    cmnInput.flags = 2625540
    cmnOutput.DialogTitle = "Save Decompressed File As..."
    cmnOutput.Filter = "Neocron 2 Files" & Chr(0) & "*.act;*.bmp;*.bsp;*.dat;*.def;*.fx;*.ini;*.lua;*.tsc;*.txt;*.wav" & Chr(0)
    
    'Reposition Controls
    lblInput.Top = 8
    txtInput.Top = 8
    cmdInput.Top = 8
    lblOutput.Top = 32
    txtOutput.Top = 32
    cmdOutput.Top = 32
    cmdGo.Top = 56
    cmdCancel.Top = 56
    
    'Resize Window
    Call ResizeWindow(Me, 1890, 9105)
    
    'Reposition Window
    Call CenterWindow(Me)
    
    'Rename Window
    Me.Caption = AppName & " - Decompress Single File"
    
    'Unhide Controls
    lblInput.Visible = True
    txtInput.Visible = True
    cmdInput.Visible = True
    lblOutput.Visible = True
    txtOutput.Visible = True
    cmdOutput.Visible = True
    cmdGo.Visible = True
    cmdCancel.Visible = True
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub mnuExit_Click()
    On Error GoTo ErrHandler
    
    Unload Me
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub mnuPreferences_Click()
    On Error GoTo ErrHandler
    
    Load frmPreferences
    frmPreferences.Show 1, Me
    Unload frmPreferences
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub DefaultWindowSize()
    On Error GoTo ErrHandler
    
    Call ResizeWindow(Me, 645, 2595)
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub DefaultControlState()
    On Error GoTo ErrHandler
    
    Me.Caption = AppName
    Me.Tag = ""
    
    lblInput.Caption = ""
    lblInput.Height = 19
    lblInput.Top = 8
    lblInput.Visible = False
    txtInput.Height = 19
    txtInput.Text = ""
    txtInput.Top = 8
    txtInput.Visible = False
    cmdInput.Height = 19
    cmdInput.Top = 8
    cmdInput.Visible = False
    lstInput.Clear
    lstInput.Height = 69
    lstInput.Top = 8
    lstInput.Visible = False
    lstInput2.Clear
    lstInput2.Height = 134
    lstInput2.Top = 56
    lstInput2.Visible = False
    
    lblOutput.Caption = ""
    lblOutput.Height = 19
    lblOutput.Top = 32
    lblOutput.Visible = False
    txtOutput.Height = 19
    txtOutput.Text = ""
    txtOutput.Top = 32
    txtOutput.Visible = False
    cmdOutput.Height = 19
    cmdOutput.Top = 32
    cmdOutput.Visible = False
    lstOutput.Clear
    lstOutput.Height = 69
    lstOutput.Top = 80
    lstOutput.Visible = False
    
    cmdGo.Top = 196
    cmdGo.Visible = False
    cmdCancel.Top = 196
    cmdCancel.Visible = False
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Private Sub DefaultCMN()
    On Error GoTo ErrHandler
    
    cmnInput.StructureSize = Len(cmnInput)
    cmnInput.hWindowOwner = Me.hWnd
    cmnInput.hInstance = App.hInstance
    cmnInput.FileName = Space$(OFN_Buffer)
    cmnInput.MaxFileNameSize = OFN_Buffer + 1
    cmnInput.FileTitle = Space$(OFN_Buffer)
    cmnInput.MaxFileTitleSize = OFN_Buffer + 1
    
    cmnOutput.StructureSize = Len(cmnOutput)
    cmnOutput.hWindowOwner = Me.hWnd
    cmnOutput.hInstance = App.hInstance
    cmnOutput.FileName = Space$(OFN_Buffer)
    cmnOutput.MaxFileNameSize = OFN_Buffer + 1
    cmnOutput.FileTitle = Space$(OFN_Buffer)
    cmnOutput.MaxFileTitleSize = OFN_Buffer + 1
    cmnOutput.flags = 2654212
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub
