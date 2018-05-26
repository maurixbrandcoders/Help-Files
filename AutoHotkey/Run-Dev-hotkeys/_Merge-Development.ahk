^+NumpadDiv::

Process, Exist, cmd.exe
    If(ErrorLevel) {
        WinActivate, ahk_pid %ErrorLevel%
        Send git merge development {ENTER}
    }

; Return to original window
WinActivate ahk_id %original%
	
