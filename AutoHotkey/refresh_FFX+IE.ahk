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

; Refresh Internet Explorer
Process, Exist, iexplore.exe
    If(ErrorLevel) {
        WinActivate, ahk_pid %ErrorLevel%
        Send {F5}
    }	

; ---------------------------------------

; Return to original window
WinActivate ahk_id %original%