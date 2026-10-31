; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg

mpu_first_channel	equ	1	; first MPU channel programmed
mpu_channel_limit	equ	10h	; stop after channel 15
mpu_volume_register	equ	7	; controller volume register

	extrn	mpu_send_byte_:near
	extrn	playback_volume:byte
; Set the playback volume register for MPU channels 1 through 15.
	procdef	mpu_set_volume
	push	bx
	mov	bl,mpu_first_channel
mpu_set_volume_channel:
	; Each channel receives its register select, volume register, and value.
	mov	al,bl
	or	al,0b0h
	call	mpu_send_byte_
	mov	al,mpu_volume_register
	call	mpu_send_byte_
	mov	al,byte ptr cs:playback_volume
	shr	al,1
	call	mpu_send_byte_
	inc	bl
	cmp	bl,mpu_channel_limit
	jb	mpu_set_volume_channel
	pop	bx
	ret
	pend	mpu_set_volume

codeseg	ends
	end
