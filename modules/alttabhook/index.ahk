#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Lwin & Tab::
if WinExist("ahk_class keypirinha_wndcls_run") 
  WinActivate
If WinActive("ahk_class keypirinha_wndcls_run") != 0x0 {
        SendInput {ESC}{ESC}
        return
}
KeyWait Lwin
Send, ^{Space}
if WinExist("ahk_class keypirinha_wndcls_run") 
  WinActivate
If WinActive("ahk_class keypirinha_wndcls_run") != 0x0 {
        Send {Raw}Tab
        Send {Tab}
}

Return
