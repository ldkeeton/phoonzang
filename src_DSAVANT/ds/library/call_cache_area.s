; Calls the graphics cache-area entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	drv_slot_cache_area:dword
	public	call_cache_area_

call_cache_area_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:drv_slot_cache_area
	mov	sp,bp
	pop	bp
	ret
call_cache_area_ endp
	finish
	end
