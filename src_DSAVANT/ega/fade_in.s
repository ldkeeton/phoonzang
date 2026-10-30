; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	public	fade_in_
; return immediately from the fade-in dispatch slot
fade_in_ proc near
	ret
fade_in_ endp
codeseg	ends
	end
