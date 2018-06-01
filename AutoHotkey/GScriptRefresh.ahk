^+*Space::

; Save current window
WinGet, original, , A

; ---------------------------------------

; Refresh Firefox 
Process, Exist, chrome.exe
    If(ErrorLevel) {
        WinActivate, ahk_pid %ErrorLevel%
        Send {Ctrl Down}+{r}
    }	


; ---------------------------------------



Send {Ctrl Up}
; Return to original window
WinActivate ahk_id %original%




