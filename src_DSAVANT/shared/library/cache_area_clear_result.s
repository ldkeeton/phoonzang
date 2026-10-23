; zeroes the dx:ax result; no ret, it falls into the cache_area epilogue that follows
	include	lmacros.h
	include	hlmacros.h
	assume	cs:codeseg
	public	cache_area_clear_result_
cache_area_clear_result_ proc near
	xor	dx,dx
	mov	ax,dx
cache_area_clear_result_ endp
	finish
	end
