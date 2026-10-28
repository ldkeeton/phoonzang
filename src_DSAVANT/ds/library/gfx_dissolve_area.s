; Calls the graphics dissolve entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	gfx_drv_dissolve_area:dword
	public	gfx_dissolve_area_

gfx_dissolve_area_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:gfx_drv_dissolve_area
	mov	sp,bp
	pop	bp
	ret
gfx_dissolve_area_ endp
	finish
	end
