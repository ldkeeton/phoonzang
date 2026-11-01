; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mpu_send_byte_:near
; sends controller 123 (all notes off) = 0 on each 0b0h|n control-change status, n = 1..9
	procdef	mpu_all_notes_off
	push	bx
	mov	bl,1			;first channel
	.repeat
		mov	al,bl
		or	al,0b0h			;control-change status for this channel
		call	mpu_send_byte_
		mov	al,7bh			;controller 123: all notes off
		call	mpu_send_byte_
		mov	al,0			;controller value
		call	mpu_send_byte_
		inc	bl
	.until	bl ge 10
	pop	bx
	ret
	pend	mpu_all_notes_off
codeseg	ends
