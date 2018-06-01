^+NumpadMult::

Process, Exist, cmd.exe
    If(ErrorLevel) {
        WinActivate, ahk_pid %ErrorLevel%
        Send git merge production {ENTER}
    }

; Return to original window
WinActivate ahk_id %original%
	
