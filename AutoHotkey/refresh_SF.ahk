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

; Return to original window
WinActivate ahk_id %original%