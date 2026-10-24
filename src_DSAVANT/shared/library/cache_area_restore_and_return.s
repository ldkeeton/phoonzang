; epilogue shared by cache-area routines: restores saved registers and frame, returns
	include	lmacros.h
	include	hlmacros.h
	assume	cs:codeseg
	public	cache_area_restore_and_return_
cache_area_restore_and_return_ proc near
	pops	si,di,ds,es
	mov	sp,bp	; discard locals
	pop	bp
	ret
cache_area_restore_and_return_ endp
	finish
	end
