; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	public	set_palette_
; palette dispatch stub returns without changing state
set_palette_ proc near
	ret
set_palette_ endp
codeseg	ends
	end
