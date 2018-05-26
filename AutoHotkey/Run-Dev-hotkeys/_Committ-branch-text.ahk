^+NumpadAdd::

Process, Exist, cmd.exe
    If(ErrorLevel) {
        WinActivate, ahk_pid %ErrorLevel%
        Send git add -A && git commit -am "
    }

; Return to original window
WinActivate ahk_id %original%
	
