; Calls the graphics cache-maze entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	drv_slot_cache_maze:dword
	public	call_cache_maze_

call_cache_maze_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:drv_slot_cache_maze
	mov	sp,bp
	pop	bp
	ret
call_cache_maze_ endp
	finish
	end
