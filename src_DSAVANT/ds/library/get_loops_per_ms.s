; Return the calibrated loop count used for millisecond delays.
	include	lmacros.h
	assume	cs:codeseg
	extrn	loops_per_ms:word
	public	get_loops_per_ms_
get_loops_per_ms_ proc near
	push	bp
	mov	bp,sp
	cld
	mov	ax,word ptr cs:loops_per_ms
	mov	sp,bp
	pop	bp
	ret
get_loops_per_ms_ endp
	finish
	end
