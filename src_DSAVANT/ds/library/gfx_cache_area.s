; Calls the graphics cache-area entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	gfx_drv_cache_area:dword
	public	gfx_cache_area_

gfx_cache_area_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:gfx_drv_cache_area
	mov	sp,bp
	pop	bp
	ret
gfx_cache_area_ endp
	finish
	end
