	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; Device note-off fallback that returns without performing an operation.
	procdef	device_note_off_noop
	ret
	pend	device_note_off_noop

codeseg	ends
	end
