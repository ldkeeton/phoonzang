; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	public	reset_rgb_
; return immediately from the reset_rgb dispatch slot
reset_rgb_ proc near
	ret
reset_rgb_ endp
codeseg	ends
	end
