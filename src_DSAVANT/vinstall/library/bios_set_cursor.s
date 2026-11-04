; Set the BIOS text cursor to the supplied row and column.
	include lmacros.h

	procdef bios_set_cursor,<<row,word>,<column,word>>
	pushs di,si
	mov bx,row
	mov dx,column
	mov dh,bl	; The BIOS cursor service takes the row in DH.
	mov bh,0
	video 2	; Set the cursor position on display page zero.
	pops si,di
	mov sp,bp	; Restore the caller's stack frame.
	pret
	pend bios_set_cursor
	finish
	end
