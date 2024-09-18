SetCapsLockState, AlwaysOff

#IfWinActive ahk_exe ONENOTE.exe
; https://stackoverflow.com/questions/44170454/up-down-key-not-working-in-onenote-2016-for-autohotkey
CapsLock & j::ControlSend, OneNote::DocumentCanvas1, {Down}
CapsLock & k::ControlSend, OneNote::DocumentCanvas1, {Up}
#IfWinActive

;===========================;A = Left
CapsLock & a::
if getkeystate("shift") = 1
Send, ^{Left}
else if getkeystate("alt") = 0  
Send, {Left}
else
Send, +{Left}
return

;===========================;S = Down
CapsLock & s::
if getkeystate("shift") = 1
Send, ^{Down}
else if getkeystate("alt") = 0
Send, {Down}
else
Send, +{Down}
return

;===========================;W = UP
CapsLock & w::
if getkeystate("shift") = 1
Send, ^{Up}
else if getkeystate("alt") = 0
Send, {Up}
else
Send, +{Up}
return

;===========================;D = Right
CapsLock & d::
if getkeystate("shift") = 1
Send, ^{Right}
else if getkeystate("alt") = 0
Send, {Right}
else
Send, +{Right}
return

;===========================;Q = Backspace
CapsLock & q::
if getkeystate("shift") = 1
    Send, ^+{Left}{Backspace}
else if getkeystate("alt") = 0  
    Send, {Backspace}
return

;===========================;Z = Home
CapsLock & z::
Send, {Home}
return

;===========================;C = End
CapsLock & c::
Send, {End}
return

;===========================;E = Enter
CapsLock & e::
Send, {Enter}
return

;===========================;X = Delete Current Line
CapsLock & x::
Send, {Home}
Send, +{End}
Send, {Delete}
return