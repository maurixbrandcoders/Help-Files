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

; Refresh mobione
Process, Exist, mobione.exe
   If(ErrorLevel) {
	WinActivate, ahk_pid %ErrorLevel%
        Send {F5}
    }

Process, Exist, chrome.exe
   If(ErrorLevel) {
	WinActivate, ahk_pid %ErrorLevel%
        Send {F5}
    }
; ---------------------------------------

; Return to original window
WinActivate ahk_id %original%