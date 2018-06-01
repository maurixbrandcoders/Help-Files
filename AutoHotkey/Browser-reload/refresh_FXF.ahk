^+*Space::

; Save current window
WinGet, original, , A

; ---------------------------------------

; Refresh Firefox 
Process, Exist, firefox.exe
    If(ErrorLevel) {
        WinActivate, ahk_pid %ErrorLevel%
        Send {F5}
    }	


; ---------------------------------------


; use only if need to send enter to 
; confirm window refresh notice

Process, Exist, firefox.exe
Send {Enter}
; ControlSend, ,{enter}, firefox.exe

; Return to original window
WinActivate ahk_id %original%




