#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Wa rn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#InstallKeybdHook
#useHook On

SetTitleMatchMode RegEx

;tkl to 60%
;up::
;down::
;left::
;right::
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
delete::
pgup::
pgdn::
insert::
home::
end::


;Remap esc to capslock for good


AppsKey::
  KeyboardLED(1,"on",0)
  KeyboardLED(1,"on",1)
  KeyboardLED(1,"on",2)
  KeyboardLED(1,"on",3)
  KeyboardLED(1,"on",4)
  KeyboardLED(1,"on",5)
  KeyboardLED(1,"on",6)
	KeyWait, AppsKey
  KeyboardLED(4,"off",0)
  KeyboardLED(4,"off",1)
  KeyboardLED(4,"off",2)
  KeyboardLED(4,"off",3)
  KeyboardLED(4,"off",4)
  KeyboardLED(4,"off",5)
  KeyboardLED(4,"off",6)
	If (A_PriorKey="AppsKey")
		Send, {AppsKey}
    ;SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
return 

CapsLock::
  KeyboardLED(4,"on",0)
  KeyboardLED(4,"on",1)
  KeyboardLED(4,"on",2)
  KeyboardLED(4,"on",3)
  KeyboardLED(4,"on",4)
  KeyboardLED(4,"on",5)
  KeyboardLED(4,"on",6)
	KeyWait, CapsLock
  KeyboardLED(4,"off",0)
  KeyboardLED(4,"off",1)
  KeyboardLED(4,"off",2)
  KeyboardLED(4,"off",3)
  KeyboardLED(4,"off",4)
  KeyboardLED(4,"off",5)
  KeyboardLED(4,"off",6)
  
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
+4::send, {end}
5::
6::
7::
0::send, {home}
-::
=::

q::
w::send, ^{right}
+w::send, ^+{right}
e::
r::
t::
y::send, ^c
u::send, ^z
^u::send, {pgup}
i::
o::
p::send, ^v
[::send, ^+{tab}
]::send, ^{tab}
+[::send, ^1
+]::send ^9


a::
s::
d::send, ^x
^d::send, {pgdn}
f::

g::send, {home}
+g::send, {end}

h::Left
j::Down
k::Up
l::Right ;u::Send {Home}
'::
SC027:: ;semicolon


z::
x::send, {del}
c::
v::
b::send, ^{left}
+b::send,^+{left}
n::
m::
,::
.::
/::^f





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

q::KeyboardLED(4,"on",3)
w::KeyboardLED(4,"off",3)

e::
r:: Reload
t::
y::
u::
i::
o::
p::
[::
]::


a::KeyboardLED(4,"on",4)
s::KeyboardLED(1,"on",4)
d::
f::

g::

h::
j::
k::
l::
'::
SC027:: ;semicolon


z::
x::
c::toggleAudio()
v::
b::
+b::
n::
m::
,::
.::
/::



;Free context

#IF 