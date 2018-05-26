^Numpad2::

Process, Exist, cmd.exe
    If(ErrorLevel) {
        WinActivate, ahk_pid %ErrorLevel%
        Send git start prodfix/CBB-
    }

; Return to original window
WinActivate ahk_id %original%
	
