; Calls the graphics screen-to-storage entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	drv_slot_cache_screen_to_storage:dword
	public	call_cache_screen_to_storage_

call_cache_screen_to_storage_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:drv_slot_cache_screen_to_storage
	mov	sp,bp
	pop	bp
	ret
call_cache_screen_to_storage_ endp
	finish
	end
