Attribute VB_Name = "modPreferences"
Option Explicit

'Preference Variables
Public CFilePrefix As String
Public DFilePrefix As String
Public CompressionLevel As Integer
Public OverwriteFiles As Integer
Public UseGlobalDefaultPath As Integer

Public GlobalDefaultPath As String
Public CFDefaultPath As String
Public CMFDefaultPath As String
Public CPDefaultPath As String
Public CSFDefaultPath As String
Public DFDefaultPath As String
Public DMFDefaultPath As String
Public DPDefaultPath As String
Public DSFDefaultPath As String

Public FileHeader() As Byte
Public PAKHeader() As Byte


'Default Preference Variables
Public CFilePrefix_Default As String
Public DFilePrefix_Default As String
Public CompressionLevel_Default As String
Public OverwriteFiles_Default As String
Public UseGlobalDefaultPath_Default As String

Public GlobalDefaultPath_Default As String
Public CFDefaultPath_Default As String
Public CMFDefaultPath_Default As String
Public CPDefaultPath_Default As String
Public CSFDefaultPath_Default As String
Public DFDefaultPath_Default As String
Public DMFDefaultPath_Default As String
Public DPDefaultPath_Default As String
Public DSFDefaultPath_Default As String

Public FileHeader_Default As String
Public PAKHeader_Default As String


'    Platforms: Win 32s, Win 95/98, Win NT GetPrivateProfileString reads an
'    string value from an INI file. The parameters passed to the function
'    specify which value will be read from. The function always returns the
'    length in characters of the string put into the variable passed as
'    lpReturnedString. If the function was successful, the string read from
'    the INI file will be put into lpReturnedString. If not, it will instead
'    receive the string given as lpDefault. Note that INI file support is
'    only provided in Windows for backwards compatibility; using the registry
'    to store information is preferred.
'
'    lpApplicationName
'        The header of the INI file section the value is in.
'    lpKeyName
'        The name of the value to read.
'    lpDefault
'        The value to return if a valid value cannot be read. Make it
'        something that would definitely not be read, such as "(error)".
'    lpReturnedString
'        A fixed-length string that will receive either the string read
'        from the file or lpDefault.
'    nSize
'        The length in characters of lpReturnedString.
'    lpFileName
'        The filename of the INI file to read from.

Public Declare Function GetPrivateProfileString Lib "kernel32.dll" Alias "GetPrivateProfileStringA" ( _
    ByVal lpApplicationName As String, _
    ByVal lpKeyName As Any, _
    ByVal lpDefault As String, _
    ByVal lpReturnedString As String, _
    ByVal nSize As Long, _
    ByVal lpFileName As String) As Long


'    Platforms: Win 32s, Win 95/98, Win NT WritePrivateProfileString sets a
'    value inside of an INI file. This function can also be used to set
'    numerical values if they are in string form, for example using "1" to
'    represent the number 1. If the INI file you try to write to does not
'    exist, it will be created. Likewise, if the section or value does not
'    exist, it will also be created. The function returns 0 if an error
'    occurs, or 1 if successful. Note that INI file support is only provided
'    in Windows for backwards compatibility; using the registry to store
'    information is preferred.
'
'    lpApplicationName
'        The section of the INI file to write to.
'    lpKeyName
'        The name of the value to set.
'    lpString
'        The string to set as the value.
'    lpFileName
'        The filename of the INI file to write to.

Public Declare Function WritePrivateProfileString Lib "kernel32.dll" Alias "WritePrivateProfileStringA" ( _
    ByVal lpApplicationName As String, _
    ByVal lpKeyName As String, _
    ByVal lpString As String, _
    ByVal lpFileName As String) As Long

Public Sub SetDefaults()
    On Error GoTo ErrHandler
    
    CFilePrefix_Default = "pak_"
    DFilePrefix_Default = ""
    CompressionLevel_Default = "6"                      'Dropdown.  Compression levels go from 1 to 9, 1 being the fastest but lowest level of compression, 6 being the default level of compression, and 9 being the slowest but most compact level of compression.
    OverwriteFiles_Default = "2"                        'Dropdown.  0=No, 1=Yes, 2=Ask Me
    UseGlobalDefaultPath_Default = "1"                  'Checkbox.  0=Unchecked, 1=Checked
        
    GlobalDefaultPath_Default = App.Path
    CFDefaultPath_Default = App.Path & "\PAK'd"
    CMFDefaultPath_Default = App.Path & "\PAK'd"
    CPDefaultPath_Default = App.Path & "\PAK'd"
    CSFDefaultPath_Default = App.Path & "\PAK'd"
    DFDefaultPath_Default = App.Path & "\UnPAK'd"
    DMFDefaultPath_Default = App.Path & "\UnPAK'd"
    DPDefaultPath_Default = App.Path & "\UnPAK'd"
    DSFDefaultPath_Default = App.Path & "\UnPAK'd"
    
    FileHeader_Default = "0AF73D8884758493BDEFFDAB"
    PAKHeader_Default = "DE8C453D"
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Public Sub ReadINISettings()
    On Error GoTo ErrHandler
    
    Dim sDestination As String * 255
    Dim INIFile As String
    Dim myCount As Integer
    
    INIFile = App.Path & "\nft.ini"
    
    Call GetPrivateProfileString("Options", "CFilePrefix", CFilePrefix_Default, sDestination, Len(sDestination), INIFile)
    modPreferences.CFilePrefix = Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))
    Call GetPrivateProfileString("Options", "DFilePrefix", DFilePrefix_Default, sDestination, Len(sDestination), INIFile)
    modPreferences.DFilePrefix = Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))
    Call GetPrivateProfileString("Options", "CompressionLevel", CompressionLevel_Default, sDestination, Len(sDestination), INIFile)
    modPreferences.CompressionLevel = Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))
    Call GetPrivateProfileString("Options", "OverwriteFiles", OverwriteFiles_Default, sDestination, Len(sDestination), INIFile)
    modPreferences.OverwriteFiles = Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))
    Call GetPrivateProfileString("Options", "UseGlobalDefaultPath", UseGlobalDefaultPath_Default, sDestination, Len(sDestination), INIFile)
    modPreferences.UseGlobalDefaultPath = Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))
    
    Call GetPrivateProfileString("Paths", "GlobalDefaultPath", GlobalDefaultPath_Default, sDestination, Len(sDestination), INIFile)
    modPreferences.GlobalDefaultPath = Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))
    Call GetPrivateProfileString("Paths", "CFDefaultPath", CFDefaultPath_Default, sDestination, Len(sDestination), INIFile)
    modPreferences.CFDefaultPath = Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))
    Call GetPrivateProfileString("Paths", "CMFDefaultPath", CMFDefaultPath_Default, sDestination, Len(sDestination), INIFile)
    modPreferences.CMFDefaultPath = Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))
    Call GetPrivateProfileString("Paths", "CPDefaultPath", CPDefaultPath_Default, sDestination, Len(sDestination), INIFile)
    modPreferences.CPDefaultPath = Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))
    Call GetPrivateProfileString("Paths", "CSFDefaultPath", CSFDefaultPath_Default, sDestination, Len(sDestination), INIFile)
    modPreferences.CSFDefaultPath = Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))
    Call GetPrivateProfileString("Paths", "DFDefaultPath", DFDefaultPath_Default, sDestination, Len(sDestination), INIFile)
    modPreferences.DFDefaultPath = Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))
    Call GetPrivateProfileString("Paths", "DMFDefaultPath", DMFDefaultPath_Default, sDestination, Len(sDestination), INIFile)
    modPreferences.DMFDefaultPath = Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))
    Call GetPrivateProfileString("Paths", "DPDefaultPath", DPDefaultPath_Default, sDestination, Len(sDestination), INIFile)
    modPreferences.DPDefaultPath = Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))
    Call GetPrivateProfileString("Paths", "DSFDefaultPath", DSFDefaultPath_Default, sDestination, Len(sDestination), INIFile)
    modPreferences.DSFDefaultPath = Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))
    
    Call GetPrivateProfileString("Headers", "FileHeader", FileHeader_Default, sDestination, Len(sDestination), INIFile)
    ReDim modPreferences.FileHeader(Len(Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))) / 2 - 1)
    For myCount = 0 To Len(Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))) / 2 - 1
        modPreferences.FileHeader(myCount) = "&H" & Mid$(Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1)), myCount * 2 + 1, 2)
    Next myCount
    Call GetPrivateProfileString("Headers", "PAKHeader", PAKHeader_Default, sDestination, Len(sDestination), INIFile)
    ReDim modPreferences.PAKHeader(Len(Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))) / 2 - 1)
    For myCount = 0 To Len(Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1))) / 2 - 1
        modPreferences.PAKHeader(myCount) = "&H" & Mid$(Trim(Left(sDestination, InStr(sDestination, Chr(0)) - 1)), myCount * 2 + 1, 2)
    Next myCount
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Public Sub WriteINISettings()
    On Error GoTo ErrHandler
    
    Dim INIFile As String
    Dim myCount As Integer
    Dim FileHeaderString As String
    Dim PAKHeaderString As String
    
    INIFile = App.Path & "\nft.ini"
    For myCount = 0 To UBound(modPreferences.FileHeader)
        If Len(Hex(CInt(modPreferences.FileHeader(myCount)))) <> 2 Then FileHeaderString = FileHeaderString & "0"
        FileHeaderString = FileHeaderString & Hex(CInt(modPreferences.FileHeader(myCount)))
    Next myCount
    For myCount = 0 To UBound(modPreferences.PAKHeader)
        If Len(Hex(CInt(modPreferences.PAKHeader(myCount)))) <> 2 Then PAKHeaderString = PAKHeaderString & "0"
        PAKHeaderString = PAKHeaderString & Hex(CInt(modPreferences.PAKHeader(myCount)))
    Next myCount
    
    Call WritePrivateProfileString("Options", "CFilePrefix", modPreferences.CFilePrefix, INIFile)
    Call WritePrivateProfileString("Options", "DFilePrefix", modPreferences.DFilePrefix, INIFile)
    Call WritePrivateProfileString("Options", "CompressionLevel", modPreferences.CompressionLevel, INIFile)
    Call WritePrivateProfileString("Options", "OverwriteFiles", modPreferences.OverwriteFiles, INIFile)
    Call WritePrivateProfileString("Options", "UseGlobalDefaultPath", modPreferences.UseGlobalDefaultPath, INIFile)
    
    Call WritePrivateProfileString("Paths", "GlobalDefaultPath", modPreferences.GlobalDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "CFDefaultPath", modPreferences.CFDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "CMFDefaultPath", modPreferences.CMFDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "CPDefaultPath", modPreferences.CPDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "CSFDefaultPath", modPreferences.CSFDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "DFDefaultPath", modPreferences.DFDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "DMFDefaultPath", modPreferences.DMFDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "DPDefaultPath", modPreferences.DPDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "DSFDefaultPath", modPreferences.DSFDefaultPath, INIFile)
    
    Call WritePrivateProfileString("Headers", "FileHeader", FileHeaderString, INIFile)
    Call WritePrivateProfileString("Headers", "PAKHeader", PAKHeaderString, INIFile)
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Public Sub WriteDefaultINISettings()
    On Error GoTo ErrHandler
    
    Dim INIFile As String
    Dim myCount As Integer
    Dim FileHeaderString As String
    Dim PAKHeaderString As String
    
    INIFile = App.Path & "\nft.ini"
    For myCount = 0 To UBound(modPreferences.FileHeader)
        If Len(Hex(CInt(modPreferences.FileHeader(myCount)))) <> 2 Then FileHeaderString = FileHeaderString & "0"
        FileHeaderString = FileHeaderString & Hex(CInt(modPreferences.FileHeader(myCount)))
    Next myCount
    For myCount = 0 To UBound(modPreferences.PAKHeader)
        If Len(Hex(CInt(modPreferences.PAKHeader(myCount)))) <> 2 Then PAKHeaderString = PAKHeaderString & "0"
        PAKHeaderString = PAKHeaderString & Hex(CInt(modPreferences.PAKHeader(myCount)))
    Next myCount
    
    Call WritePrivateProfileString("Options", "CFilePrefix", modPreferences.CFilePrefix, INIFile)
    Call WritePrivateProfileString("Options", "DFilePrefix", modPreferences.DFilePrefix, INIFile)
    Call WritePrivateProfileString("Options", "CompressionLevel", modPreferences.CompressionLevel, INIFile)
    Call WritePrivateProfileString("Options", "OverwriteFiles", modPreferences.OverwriteFiles, INIFile)
    Call WritePrivateProfileString("Options", "UseGlobalDefaultPath", modPreferences.UseGlobalDefaultPath & Chr(13) & Chr(10), INIFile)
    
    Call WritePrivateProfileString("Paths", "GlobalDefaultPath", modPreferences.GlobalDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "CFDefaultPath", modPreferences.CFDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "CMFDefaultPath", modPreferences.CMFDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "CPDefaultPath", modPreferences.CPDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "CSFDefaultPath", modPreferences.CSFDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "DFDefaultPath", modPreferences.DFDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "DMFDefaultPath", modPreferences.DMFDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "DPDefaultPath", modPreferences.DPDefaultPath, INIFile)
    Call WritePrivateProfileString("Paths", "DSFDefaultPath", modPreferences.DSFDefaultPath & Chr(13) & Chr(10), INIFile)
    
    Call WritePrivateProfileString("Headers", "FileHeader", FileHeaderString, INIFile)
    Call WritePrivateProfileString("Headers", "PAKHeader", PAKHeaderString, INIFile)
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub
