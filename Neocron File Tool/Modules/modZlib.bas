Attribute VB_Name = "modZlib"
Option Explicit

Private Declare Function ZCompress Lib "zlib.dll" Alias "compress2" (dest As Any, destLen As Any, src As Any, ByVal srcLen As Long, ByVal level As Integer) As Long
Private Declare Function ZUncompress Lib "zlib.dll" Alias "uncompress" (dest As Any, destLen As Any, src As Any, ByVal srcLen As Long) As Long

Public Function Compress(UncompressedData() As Byte)
    On Error GoTo ErrHandler
    
    Dim CompressedData() As Byte                                    'output buffer
    Dim CompressedSize As Long                                      'compressed size
    Dim UncompressedSize As Long                                    'uncompressed size
    
    If StrPtr(UncompressedData) <> 0 Then                           'if data buffer contains data
        UncompressedSize = UBound(UncompressedData) + 1             'get data size
        CompressedSize = UncompressedSize _
                       + (UncompressedSize * 0.01) _
                       + 12                                         'estimate compressed size
        ReDim CompressedData(CompressedSize - 1)                    'allocate output buffer
        Select Case modPreferences.CompressionLevel                 'Choose what level to compress UncompressedData to
            Case 0
                Call ZCompress(CompressedData(0), _
                               CompressedSize, _
                               UncompressedData(0), _
                               UncompressedSize, _
                               0)                                   'compress data at compression level 0 (no compression)
            Case 1
                Call ZCompress(CompressedData(0), _
                               CompressedSize, _
                               UncompressedData(0), _
                               UncompressedSize, _
                               1)                                   'compress data at compression level 1 (fastest compression)
            Case 2
                Call ZCompress(CompressedData(0), _
                               CompressedSize, _
                               UncompressedData(0), _
                               UncompressedSize, _
                               2)                                   'compress data at compression level 2
            Case 3
                Call ZCompress(CompressedData(0), _
                               CompressedSize, _
                               UncompressedData(0), _
                               UncompressedSize, _
                               3)                                   'compress data at compression level 3
            Case 4
                Call ZCompress(CompressedData(0), _
                               CompressedSize, _
                               UncompressedData(0), _
                               UncompressedSize, _
                               4)                                   'compress data at compression level 4
            Case 5
                Call ZCompress(CompressedData(0), _
                               CompressedSize, _
                               UncompressedData(0), _
                               UncompressedSize, _
                               5)                                   'compress data at compression level 5
            Case 6
                Call ZCompress(CompressedData(0), _
                               CompressedSize, _
                               UncompressedData(0), _
                               UncompressedSize, _
                               6)                                   'compress data at compression level 6 (default)
            Case 7
                Call ZCompress(CompressedData(0), _
                               CompressedSize, _
                               UncompressedData(0), _
                               UncompressedSize, _
                               7)                                   'compress data at compression level 7
            Case 8
                Call ZCompress(CompressedData(0), _
                               CompressedSize, _
                               UncompressedData(0), _
                               UncompressedSize, _
                               8)                                   'compress data at compression level 8
            Case 9
                Call ZCompress(CompressedData(0), _
                               CompressedSize, _
                               UncompressedData(0), _
                               UncompressedSize, _
                               9)                                   'compress data at compression level 9 (maximum compression)
        End Select
        ReDim Preserve CompressedData(CompressedSize - 1)           'resize output buffer to actual size
    End If
    Compress = CompressedData                                       'return output buffer
    Erase CompressedData                                            'deallocate output buffer
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Function

Public Function Uncompress(CompressedData() As Byte, UncompressedSize As Long)
    On Error GoTo ErrHandler
    
    Dim UncompressedData() As Byte                                  'output buffer
    Dim CompressedSize As Long                                      'compressed size in bytes
    
    If StrPtr(CompressedData) <> 0 And UncompressedSize > 0 Then    'If CompressedData contains data and the size of the original file is > 0
        CompressedSize = UBound(CompressedData) + 1                 'Get size of compressed data
        ReDim UncompressedData(UncompressedSize - 1)                'Allocate output buffer
        Call ZUncompress(UncompressedData(0), _
                         UncompressedSize, _
                         CompressedData(0), _
                         CompressedSize)                            'Uncompress to output buffer
    End If
    Uncompress = UncompressedData                                   'Return output buffer, which is empty if UncompressedSize = 0
    Erase UncompressedData                                          'Deallocate output buffer
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Function
