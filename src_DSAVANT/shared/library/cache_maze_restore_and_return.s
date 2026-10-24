; epilogue shared by cache-maze routines: restores saved registers and frame, returns
	include	lmacros.h
	include	hlmacros.h
	assume	cs:codeseg
	public	cache_maze_restore_and_return_
cache_maze_restore_and_return_ proc near
	pops	si,di,ds,es
	unframe	; discard locals
cache_maze_restore_and_return_ endp
	finish
	end
