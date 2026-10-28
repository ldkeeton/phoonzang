; Calls the fill-area driver entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	gfx_drv_fill_area:dword
	public	gfx_fill_area_

gfx_fill_area_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:gfx_drv_fill_area
	mov	sp,bp
	pop	bp
	ret
gfx_fill_area_ endp
	finish
	end
