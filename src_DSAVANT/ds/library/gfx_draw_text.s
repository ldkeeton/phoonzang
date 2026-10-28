; Calls the text driver entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	gfx_drv_draw_text:dword
	public	gfx_draw_text_

gfx_draw_text_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:gfx_drv_draw_text
	mov	sp,bp
	pop	bp
	ret
gfx_draw_text_ endp
	finish
	end
