; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mpu_send_byte:near
	public	mpu_all_notes_off
; sends controller 123 (all notes off) = 0 on each 0b0h|n control-change status, n = 1..9
mpu_all_notes_off proc near
	push	bx
	mov	bl,1			;first channel
	.repeat
		mov	al,bl
		or	al,0b0h			;control-change status for this channel
		call	mpu_send_byte
		mov	al,7bh			;controller 123: all notes off
		call	mpu_send_byte
		mov	al,0			;controller value
		call	mpu_send_byte
		inc	bl
	.until	bl ge 10
	pop	bx
	ret
mpu_all_notes_off endp
codeseg	ends
