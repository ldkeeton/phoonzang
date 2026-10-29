; Calls the screen-buffer fill driver entry with the caller's stack intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	drv_slot_fill_screen_buffer:dword
	public	call_fill_screen_buffer_

call_fill_screen_buffer_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:drv_slot_fill_screen_buffer
	mov	sp,bp
	pop	bp
	ret
call_fill_screen_buffer_ endp
	finish
	end
