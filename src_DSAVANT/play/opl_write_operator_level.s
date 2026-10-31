	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	playback_volume:byte
	extrn	opl_note_velocity:byte
	extrn	opl_write_:near

; Scale one operator attenuation value and write its level register, 40h+AL.
	procdef	opl_write_operator_level
	pushs	dx
	mov	dx,ax			; Keep the incoming register number and attenuation bits.
	mov	al,byte ptr cs:playback_volume
	mov	cl,byte ptr cs:opl_note_velocity
	shl	cl,1
	inc	cl			; Odd multiplier derived from the note velocity.
	xor	ah,ah
	mul	cl
	mov	cl,ah			; Use the high product byte as the attenuation scale.
	mov	al,dh
	not	al
	and	al,3fh			; Keep the six-bit attenuation field.
	xor	ah,ah
	mul	cl
	mov	al,ah
	not	al
	and	al,3fh
	mov	bl,dh
	and	bl,0c0h		; Preserve the upper two key-scale bits.
	mov	ah,40h			; OPL level registers begin at 40h.
	add	ah,dl
	or	al,bl
	call	opl_write_
	pops	dx
	ret
	pend	opl_write_operator_level

codeseg	ends
	end
