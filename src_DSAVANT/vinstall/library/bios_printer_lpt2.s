; Send the supplied AX command to the second printer port through BIOS INT 17h.
	include lmacros.h

	procdef bios_printer_lpt2,<<printer_command,word>>
	pushs di,si
	mov ax,printer_command
	mov dx,1	; Select printer port 1 (LPT2).
	int 17h		; BIOS printer service uses the command in AX.
	pops si,di
	mov sp,bp	; Restore the caller's stack frame.
	pret
	pend bios_printer_lpt2
	finish
	end
