Attribute VB_Name = "modUserIO"
Option Explicit

Public Declare Function GetOpenFileName Lib "comdlg32.dll" Alias "GetOpenFileNameA" (pOpenfilename As OPENFILENAME) As Long
Public Declare Function GetSaveFileName Lib "comdlg32.dll" Alias "GetSaveFileNameA" (pOpenfilename As OPENFILENAME) As Long

Private Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, lpvParam As Any, ByVal fuWinIni As Long) As Long

Private Declare Function LoadLibrary Lib "kernel32" Alias "LoadLibraryA" (ByVal lpLibFileName As String) As Long
Private Declare Function GetProcAddress Lib "kernel32" (ByVal hModule As Long, ByVal lpProcName As String) As Long
Private Declare Function FreeLibrary Lib "kernel32" (ByVal hLibModule As Long) As Long

Private Declare Function IsAppThemed Lib "uxtheme.dll" () As Boolean

Dim IsThemed As Boolean

Public Type OPENFILENAME
    StructureSize               As Long
    hWindowOwner                As Long
    hInstance                   As Long
    Filter                      As String
    CustomFilter                As String
    CustomFilterSize            As Long
    FilterIndex                 As Long
    FileName                    As String
    MaxFileNameSize             As Long
    FileTitle                   As String
    MaxFileTitleSize            As Long
    InitialDirectory            As String
    DialogTitle                 As String
    flags                       As Long
    FileNameOffset              As Integer
    FileNameExtensionOffset     As Integer
    DefaultExtension            As String
    CustomData                  As Long
    Hook                        As Long
    TemplateName                As String
End Type

Public Type RECT
    Left    As Long
    Top     As Long
    Right   As Long
    Bottom  As Long
End Type

Public Const OFN_ALLOWMULTISELECT = &H200
    'Specifies that the File Name list box allows multiple selections. If you
    'also set the OFN_EXPLORER flag, the dialog box uses the Explorer-style
    'user interface; otherwise, it uses the old-style user interface.
    '
    'If the user selects more than one file, the lpstrFile buffer returns the
    'path to the current directory followed by the file names of the selected
    'files. The nFileOffset member is the offset, in bytes or characters, to
    'the first file name, and the nFileExtension member is not used. For
    'Explorer-style dialog boxes, the directory and file name strings are
    'NULL separated, with an extra NULL character after the last file name.
    'This format enables the Explorer-style dialog boxes to return long file
    'names that include spaces. For old-style dialog boxes, the directory and
    'file name strings are separated by spaces and the function uses short file
    'names for file names with spaces. You can use the FindFirstFile function
    'to convert between long and short file names.
    '
    'If you specify a custom template for an old-style dialog box, the
    'definition of the File Name list box must contain the LBS_EXTENDEDSEL
    'value.
Public Const OFN_CREATEPROMPT = &H2000
    'If the user specifies a file that does not exist, this flag causes the
    'dialog box to prompt the user for permission to create the file. If the
    'user chooses to create the file, the dialog box closes and the function
    'returns the specified name; otherwise, the dialog box remains open. If
    'you use this flag with the OFN_ALLOWMULTISELECT flag, the dialog box
    'allows the user to specify only one nonexistent file.
Public Const OFN_DONTADDTORECENT = &H2000000
    'Windows 2000/XP: Prevents the system from adding a link to the selected
    'file in the file system directory that contains the user's most recently
    'used documents. To retrieve the location of this directory, call the
    'SHGetSpecialFolderLocation function with the CSIDL_RECENT flag.
Public Const OFN_ENABLEHOOK = &H20
    'Enables the hook function specified in the lpfnHook member.
Public Const OFN_ENABLEINCLUDENOTIFY = &H400000
    'Windows 2000/XP: Causes the dialog box to send CDN_INCLUDEITEM
    'notification messages to your OFNHookProc hook procedure when the user
    'opens a folder. The dialog box sends a notification for each item in the
    'newly opened folder. These messages enable you to control which items
    'the dialog box displays in the folder's item list.
Public Const OFN_ENABLESIZING = &H800000
    'Windows 2000/XP, Windows 98/Me: Enables the Explorer-style dialog box to
    'be resized using either the mouse or the keyboard. By default, the
    'Explorer-style Open and Save As dialog boxes allow the dialog box to be
    'resized regardless of whether this flag is set. This flag is necessary
    'only if you provide a hook procedure or custom template. The old-style
    'dialog box does not permit resizing.
Public Const OFN_ENABLETEMPLATE = &H40
    'Indicates that the lpTemplateName member is a pointer to the name of a
    'dialog template resource in the module identified by the hInstance member.
    'If the OFN_EXPLORER flag is set, the system uses the specified template to
    'create a dialog box that is a child of the default Explorer-style dialog
    'box. If the OFN_EXPLORER flag is not set, the system uses the template to
    'create an old-style dialog box that replaces the default dialog box.
Public Const OFN_ENABLETEMPLATEHANDLE = &H80
    'Indicates that the hInstance member identifies a data block that contains
    'a preloaded dialog box template. The system ignores lpTemplateName if this
    'flag is specified. If the OFN_EXPLORER flag is set, the system uses the
    'specified template to create a dialog box that is a child of the default
    'Explorer-style dialog box. If the OFN_EXPLORER flag is not set, the system
    'uses the template to create an old-style dialog box that replaces the
    'default dialog box.
Public Const OFN_EXPLORER = &H80000
    'Indicates that any customizations made to the Open or Save As dialog box
    'use the new Explorer-style customization methods. For more information,
    'see Explorer-Style Hook Procedures and Explorer-Style Custom Templates.
    '
    'By default, the Open and Save As dialog boxes use the Explorer-style user
    'interface regardless of whether this flag is set. This flag is necessary
    'only if you provide a hook procedure or custom template, or set the
    'OFN_ALLOWMULTISELECT flag.
    '
    'If you want the old-style user interface, omit the OFN_EXPLORER flag and
    'provide a replacement old-style template or hook procedure. If you want
    'the old style but do not need a custom template or hook procedure, simply
    'provide a hook procedure that always returns FALSE.
Public Const OFN_EXTENSIONDIFFERENT = &H400
    'Specifies that the user typed a file name extension that differs from the
    'extension specified by lpstrDefExt. The function does not use this flag if
    'lpstrDefExt is NULL.
Public Const OFN_FILEMUSTEXIST = &H1000
    'Specifies that the user can type only names of existing files in the File
    'Name entry field. If this flag is specified and the user enters an invalid
    'name, the dialog box procedure displays a warning in a message box. If
    'this flag is specified, the OFN_PATHMUSTEXIST flag is also used. This flag
    'can be used in an Open dialog box. It cannot be used with a Save As dialog
    'box.
Public Const OFN_FORCESHOWHIDDEN = &H10000000
    'Windows 2000/XP: Forces the showing of system and hidden files, thus
    'overriding the user setting to show or not show hidden files. However, a
    'file that is marked both system and hidden is not shown.
Public Const OFN_HIDEREADONLY = &H4
    'Hides the Read Only check box.
Public Const OFN_LONGNAMES = &H200000
    'For old-style dialog boxes, this flag causes the dialog box to use long
    'file names. If this flag is not specified, or if the OFN_ALLOWMULTISELECT
    'flag is also set, old-style dialog boxes use short file names (8.3 format)
    'for file names with spaces. Explorer-style dialog boxes ignore this flag
    'and always display long file names.
Public Const OFN_NOCHANGEDIR = &H8
    'Restores the current directory to its original value if the user changed
    'the directory while searching for files.
    '
    'Windows NT 4.0/2000/XP: This flag is ineffective for GetOpenFileName.
Public Const OFN_NODEREFERENCELINKS = &H100000
    'Directs the dialog box to return the path and file name of the selected
    'shortcut (.LNK) file. If this value is not specified, the dialog box
    'returns the path and file name of the file referenced by the shortcut.
Public Const OFN_NOLONGNAMES = &H40000
    'For old-style dialog boxes, this flag causes the dialog box to use short
    'file names (8.3 format). Explorer-style dialog boxes ignore this flag and
    'always display long file names.
Public Const OFN_NONETWORKBUTTON = &H20000
    'Hides and disables the Network button.
Public Const OFN_NOREADONLYRETURN = &H8000
    'Specifies that the returned file does not have the Read Only check box
    'selected and is not in a write-protected directory.
Public Const OFN_NOTESTFILECREATE = &H10000
    'Specifies that the file is not created before the dialog box is closed.
    'This flag should be specified if the application saves the file on a
    'create-nonmodify network share. When an application specifies this flag,
    'the library does not check for write protection, a full disk, an open
    'drive door, or network protection. Applications using this flag must
    'perform file operations carefully, because a file cannot be reopened once
    'it is closed.
Public Const OFN_NOVALIDATE = &H100
    'Specifies that the common dialog boxes allow invalid characters in the
    'returned file name. Typically, the calling application uses a hook
    'procedure that checks the file name by using the FILEOKSTRING message.
    'If the text box in the edit control is empty or contains nothing but
    'spaces, the lists of files and directories are updated. If the text box
    'in the edit control contains anything else, nFileOffset and nFileExtension
    'are set to values generated by parsing the text. No default extension is
    'added to the text, nor is text copied to the buffer specified by
    'lpstrFileTitle. If the value specified by nFileOffset is less than zero,
    'the file name is invalid. Otherwise, the file name is valid, and
    'nFileExtension and nFileOffset can be used as if the OFN_NOVALIDATE flag
    'had not been specified.
Public Const OFN_OVERWRITEPROMPT = &H2
    'Causes the Save As dialog box to generate a message box if the selected
    'file already exists. The user must confirm whether to overwrite the file.
Public Const OFN_PATHMUSTEXIST = &H800
    'Specifies that the user can type only valid paths and file names. If this
    'flag is used and the user types an invalid path and file name in the File
    'Name entry field, the dialog box function displays a warning in a message
    'box.
Public Const OFN_READONLY = &H1
    'Causes the Read Only check box to be selected initially when the dialog
    'box is created. This flag indicates the state of the Read Only check box
    'when the dialog box is closed.
Public Const OFN_SHAREAWARE = &H4000
    'Specifies that if a call to the OpenFile function fails because of a
    'network sharing violation, the error is ignored and the dialog box returns
    'the selected file name. If this flag is not set, the dialog box notifies
    'your hook procedure when a network sharing violation occurs for the file
    'name specified by the user. If you set the OFN_EXPLORER flag, the dialog
    'box sends the CDN_SHAREVIOLATION message to the hook procedure. If you do
    'not set OFN_EXPLORER, the dialog box sends the SHAREVISTRING registered
    'message to the hook procedure.
Public Const OFN_SHOWHELP = &H10
    'Causes the dialog box to display the Help button. The hwndOwner member
    'must specify the window to receive the HELPMSGSTRING registered messages
    'that the dialog box sends when the user clicks the Help button. An
    'Explorer-style dialog box sends a CDN_HELP notification message to your
    'hook procedure when the user clicks the Help button.
Public Const OFN_USESHELLITEM = &H1000000
    'Do not use.

Private Const SPI_GETWORKAREA = 48

Public Sub CenterWindow(Target As Form)
    On Error GoTo ErrHandler
    
    Dim rc As RECT
    
    Call SystemParametersInfo(SPI_GETWORKAREA, 0&, rc, 0&)
    
    'MsgBox "Left:" & Space(10) & rc.Left & Chr(13) & _
           "Top:" & Space(10) & rc.Top & Chr(13) & _
           "Right:" & Space(7) & rc.Right & Chr(13) & _
           "Bottom:" & Space(5) & rc.Bottom & Chr(13)
    
    Target.Left = 0.5 * (rc.Right * Screen.TwipsPerPixelX) - 0.5 * Target.Width
    Target.Top = 0.5 * (rc.Bottom * Screen.TwipsPerPixelY) - 0.5 * Target.Height
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Public Sub ResizeWindow(Target As Form, TargetHeight As Long, TargetWidth As Long)
    On Error GoTo ErrHandler
    
    'Add offsets based on whether the application is themed or not.
    TargetHeight = TargetHeight + IsThemed * 125
    TargetWidth = TargetWidth + IsThemed * 0
    
    Target.Height = TargetHeight
    Target.Width = TargetWidth
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub

Public Sub CheckTheme()
    Dim hModule As Long, procAddr As Long
    
    ' first, attempt to load the module
    hModule = LoadLibrary("uxtheme")
    
    If hModule Then
        ' then, retrieve the address of the routine
        procAddr = GetProcAddress(hModule, "IsAppThemed")
        ' finally, decrement the DLL usage counter
        FreeLibrary hModule
    End If
    
    ' if procAddr is non-zero, the function is available
    If procAddr Then
        IsThemed = IsAppThemed
    End If
End Sub

Public Sub ShowOFNContents(OFNVariable As OPENFILENAME)
    On Error GoTo ErrHandler
    
    Debug.Print "StructureSize: " & OFNVariable.StructureSize & Chr(13) & _
                "hWindowOwner: " & OFNVariable.hWindowOwner & Chr(13) & _
                "hInstance: " & OFNVariable.hInstance & Chr(13) & _
                "Filter: " & OFNVariable.Filter & Chr(13) & _
                "CustomFilter: " & OFNVariable.CustomFilter & Chr(13) & _
                "CustomFilterSize: " & OFNVariable.CustomFilterSize & Chr(13) & _
                "FilterIndex: " & OFNVariable.FilterIndex & Chr(13) & _
                "FileName: " & Trim(OFNVariable.FileName) & Chr(13) & _
                "MaxFileNameSize: " & OFNVariable.MaxFileNameSize & Chr(13) & _
                "FileTitle: " & Trim(OFNVariable.FileTitle) & Chr(13) & _
                "MaxFileTitleSize: " & OFNVariable.MaxFileTitleSize & Chr(13) & _
                "InitialDirectory: " & OFNVariable.InitialDirectory & Chr(13) & _
                "DialogTitle: " & OFNVariable.DialogTitle & Chr(13) & _
                "flags: " & OFNVariable.flags & Chr(13) & _
                "FileNameOffset: " & OFNVariable.FileNameOffset & Chr(13) & _
                "FileNameExtensionOffset: " & OFNVariable.FileNameExtensionOffset & Chr(13) & _
                "DefaultExtension: " & OFNVariable.DefaultExtension & Chr(13) & _
                "CustomData: " & OFNVariable.CustomData & Chr(13) & _
                "Hook: " & OFNVariable.Hook & Chr(13) & _
                "TemplateName: " & OFNVariable.TemplateName, , "OFN Contents"
    
    GoTo EndSub
    
ErrHandler:
    MsgBox "Error Number: " & Err.Number & Chr(13) & _
           "Error Source: " & Err.Source & Chr(13) & _
           "Error Description: " & Err.Description & Chr(13)
    Err.Clear
    
EndSub:
End Sub
