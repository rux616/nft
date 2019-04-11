Attribute VB_Name = "modMath"

Public Function ByteLong(ByteArray() As Byte) As Long
    On Error GoTo ErrHandler
    
    Dim myCount As Integer
    Dim ReturnVar As Long
    
    For myCount = 0 To UBound(ByteArray)
        ReturnVar = ReturnVar + CLng(ByteArray(myCount)) * 256 ^ myCount
    Next myCount
    
    ByteLong = ReturnVar
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Function

Public Function ByteString(ByteArray() As Byte) As String
    On Error GoTo ErrHandler
    
    Dim myCount As Integer
    Dim ReturnVar As String
    
    For myCount = 0 To UBound(ByteArray) - 1
        ReturnVar = ReturnVar & Chr(CInt(ByteArray(myCount)))
    Next myCount
    
    ByteString = ReturnVar
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Function

Public Function CompressionRatio(CSize As Single, USize As Single) As String
    On Error GoTo ErrHandler
    
    If USize <> 0 Then
        CompressionRatio = Round(100 - (CSize / USize * 100), 0) & "%"
    Else
        CompressionRatio = "ERR"
    End If
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Function

Public Function FormatPAKTOC(FormatStyle As Integer, FileName As String, CSize As Single, USize As Single, StringLength As Integer, Separator As String) As String
    On Error GoTo ErrHandler
    
    Dim FCSize
    Dim FUSize
    Dim FFileName
    Dim FCRatio
    
    Select Case FormatStyle
        Case 1
            ' xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxB xxxxK
            FCSize = SizeConversion(CSize, "")
            FUSize = SizeConversion(USize, "")
            If Len(FileName) > (StringLength - 12) Then
                FFileName = Left(FileName, (StringLength - 12) - 3) & "..."
                'FFileName = Left(FileName, (StringLength - 12) - Len(Right(FileName, Len(FileName) - InStrRev(FileName, "\"))) - 3) & "..." & Right(FileName, Len(FileName) - InStrRev(FileName, "\"))
            Else
                FFileName = FileName
            End If
            FormatPAKTOC = FFileName & Space((StringLength - 12) - Len(FFileName)) & Separator & Space(5 - Len(FCSize)) & FCSize & Separator & Space(5 - Len(FUSize)) & FUSize
        Case 2
            ' xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxB xxx% xxxxK
            FCSize = SizeConversion(CSize, "")
            FUSize = SizeConversion(USize, "")
            FCRatio = CompressionRatio(CSize, USize)
            If Len(FileName) > (StringLength - 17) Then
                FFileName = Left(FileName, (StringLength - 17) - 3) & "..."
                'FFileName = Left(FileName, (StringLength - 17) - Len(Right(FileName, Len(FileName) - InStrRev(FileName, "\"))) - 3) & "..." & Right(FileName, Len(FileName) - InStrRev(FileName, "\"))
            Else
                FFileName = FileName
            End If
            FormatPAKTOC = FFileName & Space((StringLength - 17) - Len(FFileName)) & Separator & Space(5 - Len(FCSize)) & FCSize & Separator & Space(4 - Len(FCRatio)) & FCRatio & Separator & Space(5 - Len(FUSize)) & FUSize
    End Select
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Function

Public Function SizeConversion(FileSize As Single, Separator As String) As String
    On Error GoTo ErrHandler
    
    'FileSize should be the size in bytes
    Select Case FileSize
        Case 0 To 1023
            SizeConversion = FileSize & Separator & "B"
        Case 1024 To 10239
            SizeConversion = Round(FileSize / 1024, 2) & Separator & "K"
        Case 10240 To 102399
            SizeConversion = Round(FileSize / 1024, 1) & Separator & "K"
        Case 102400 To 1048575
            SizeConversion = Round(FileSize / 1024, 0) & Separator & "K"
        Case 1048576 To 10485759
            SizeConversion = Round(FileSize / 1024 / 1024, 2) & Separator & "M"
        Case 10485760 To 104857699
            SizeConversion = Round(FileSize / 1024 / 1024, 1) & Separator & "M"
        Case 104857700 To 1073741823
            SizeConversion = Round(FileSize / 1024 / 1024, 0) & Separator & "M"
        Case 1073741824 To 4294967295#
            SizeConversion = Round(FileSize / 1024 / 1024 / 1024, 1) & Separator & "G"
    End Select
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Function
