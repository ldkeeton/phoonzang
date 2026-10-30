; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	public	get_rgb_
; Return immediately from the get-RGB dispatch slot.
get_rgb_ proc near
	ret
get_rgb_ endp
codeseg	ends
	end
