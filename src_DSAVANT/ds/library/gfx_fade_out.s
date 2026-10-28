; Calls the fade-out driver entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	gfx_drv_fade_out:dword
	public	gfx_fade_out_

gfx_fade_out_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:gfx_drv_fade_out
	mov	sp,bp
	pop	bp
	ret
gfx_fade_out_ endp
	finish
	end
