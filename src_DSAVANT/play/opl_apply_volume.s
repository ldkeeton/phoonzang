	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	opl_channel_index:byte
	extrn	opl_note_velocity:byte
	extrn	playback_volume:byte
	extrn	opl_velocity_scale_table:byte
	extrn	opl_register_shadow_c0_ff:byte
	extrn	opl_channel_operators_:near
	extrn	opl_write_operator_level_:near

; Scale the note velocity by playback volume and apply it to the OPL operators.
	procdef	opl_apply_volume
	pushs	cx,dx
	mov	al,byte ptr cs:opl_channel_index
	inc	al
	call	opl_channel_operators_	; Select this channel's operator registers.
	mov	bx,offset opl_velocity_scale_table
	mov	al,byte ptr cs:opl_note_velocity
	shl	al,1			; Velocity indexes a two-byte scale entry.
	xor	ah,ah
	mov	cl,byte ptr cs:playback_volume
	mul	cl
	mov	al,ah
	xlat	cs:[bx]			; Use the high product byte as a scale-table index.
	mov	dl,al
	xor	bh,bh
	mov	bl,byte ptr cs:opl_channel_index
	inc	bl
	mov	al,1			; Test bit 0 of the channel's operator register shadow.
	and	al,byte ptr cs:[bx+opl_register_shadow_c0_ff]
	je	opl_apply_volume_forward1
	mov	al,dl
	call	opl_write_operator_level_	; Write the scaled value for the enabled operator.
opl_apply_volume_forward1:
	mov	al,dh
	call	opl_write_operator_level_	; Write the paired operator value.
	pops	dx,cx
	ret
	pend	opl_apply_volume

codeseg	ends
	end
