#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Wa rn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#InstallKeybdHook
#useHook On

SetTitleMatchMode RegEx

;tkl to 60%
up::
down::
left::
right::
f1::
f2::
f3::
f4::
f5::
f6::
f7::
f8::
f9::
f10::
f11::
f12::
esc::

;Remap esc to capslock for good


CapsLock::
	KeyWait, CapsLock
	If (A_PriorKey="CapsLock")
		Send, {ESC}
    ;SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
Return

#If, GetKeyState("CapsLock", "P") ;Your CapsLock hotkeys go below


k::Up
h::Left
j::Down
l::Right ;u::Send {Home}

u::send, ^z
^u::send, {pgup}
d::send, ^x
^d::send, {pgdn}

g::send, {home}
+g::send, {end}
y::send, ^c
p::send, ^v

[::send, ^+{tab}
]::send, ^{tab}
+[::send, ^1
+]::send ^9

`::
  If GetKeyState("CapsLock", "T") = 0 {
      SetCapsLockState, AlwaysOn
 }
  Else { 
      SetCapsLockState, AlwaysOff
  }
return



1::f1
2::f2
3::f3
4::f4
5::f5
6::f6
7::f7
8::f8
9::f9
0::f10
-::f11
=::f12  

return
