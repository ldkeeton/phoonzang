; Calls the graphics screen-to-storage entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	gfx_drv_cache_screen_to_storage:dword
	public	gfx_cache_screen_to_storage_

gfx_cache_screen_to_storage_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:gfx_drv_cache_screen_to_storage
	mov	sp,bp
	pop	bp
	ret
gfx_cache_screen_to_storage_ endp
	finish
	end
