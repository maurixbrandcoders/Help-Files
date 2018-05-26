^+NumpadEnter::

Process, Exist, cmd.exe
    If(ErrorLevel) {
        WinActivate, ahk_pid %ErrorLevel%
        Send npm run dev {ENTER}
    }

; Return to original window
WinActivate ahk_id %original%
	
