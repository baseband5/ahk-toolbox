#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent



;************************************************
;PERFORMANCE PARAMETERS DESCRITPION
;************************************************

#MaxHotkeysPerInterval 99000000	:default 70  	- prevent creating endless loops
#HotkeyInterval 99000000		;default 2000 	- Hoy much hotkeys can activate per ms
; #KeyHistory 0					;disable KeyHistory log

Process, Priority, , H ;if unstable, comment or remove this linekhkk

#MaxThreads 255				;default 10 	- How many Hotkeys + Timers .. can run simultanously 
#MaxMem 4095					;default 64MB - Max 4095	 set the Memory use for each Variable 
#MaxThreadsBuffer On			;default Off - This is the default behavior. A hotkey press will be ignored whenever that hotkey is already running its maximum number of threads (usually 1, but this can be changed with #MaxThreadsPerHotkey).

ListLines,  Off					
;ListLines Off/On can be used to selectively omit some lines from the history, which can help prevent the history from filling up too quickly (such as in a loop with many fast iterations). ListLines Off may also improve performance by a few percent.

; SetBatchLines, -1
;default 10 -  
;SetBatchLines is set to 10 ms (the default), a task that uses 20 ms of CPU time will run for ~10 ms, sleep to allow other processes to run, and then run for the final 10 ms. If SetBatchLines is set to 2 ms, a task that uses 20 ms of CPU will sleep ~10 times before completing.

; My advice... Leave SetBatchLines at the default of 10 ms. 10 ms is a good default. Most scripts run fine with this setting. If needed, increase SetBatchLines to a higher value (20ms, 50ms, -1, etc.) if one or more of your tasks needs more priority.

SetBatchLines, 10ms 
;SetBatchLines, 1000

SetTitleMatchMode fast
;Fast: This is the default behavior. Performance may be substantially better than Slow, but certain WinText elements for some types of windows may not be "seen" by the various window commands.
;The built-in variables A_TitleMatchMode and A_TitleMatchModeSpeed contain the current settings.


SetKeyDelay, -1, -1
; default 10 - Sets the delay that will occur after each keystroke sent by Send and ControlSend. -1 
;Use -1 for no delay at all and 0 for the smallest possible delay 

SetMouseDelay, -1 
;Sets the delay that will occur after each mouse movement or click.
;
;default 10 - Sets the delay that will occur after each mouse movement or click.

SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input	; Recommended for new scripts due to its superior speed and reliability.




If not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%"
   ExitApp
}

; Menu, Tray, Standard
; Menu, Tray, Add 

RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 1

; #include %A_ScriptDir%\modules\OutlineAroundActiveWindow\index.ahk ; Broken ATM need changes
#include %A_ScriptDir%\modules\changeSoundCard\index.ahk
#include %A_ScriptDir%\modules\alwaysOnTop\index.ahk
#include %A_ScriptDir%\modules\quickDir\index.ahk
#include %A_ScriptDir%\modules\newTextFile\index.ahk
#include %A_ScriptDir%\modules\altTabHook\index.ahk
#include %A_ScriptDir%\modules\keyboardLed\index.ahk
#include %A_ScriptDir%\modules\vimdows\index.ahk
#include %A_ScriptDir%\modules\keyboardRemap\index.ahk

