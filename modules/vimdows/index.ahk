#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Wa rn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#InstallKeybdHook
#useHook On

SetTitleMatchMode RegEx


laptop:=0

;tkl to 60%
#if, (laptop != 1)
*up::
*down::
*left::
*right::
*f1::
*f2::
*f3::
*f4::
*f5::
*f6::
*f7::
*f8::
*f9::
*f10::
*f11::
*f12::
*esc::
*delete::
*pgup::
*pgdn::
*insert::
*home::
*end::
return
#IF

;Remap esc to capslock for good


*AppsKey::
  Kled(1,"on")
  
	KeyWait, AppsKey
  Kled(1,"off")
  
	If (A_PriorKey="AppsKey")
		Send, {AppsKey}
    ;SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
return 

*CapsLock::
  Kled(4,"on")
SetCapsLockState , AlwaysOff

	KeyWait, CapsLock
  Kled(4,"off")
  
	If (A_PriorKey="CapsLock")
		Send, {ESC}
    ;SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "off"
Return





#If, GetKeyState("CapsLock", "P") ;Your CapsLock hotkeys go below

`::
1::
2::
3::
4::
return
+4::send, {end}
5::
6::
7::
return
0::send, {home}
-::
=::

q::
return
+q::laptop:=!laptop
w::send, ^{right}
+w::send, ^+{right}
e::
r::
t::
return
y::send, ^c
u::send, ^z
+u::send, {pgup}
i::
o::
return
p::send, ^v
[::send, ^+{tab}
]::send, ^{tab}
+[::send, ^1
+]::send ^9


a::
s::
return
d::send, ^x
+d::send, {pgdn}
f::
return
g::send, {pgup 99}
+g::send, {pgdn 99}

h::Left
j::Down
k::Up
l::Right ;
'::
SC027:: ;semicolon
enter::


z::
return
x::send, {del}
c::
v::
return
b::send, ^{left}
+b::send,^+{left}
n:: 
m::
,::
.::
return
/::^f

Space::send !{Home} ;keypirinha use



#If, GetKeyState("AppsKey", "P") ;Your CapsLock hotkeys go below
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

q::Send  {Volume_Mute}
w::Send   {Volume_Up}

e::Send   {Volume_Down}
r:: Reload
t::
y::
u::
i::
o::
p::
[::
]::
return

a::Send        {Media_Prev}
s::Send       {Media_Play_Pause}
d::Send       {Media_Stop}
f::Send       {Media_Next}

g::

h::
j::
k::
l::
'::


SC027:: ;semicolon
enter::

z::
x::
return
c::toggleAudio()
v::
b::
+b::
n::
m::
,::
.::
/::
return


;Free context

#IF 