VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   435
      Left            =   720
      TabIndex        =   0
      Top             =   2580
      Width           =   3015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function GetDC& Lib "user32" (ByVal hwnd As Long)
Private Declare Function ReleaseDC& Lib "user32" (ByVal hwnd As Long, ByVal hdc As Long)
Dim FCall As cFuncCall

Private Sub Command1_Click()
  Dim a As Long, b As Long
  Dim s() As Byte, x As Long, y As Long
  Dim str As String
  s = StrConv("Hello !", vbFromUnicode)
  str = "Hello"
  b = 15
  FCall.LibraryName = "user32"
  FCall.FunctionName = "SetWindowTextA"
  
  x = FCall.CallFunction(hwnd, VarPtr(s(0)))
  MsgBox "SetWindowTextA from user32 return " & x, vbInformation, "Call function"
  FCall.LibraryName = "kernel32"
  FCall.FunctionName = "RtlMoveMemory"
  x = FCall.CallFunction(VarPtr(a), VarPtr(b), 4&)
  MsgBox "RtlMoveMemory kernel32 fill a with " & a, vbInformation, "Call function"
  
  FCall.LibraryName = "user32"
  FCall.FunctionName = "FlashWindow"
  x = FCall.CallFunction(hwnd, 1&)
  MsgBox "FlashWindow from user32 return " & x, vbInformation, "Call function"
  
  FCall.LibraryName = "user32"
  FCall.FunctionName = "GetDc"
  dc1 = GetDC(hwnd)
  x = FCall.CallFunction(hwnd)
  MsgBox "GetDc from user32 return " & x & ", DC = " & dc1, vbInformation, "Call function"
  x = ReleaseDC(hwnd, dc1)
  FCall.LibraryName = "user32"
  FCall.FunctionName = "GetDC"
  dc1 = GetDC(hwnd)
  x = FCall.CallFunction(hwnd)
  MsgBox "GetDC from user32 return " & x & ", DC = " & dc1, vbInformation, "Call function"
  x = ReleaseDC(hwnd, dc1)
End Sub

Private Sub Form_Load()
   Set FCall = New cFuncCall
End Sub

Private Sub Form_Unload(Cancel As Integer)
   Set FCall = Nothing
End Sub
