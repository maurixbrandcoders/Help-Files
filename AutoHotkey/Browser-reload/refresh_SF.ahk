^+*Space::

; Save current window
WinGet, original, , A

; ---------------------------------------

; Refresh Safari 
Process, Exist, safari.exe
    If(ErrorLevel) {
        WinActivate, ahk_pid %ErrorLevel%
        Send {F5}
    }	


; ---------------------------------------


; use only if need to send enter to 
; confirm window refresh notice

Process, Exist, safari.exe
Send {Enter}
; ControlSend, ,{enter}, safari.exe

; Return to original window
WinActivate ahk_id %original%