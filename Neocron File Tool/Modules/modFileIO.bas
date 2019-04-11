Attribute VB_Name = "modFileIO"
Option Explicit

Public FatalError As Integer

'This subroutine creates any folders that need to be created between BaseFolder and FolderName
Public Sub CreateFolder(ByVal BaseFolder As String, ByVal FolderName As String)
    On Error GoTo ErrHandler
    
    Dim fso
    Dim StartVar As Integer
    Dim ErrorNumber As Integer
    
    FatalError = 0
    Set fso = CreateObject("Scripting.FileSystemObject")
    StartVar = Len(BaseFolder) + 1
    Do
        On Error Resume Next
        ErrorNumber = 0
        fso.CreateFolder (Left$(FolderName, InStr(StartVar, FolderName, "\")))
        ErrorNumber = Err.Number
        On Error GoTo 0
        If ErrorNumber = 0 Or ErrorNumber = 58 Then
            StartVar = InStr(StartVar, FolderName, "\") + 1
        ElseIf ErrorNumber = 70 Then
            MsgBox "You cannot create objects in that directory." & Chr(13) & Chr(13) & "Access is denied.", vbCritical, "Fatal Error"
            FatalError = 70
            GoTo EndSub
        End If
    Loop While Not fso.FolderExists(FolderName)
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
    Set fso = Nothing
End Sub

'This function checks if the file exists or not
Public Function FileExists(FileName As String) As Boolean
    On Error GoTo ErrHandler
    
    Dim fso                                                         'var to hold the FileSystemObject
    
    Set fso = CreateObject("Scripting.FileSystemObject")            'set fso to hold the FileSystemObject
    FileExists = fso.FileExists(FileName)                           'return "True" if the file exists, or "False" if it does not
    Set fso = Nothing                                               'deallocate the var
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Function

'This function checks if the folder exists or not
Function FolderExists(FolderName As String) As Boolean
    On Error GoTo ErrHandler
    
    Dim fso                                                         'var to hold the FileSystemObject
    
    Set fso = CreateObject("Scripting.FileSystemObject")            'set fso to hold the FileSystemObject
    FolderExists = fso.FolderExists(FolderName)                     'return "True" if the folder exists, or "False" if it does not
    Set fso = Nothing                                               'deallocate the var
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Function

Public Function GetPAKFileInfo(PAKFile As String, FileIndex As Long) As Variant
    On Error GoTo ErrHandler
    
    Dim RawNumber(3) As Byte
    Dim RawFileName() As Byte
    Dim RawFileNameLength(3) As Byte
    Dim RawCSize(3) As Byte
    Dim RawUSize(3) As Byte
    Dim RawOffset(3) As Byte
    Dim RawFileStart(3) As Byte
    Dim TOCOffset As Long
    Dim myCount As Long
    Dim FileNum As Integer
    Dim ReturnVar(7) As Variant
    
    TOCOffset = 9
    FileNum = FreeFile
    
    Open PAKFile For Binary Access Read As FileNum
        For myCount = 1 To FileIndex - 1
            Get #FileNum, TOCOffset, RawOffset
            TOCOffset = TOCOffset + ByteLong(RawOffset)
        Next myCount
        Get #FileNum, TOCOffset + 4, RawFileStart
        Get #FileNum, TOCOffset + 8, RawCSize
        Get #FileNum, TOCOffset + 12, RawUSize
        Get #FileNum, TOCOffset + 16, RawFileNameLength
        ReDim RawFileName(ByteLong(RawFileNameLength) - 1)
        Get #FileNum, TOCOffset + 20, RawFileName
    Close #FileNum
    
    'ReturnVar(FileName, FileIndex, RawCSize, FormattedCSize, RawUSize, FormattedUSize, CompressionRatio)
    ReturnVar(0) = ByteString(RawFileName)
    ReturnVar(1) = FileIndex
    ReturnVar(2) = ByteLong(RawCSize)
    ReturnVar(3) = SizeConversion(ByteLong(RawCSize), "")
    ReturnVar(4) = ByteLong(RawUSize)
    ReturnVar(5) = SizeConversion(ByteLong(RawUSize), "")
    ReturnVar(6) = CompressionRatio(ByteLong(RawCSize), ByteLong(RawUSize))
    ReturnVar(7) = ByteLong(RawFileStart) + 1
    
    GetPAKFileInfo = ReturnVar
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Function

Public Function GetPAKInfo(PAKFile As String) As Variant
    On Error GoTo ErrHandler
    
    Dim FileNum As Integer
    Dim RawNumber(3) As Byte
    Dim fso, f
    Dim ReturnVar(3) As Variant
        
    FileNum = FreeFile
    
    Open PAKFile For Binary Access Read As FileNum
        Get #FileNum, 5, RawNumber
    Close #FileNum
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set f = fso.GetFile(PAKFile)
    
    'ReturnVar(PAKFile, NumFiles, RawPAKSize, FormattedPAKSize)
    ReturnVar(0) = PAKFile
    ReturnVar(1) = ByteLong(RawNumber)
    ReturnVar(2) = f.Size
    ReturnVar(3) = SizeConversion(f.Size, "")
    
    Set fso = Nothing
    Set f = Nothing
    
    GetPAKInfo = ReturnVar
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Function

'This function gets the compressed data from the compressed file FileName
Public Function GrabCData(FileName As String)
    On Error GoTo ErrHandler
    
    Dim CompressedData() As Byte                                    'compressed data var
    Dim FileNum As Integer                                          'var used to store valid freefile info
    
    ReDim CompressedData(FileLen(FileName) - 16)                    'resize compresseddata to fit all the data
    FileNum = FreeFile                                              'get the lowest free file
    Open FileName For Binary Access Read As FileNum                 'open the file
    Get #FileNum, 17, CompressedData                                'grab the data
    Close #FileNum                                                  'close the file
    GrabCData = CompressedData                                      'return the data
    Erase CompressedData                                            'deallocate the compressed data var
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Function

'This function gets the compressed data from the compressed file FileName
Public Function GrabCData2(FileName As String, Offset As Long, DataSize As Long)
    On Error GoTo ErrHandler
    
    Dim CompressedData() As Byte                                    'compressed data var
    Dim FileNum As Integer                                          'var used to store valid freefile info
    
    ReDim CompressedData(DataSize - 1)                              'resize compresseddata to fit all the data
    FileNum = FreeFile                                              'get the lowest free file
    Open FileName For Binary Access Read As FileNum                 'open the file
    Get #FileNum, Offset, CompressedData                            'grab the data
    Close #FileNum                                                  'close the file
    GrabCData2 = CompressedData                                     'return the data
    Erase CompressedData                                            'deallocate the compressed data var
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Function

'This function gets the original size of compressed file FileName
Public Function GrabOriginalSize(FileName As String) As Long
    On Error GoTo ErrHandler
    
    Dim RawUCSize(3) As Byte                                        'raw original filesize from file
    Dim FileNum As Integer                                          'lowest freefile number
    Dim myCount As Integer                                          'counter var
    Dim UncompressedSize As Long                                    'filesize data
    
    FileNum = FreeFile                                              'get freefile info
    Open FileName For Binary Access Read As FileNum                 'open FileName
    Get #FileNum, 13, RawUCSize                                     'read the 4 bytes that represent the original filesize
    Close #FileNum                                                  'close the file
    For myCount = 0 To 3                                            'start loop to calculate filesize
        UncompressedSize = UncompressedSize _
                         + CInt(RawUCSize(myCount)) _
                         * 256 ^ myCount                            'calculates the filesize
    Next myCount
    GrabOriginalSize = UncompressedSize                             'return the original filesize
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Function

'This function gets the uncompressed data from the uncompressed file FileName
Public Function GrabUData(FileName As String)
    On Error GoTo ErrHandler
    
    Dim UncompressedData() As Byte                                  'uncompressed data var
    Dim FileNum As Integer                                          'var used to store valid freefile info

    ReDim UncompressedData(FileLen(FileName))                       'resize uncompresseddata to fit all the data
    FileNum = FreeFile                                              'get the lowest free file
    Open FileName For Binary Access Read As FileNum                 'open the file
    Get #FileNum, , UncompressedData                                'grab the data
    Close #FileNum                                                  'close the file
    GrabUData = UncompressedData                                    'return the data
    Erase UncompressedData                                          'deallocate the uncompressed data var
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Function

'This function reads the TOC of a PAK file and puts the name, compressed size, compression ratio, and uncompressed size in a listbox
Public Sub ReadPAKTOC(FileName As String)
    On Error GoTo ErrHandler
    
    Dim TOCNumber As Long
    Dim RawNumber(3) As Byte
    Dim myCount As Long
    Dim FileNum As Integer
    Dim StringLength As Integer
    Dim InfoPAKFile() As Variant
    
    Load frmProgress
    frmProgress.Show 0, frmMain
    frmProgress.Refresh
    
    If Not ValidatePAK(FileName) Then GoTo EndSub
    
    FileNum = FreeFile
    
    Open FileName For Binary Access Read As FileNum
    Get #FileNum, 5, RawNumber
    Close #FileNum
    
    TOCNumber = ByteLong(RawNumber)
    StringLength = IIf(TOCNumber > 9, 66, 69)
    
    For myCount = 1 To TOCNumber
        InfoPAKFile = GetPAKFileInfo(FileName, myCount)
        frmMain.lstInput2.AddItem FormatPAKTOC(2, CStr(InfoPAKFile(0)), CSng(InfoPAKFile(2)), CSng(InfoPAKFile(4)), StringLength, " ")
    Next myCount
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
    frmProgress.Hide
    Unload frmProgress
End Sub

'This subroutine recurses all files in a given folder and subfolder(s)
Public Sub RecurseFolderList(ByVal FolderName As String)
    On Error GoTo ErrHandler
    
    Dim fso, lFolder, lSubFolders, lFiles, lItem
    
    On Error Resume Next
    Set fso = CreateObject("Scripting.FileSystemObject")
    If Err.Number > 0 Then
        Exit Sub
    End If
    On Error GoTo 0
    If fso.FolderExists(FolderName) Then
        Set lFolder = fso.GetFolder(FolderName)
        Set lSubFolders = lFolder.Subfolders
        Set lFiles = lFolder.Files
        For Each lItem In lSubFolders                               'For each subfolder in the Folder
            Call RecurseFolderList(lItem)                           'Recurse this function with the sub-folder to get any sub-folders
        Next
        For Each lItem In lFiles                                    'For each folder check for any files
            frmMain.lstInput.AddItem (lItem)                        'Add the files to the list
        Next
        Set lFolder = Nothing
        Set lSubFolders = Nothing
        Set lFiles = Nothing
        Set lItem = Nothing
    End If
    Set fso = Nothing
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

'This subroutine saves byte data to file FileName
Public Sub SaveByteToFile(FileName As String, OutputData() As Byte, Optional StartLocation As Long = 1)
    On Error GoTo ErrHandler
    
    Dim FileNum As Integer                                          'freefile variable
    
    FileNum = FreeFile                                              'get freefile info
    Open FileName For Binary Access Write As FileNum                'open file
    Put #FileNum, StartLocation, OutputData                         'save OuputData to FileName starting at StartLocation
    Close #FileNum                                                  'close file
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

'This subroutine saves long data to file FileName
Public Sub SaveLongToFile(FileName As String, OutputData As Long, Optional StartLocation As Long = 1)
    On Error GoTo ErrHandler
    
    Dim FileNum As Integer                                          'freefile variable
    
    FileNum = FreeFile                                              'get freefile info
    Open FileName For Binary Access Write As FileNum                'open file
    Put #FileNum, StartLocation, OutputData                         'save OuputData to FileName starting at StartLocation
    Close #FileNum                                                  'close file
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

'This function validates a compressed file against the FileHeader
Public Function ValidateFile(FileName As String) As Boolean
    On Error GoTo ErrHandler
    
    Dim CompressedData() As Byte                                            'compressed data var
    Dim FileNum As Integer                                                  'var used to store valid freefile info
    Dim myCount As Integer                                                  'counter for For...Next loop
    
    ReDim CompressedData(UBound(modPreferences.FileHeader))                 'resize compresseddata to fit just the file header
    FileNum = FreeFile                                                      'get the lowest free file
    Open FileName For Binary Access Read As FileNum                         'open the file
    Get #FileNum, 1, CompressedData                                         'grab the data
    Close #FileNum                                                          'close the file
    ValidateFile = True                                                     'set the default return value to 'True'
    For myCount = 0 To UBound(CompressedData)                               'start for...next loop to determine whether the file header matches what it's supposed to be
    If CompressedData(myCount) <> modPreferences.FileHeader(myCount) Then   'check the file header to make sure it's a valid NC2 compressed file
        ValidateFile = False                                                'set the return value to 'False' if the header doesn't match
        GoTo EndSub                                                         'go immediately to the end of the function rather than iterating through the rest of CompressedData
    End If
    Next myCount
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
    Erase CompressedData                                                    'deallocate the compressed data var
End Function

'This function validates a compressed PAK file against the PAKHeader
Public Function ValidatePAK(FileName As String) As Boolean
    On Error GoTo ErrHandler
    
    Dim CompressedData() As Byte                                            'compressed data var
    Dim FileNum As Integer                                                  'var used to store valid freefile info
    Dim myCount As Integer                                                  'counter for For...Next loop
    
    ReDim CompressedData(UBound(modPreferences.PAKHeader))                  'resize compresseddata to fit just the .pak header
    FileNum = FreeFile                                                      'get the lowest free file
    Open FileName For Binary Access Read As FileNum                         'open the file
    Get #FileNum, 1, CompressedData                                         'grab the data
    Close #FileNum                                                          'close the file
    ValidatePAK = True                                                      'set the default return value to 'True'
    For myCount = 0 To UBound(CompressedData)                               'start for...next loop to determine whether the .pak header matches what it's supposed to be
    If CompressedData(myCount) <> modPreferences.PAKHeader(myCount) Then    'check the file header to make sure it's a valid NC2 .pak file
        ValidatePAK = False                                                 'set the return value to 'False' if the header doesn't match
        GoTo EndSub                                                         'go immediately to the end of the function rather than iterating through the rest of CompressedData
    End If
    Next myCount
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
    Erase CompressedData                                                    'deallocate the compressed data var
End Function

Public Sub MakePAK(FileName As String)
    On Error GoTo ErrHandler
    
    Dim myCount As Integer
    Dim FileNum As Integer
    Dim NullByte(0) As Byte
    Dim TOCOffset As Long
    Dim PAKDataOffset As Long
    Dim myCount2 As Integer
    Dim ByteData() As Byte
    Dim CFileData() As Byte
    
    TOCOffset = UBound(modPreferences.PAKHeader) + 6
    FileNum = FreeFile
    
    'Temp Code to Facilitate Testing and Debugging
    'If FileExists(FileName) Then Kill FileName
    
    'Write the PAK TOC
    Call SaveByteToFile(FileName, modPreferences.PAKHeader, 1)
    Call SaveLongToFile(FileName, CLng(frmMain.lstOutput.ListCount), 5)
    For myCount = 0 To frmMain.lstOutput.ListCount - 1
        ReDim ByteData(Len(frmMain.lstOutput.List(myCount)))
        For myCount2 = 0 To Len(frmMain.lstOutput.List(myCount)) - 1
            ByteData(myCount2) = AscB(Mid(frmMain.lstOutput.List(myCount), myCount2 + 1, 1))
        Next myCount2
        Call SaveLongToFile(FileName, 20 + Len(frmMain.lstOutput.List(myCount)) + 1, TOCOffset)                                 'Offset
        Call SaveLongToFile(FileName, 0, TOCOffset + 4)                                                                 'Address of Compressed Data
        Call SaveLongToFile(FileName, 0, TOCOffset + 8)                                                                 'Compressed Size
        Call SaveLongToFile(FileName, FileLen(frmMain.txtInput.Text & "\" & frmMain.lstOutput.List(myCount)), TOCOffset + 12)   'Uncompressed Size
        Call SaveLongToFile(FileName, Len(frmMain.lstOutput.List(myCount)) + 1, TOCOffset + 16)                                 'Length of FileName + Null
        Call SaveByteToFile(FileName, ByteData, TOCOffset + 20)                                                                 'FileName
        Call SaveByteToFile(FileName, NullByte, TOCOffset + 20 + Len(frmMain.lstOutput.List(myCount)))                         'Null
        TOCOffset = TOCOffset + 20 + Len(frmMain.lstOutput.List(myCount)) + 1
        Erase ByteData
    Next myCount
    
    PAKDataOffset = TOCOffset
    TOCOffset = UBound(modPreferences.PAKHeader) + 6
    
    'Write the Compressed Data to the PAK and fill in the missing data in the TOC
    For myCount = 0 To frmMain.lstOutput.ListCount - 1
        Call SaveLongToFile(FileName, PAKDataOffset - 1, TOCOffset + 4)
        CFileData = Compress(GrabUData(frmMain.txtInput.Text & "\" & frmMain.lstOutput.List(myCount)))
        Call SaveLongToFile(FileName, UBound(CFileData) + 1, TOCOffset + 8)
        Call SaveByteToFile(FileName, CFileData, PAKDataOffset)
        PAKDataOffset = PAKDataOffset + UBound(CFileData) + 1
        TOCOffset = TOCOffset + 20 + Len(frmMain.lstOutput.List(myCount)) + 1
        Erase CFileData
    Next myCount
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub
