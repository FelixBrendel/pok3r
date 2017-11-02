;Use Capslock as a modifier and not as capslock anymore
^::Esc

$*Capslock::
    Gui, 99:+ToolWindow
    Gui, 99:Show, x-1 w1 NoActivate, Capslock Is Down
    keywait, Capslock
    Gui, 99:Destroy
    return

;Write functions for keys while capslock is beeing hold here
#IfWinExist, Capslock Is Down
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
    h::Home
    o::PgDn
    u::PgUp
    n::End
    k::Down
    i::Up
    l::Right
    j::Left
	BS::Del
	^::^
#IfWinExist

;Use right and left shifts to toggle capslock
RShift & LShift::
    SetCapsLockState, % (State:=!State) ? "On" : "Off"
    return

LShift & RShift::
    SetCapsLockState, % (State:=!State) ? "On" : "Off"
    return