^+Down::

Process, Exist, cmd.exe
    If(ErrorLevel) {
        WinActivate, ahk_pid %ErrorLevel%
        Send git pull {ENTER}
    }

; Return to original window
WinActivate ahk_id %original%
	
