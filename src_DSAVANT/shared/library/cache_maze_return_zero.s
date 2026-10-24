; zeroes the dx:ax result and leaves through the cache_maze epilogue
	include	lmacros.h
	include	hlmacros.h
	assume	cs:codeseg
	extrn	cache_maze_restore_and_return_:near
	public	cache_maze_return_zero_
cache_maze_return_zero_ proc near
	xor	dx,dx		;dx:ax result = 0
	mov	ax,dx
	jmp	short cache_maze_restore_and_return_	;no frame of its own
cache_maze_return_zero_ endp
	finish
	end
