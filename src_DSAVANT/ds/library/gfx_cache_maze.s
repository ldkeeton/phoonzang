; Calls the graphics cache-maze entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	gfx_drv_cache_maze:dword
	public	gfx_cache_maze_

gfx_cache_maze_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:gfx_drv_cache_maze
	mov	sp,bp
	pop	bp
	ret
gfx_cache_maze_ endp
	finish
	end
