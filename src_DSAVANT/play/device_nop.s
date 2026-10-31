	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; Return immediately for device table entries with no operation.
	procdef	device_nop
	ret
	pend	device_nop

codeseg	ends
	end
