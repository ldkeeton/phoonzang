; Calls the screen-buffer fill driver entry with the caller's stack intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	gfx_drv_fill_screen_buffer:dword
	public	gfx_fill_screen_buffer_

gfx_fill_screen_buffer_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:gfx_drv_fill_screen_buffer
	mov	sp,bp
	pop	bp
	ret
gfx_fill_screen_buffer_ endp
	finish
	end
