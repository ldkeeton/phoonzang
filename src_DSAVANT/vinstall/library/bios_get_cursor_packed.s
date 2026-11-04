; Return the current BIOS text cursor position in AX.
	include lmacros.h

	procdef bios_get_cursor_packed, <>
	push bp
	mov bp,sp
	pushs di,si
	mov bh,0	; Select display page zero.
	video 3	; Read the cursor position into DX.
	mov ax,dx	; Return the row and column word.
	pops si,di
	mov sp,bp	; Restore the caller's stack frame.
	pop bp
	pret
	pend bios_get_cursor_packed
	finish
	end
