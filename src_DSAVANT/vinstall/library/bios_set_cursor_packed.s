; Set the BIOS text cursor from the supplied position word.
	include lmacros.h

	procdef bios_set_cursor_packed,<<cursor_position,word>>
	pushs di,si
	mov dx,cursor_position
	mov bh,0	; Select display page zero.
	video 2	; Set the BIOS text cursor position.
	pops si,di
	mov sp,bp	; Restore the caller's stack frame.
	pret
	pend bios_set_cursor_packed
	finish
	end
