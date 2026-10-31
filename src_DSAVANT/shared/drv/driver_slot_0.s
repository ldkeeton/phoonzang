	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	music_start_:near

; Dispatch slot 0, far-called by DS: run entry 0 (music_start in play, mouse_init in ega and vga), then return far.
	procdef	driver_slot_0
	call	music_start_
	db	0cbh	; far return
	pend	driver_slot_0

	codeseg	ends
	end
