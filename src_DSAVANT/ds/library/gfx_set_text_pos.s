; Calls the text-position driver entry with the caller's stack intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	gfx_drv_set_text_pos:dword
	public	gfx_set_text_pos_

gfx_set_text_pos_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:gfx_drv_set_text_pos
	mov	sp,bp
	pop	bp
	ret
gfx_set_text_pos_ endp
	finish
	end
