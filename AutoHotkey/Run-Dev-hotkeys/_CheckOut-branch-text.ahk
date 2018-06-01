^+NumpadSub::

Process, Exist, cmd.exe
    If(ErrorLevel) {
        WinActivate, ahk_pid %ErrorLevel%
        Send git checkout CBB-	
    }

; Return to original window
WinActivate ahk_id %original%
	
