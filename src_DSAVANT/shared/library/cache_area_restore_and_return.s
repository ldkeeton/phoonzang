; epilogue shared by cache-area routines: restores saved registers and frame, returns
	include	lmacros.h
	assume	cs:codeseg
	public	cache_area_restore_and_return_
cache_area_restore_and_return_ proc near
	pop	si
	pop	di
	pop	ds
	pop	es
	mov	sp,bp	;discard locals
	pop	bp
	ret
cache_area_restore_and_return_ endp
	finish
	end
