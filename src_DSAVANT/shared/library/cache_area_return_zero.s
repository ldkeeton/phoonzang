; zeroes the dx:ax result and leaves through the cache_area epilogue
	include	lmacros.h
	assume	cs:codeseg
	extrn	cache_area_restore_and_return_:near
	public	cache_area_return_zero_
cache_area_return_zero_ proc near
	xor	dx,dx
	mov	ax,dx
	jmp	short cache_area_restore_and_return_
cache_area_return_zero_ endp
	finish
	end
