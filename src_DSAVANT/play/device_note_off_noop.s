	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; Device note-off fallback that returns without performing an operation.
	procdef	device_note_off_noop
	ret
	pend	device_note_off_noop

; Preserve the embedded bytes that follow the routine in the recorded span.
	db	050h,053h,0b4h,020h,002h,0e7h,0ach,0e8h,03ch,0f5h,0b4h,040h
	db	002h,0e7h,0ach,00ch,03fh,0e8h,032h,0f5h,0b4h,060h,002h,0e7h
	db	0ach,0e8h,02ah,0f5h,0b4h,080h,002h,0e7h,0ach,0e8h,022h,0f5h
	db	0b4h,0e0h,002h,0e7h,0ach,0e8h,01ah,0f5h,05bh,058h,0c3h

codeseg	ends
	end
