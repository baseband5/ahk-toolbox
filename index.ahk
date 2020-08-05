#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent

If not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%"
   ExitApp
}

Menu, Tray, Standard
Menu, Tray, Add 

RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 1

;#include %A_ScriptDir%\modules\OutlineAroundActiveWindow\index\index.ahk
#include %A_ScriptDir%\modules\changeSoundCard\index.ahk
#include %A_ScriptDir%\modules\quickDir\index.ahk
#include %A_ScriptDir%\modules\newTextFile\index.ahk
#include %A_ScriptDir%\modules\altTabHook\index.ahk
#include %A_ScriptDir%\modules\keyboardLed\index.ahk
#include %A_ScriptDir%\modules\vimdows\index.ahk
#include %A_ScriptDir%\modules\keyboardRemap\index.ahk

