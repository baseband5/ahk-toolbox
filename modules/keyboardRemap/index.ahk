#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Wa rn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#InstallKeybdHook
#useHook On

SetTitleMatchMode RegEx




#F2::
  Run chrome.exe
return

#F5::WinShortcut("C:\Users\Kamil\Downloads", "Pobrane") 
#F6::WinShortcut("C:\Users\Kamil\Documents", "Dokumenty")    
#F7::WinShortcut("C:\Users\Kamil\Documents\scripts", "scripts")    
#F8::WinShortcut("C:\Users\Kamil\Documents\instalki", "instalki")    


#If WinActive("ahk_class ExploreWClass") || WinActive("ahk_class CabinetWClass")
    ^+t::
        NewTextFile()
        return
#IfWinActive

#+r::Reload 

#Enter::
  Run wt.exe
return


~!tab::
  keywait lalt
  sleep 500
  CenterToWindow()
return






;Super + f      Maximize if nor, restore if yes
#f::
  WinGet, maxi, MinMax, A
  if maxi {
    Winrestore, A
  }
  else
  {
    WinMaximize, A ; Assign a hotkey to maximize the active window.
  }
  keywait lwin
  sleep 500
  CenterToWindow()
return

;Any + Alt + esc
~!ESC::
  keywait esc
  sleep 500
  CenterToWindow()
return


#r::
  Send, ^{Space}
return

#0::
  RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 0
  DllCall("user32.dll\LockWorkStation")
return


;Super + Shift + q     close app like i3wm
#+q::
  ;close app like i3wm
  PostMessage, 0x112, 0xF060,,, A
  sleep 500
  CenterToWindow()
return

#m::
  WinMinimize, A
  keywait lwin
  sleep 500
  CenterToWindow()
return

~#+left::
  keywait lwin
  sleep 500
  CenterToWindow()
return

~#+right::
  keywait lwin
  sleep 500
  CenterToWindow()
return

~#Left::
  sleep 500
  CenterToWindow()
return

~#right::
  sleep 500
  CenterToWindow()
return

~#Down::
  sleep 500
  CenterToWindow()
return

~#Up::
  sleep 500
  CenterToWindow()
return

#+h::
  send, #+{left}
return

#+j::
  send, #+{down}
return

#+k::
  send, #+{up}
return

#+l::
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 1
  send, #+{right}
return

#h::
  send, #{left}
return

#j::
  send, #{down}
return

#k::
  send, #{up}
return

#l::
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 1
  send, #{right}
return



;
; Caps lock as modifier
; layer
;
;
;


CenterToWindow()
{
  CoordMode, mouse, Window
  WinGetPos,X,Y,W,H,A
  ;msgbox, "%X%, %Y%,%W%, %H%"
  xmouse:= (W//2)
  ymouse:= (H//2)
  ;msgbox, "%xmouse%, %ymouse%"
mousemove, xmouse, ymouse
}

ResizeWin(Width = 0,Height = 0)
{
  WinGetPos,X,Y,W,H,A
    Width := W + width
    Height := H + Height
  WinMove,A,,%X%,%Y%,%Width%,%Height%
}
