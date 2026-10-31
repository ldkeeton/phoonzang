	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg

	extrn	play_device:byte
	extrn	opl_register_shadow:byte
	extrn	opl_voice_count:byte
	extrn	opl_write_:near

channel_index	equ	cl

; Clear the key-on bit for each active OPL channel, then select register 40h.
	procdef	opl_keys_off
	pushs	bx,cx,dx
	mov	channel_index,0
; Visit channels from zero through the configured voice count.
	.repeat
		mov	ah,0b1h
		cmp	byte ptr cs:play_device,1
		je	opl_keys_off_device_ready
		cmp	byte ptr cs:play_device,4
		je	opl_keys_off_device_ready
		dec	ah
opl_keys_off_device_ready:
		add	ah,channel_index
		mov	bl,ah
		xor	bh,bh
		mov	al,byte ptr cs:[bx+opl_register_shadow]
		and	al,0dfh		; Clear bit 5, the OPL key-on bit.
		call	opl_write_
		inc	channel_index
	.until	channel_index gt <byte ptr cs:opl_voice_count>
	; Select register 40h on the OPL address port.
	outp	388h,40h
	pops	dx,cx,bx
	ret
	pend	opl_keys_off

codeseg	ends
	end
