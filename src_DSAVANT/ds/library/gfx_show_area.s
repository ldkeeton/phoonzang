; Calls the area-display driver entry with the caller's stack intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	gfx_drv_show_area:dword
	public	gfx_show_area_

gfx_show_area_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:gfx_drv_show_area
	mov	sp,bp
	pop	bp
	ret
gfx_show_area_ endp
	finish
	end
