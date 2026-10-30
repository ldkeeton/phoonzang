	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	public	fade_out_
; Return from the fade-out dispatch entry.
fade_out_ proc near
	ret
fade_out_ endp
codeseg	ends
	end
