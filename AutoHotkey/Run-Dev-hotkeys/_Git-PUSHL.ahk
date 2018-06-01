^+Up::

Process, Exist, cmd.exe
    If(ErrorLevel) {
        WinActivate, ahk_pid %ErrorLevel%
        Send git push origin CBB-
    }

; Return to original window
WinActivate ahk_id %original%
	
