#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^+SPACE::
	WinGetTitle, activeWindow, A
	if IsWindowAlwaysOnTop(activeWindow) {
		notificationMessage := "The window """ . activeWindow . """ is now always on top."
		notificationIcon := 16 + 1 ; No notification sound (16) + Info icon (1)
	}
	else {
		notificationMessage := "The window """ . activeWindow . """ is no longer always on top."
		notificationIcon := 16 + 2 ; No notification sound (16) + Warning icon (2)
	}
	Winset, Alwaysontop, , A
	TrayTip, Always-on-top, %notificationMessage%, , %notificationIcon% 
	Sleep 3000 ; Let it display for 3 seconds.
	HideTrayTip()

	IsWindowAlwaysOnTop(windowTitle) {
		WinGet, windowStyle, ExStyle, %windowTitle%
		isWindowAlwaysOnTop := if (windowStyle & 0x8) ? false : true ; 0x8 is WS_EX_TOPMOST.
		return isWindowAlwaysOnTop
	}

	HideTrayTip() {
		TrayTip  ; Attempt to hide it the normal way.
		if SubStr(A_OSVersion,1,3) = "10." {
			Menu Tray, NoIcon
			Sleep 200  ; It may be necessary to adjust this sleep.
			Menu Tray, Icon
		}
	}
Return