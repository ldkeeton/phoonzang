; Calls the fade-in driver entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	gfx_drv_fade_in:dword
	public	gfx_fade_in_

gfx_fade_in_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:gfx_drv_fade_in
	mov	sp,bp
	pop	bp
	ret
gfx_fade_in_ endp
	finish
	end
