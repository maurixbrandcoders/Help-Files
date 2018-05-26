^NumPad7::

Process, Exist, cmd.exe
    If(ErrorLevel) {
        WinActivate, ahk_pid %ErrorLevel%
        Send php artisan roofing:built {ENTER}
    }

; Return to original window
WinActivate ahk_id %original%
	
