^+*Space::

; Save current window
WinGet, original, , A

; ---------------------------------------

; Refresh Firefox
; Refresh Chrome
Process, Exist, chrome.exe
    If(ErrorLevel) {
        WinActivate, ahk_pid %ErrorLevel%
        Send {F5}
    }	


; ---------------------------------------


; use only if need to send enter to 
; confirm window refresh notice

Process, Exist, chrome.exe
Send {Enter}
; ControlSend, ,{enter}, chrome.exe

; Return to original window
WinActivate ahk_id %original%



