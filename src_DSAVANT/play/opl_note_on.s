; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	opl_key_on_bit:byte
	extrn	music_patch_segment:word
	extrn	music_patch_offset:word
	extrn	opl_note_index:byte
	extrn	opl_channel_index:byte
	extrn	opl_operator_map:byte
	extrn	opl_pitch_value:word
	extrn	opl_pitch_range:word
	extrn	opl_note_semitone:byte
	extrn	opl_semitone_step:byte
	extrn	opl_fnum_table:word
	extrn	opl_semitone_octave:byte
	extrn	opl_write_note_pair_:near
	extrn	opl_write_:near
	public	opl_note_on_, opl_pitch_update_
; load the note's patch operator levels, then bend its pitch and key it on (A0h/B0h)
opl_note_on_ proc near
	pushs	ax,bx,cx,di,dx,ds,si
	mov	byte ptr cs:opl_key_on_bit,20h	;B0h key-on bit
	mov	bx,word ptr cs:music_patch_segment
	mov	ds,bx
	mov	si,word ptr cs:music_patch_offset
	mov	bl,byte ptr cs:opl_note_index
	shr	bl,1
	shr	bl,1
	xor	bh,bh
	mov	al,byte ptr [bx+si]	;patch number for this note
	xor	ah,ah
	mov	bl,0bh			;11-byte patch records
	mul	bl
	add	ax,40h			;records follow a 40h-byte header
	add	si,ax
	mov	al,byte ptr cs:opl_note_index
	and	al,3
	xor	ah,ah
	mov	bl,0bh
	mul	bl
	add	ax,0			;sub-entry offset, unused: ax is reloaded below
	mov	bl,byte ptr cs:opl_channel_index
	inc	bl
	shl	bl,1			;two map bytes per channel
	xor	bh,bh
	mov	ch,byte ptr cs:opl_operator_map[bx]	;channel's first operator offset
	mov	al,ch
	add	al,3			;second operator is 3 further
	mov	ah,byte ptr 6[si]
	call	opl_write_note_pair_
	mov	al,byte ptr 0ah[si]
	and	al,1
	.if	al == 1			;bit 0: both operators carry the level
		mov	al,ch
		mov	ah,byte ptr 1[si]
		call	opl_write_note_pair_
		jmp	near ptr apply_pitch
	.endif
	mov	al,byte ptr 1[si]
	mov	ah,40h			;reg 40h+op: level
	add	ah,ch
	call	opl_write_
	jmp	near ptr apply_pitch
opl_pitch_update_ label near
	pushs	ax,bx,cx,di,dx,ds,si
apply_pitch:
	mov	ax,word ptr cs:opl_pitch_value
	sub	ax,2000h		;2000h: centred, no bend
	je	pitch_scaled
	sar	ax,1
	sar	ax,1
	sar	ax,1
	sar	ax,1
	sar	ax,1
	mov	cx,ax
	mov	bx,word ptr cs:opl_pitch_range
	.if	bx ge 0ch
		mov	bx,0ah
	.endif
	shl	bx,1			;2-byte add per range step
	neg	bx
	add	bx,offset pitch_scaled+2	;lands range-1 adds back from pitch_scaled
	jmp	bx
	add	ax,cx
	add	ax,cx
	add	ax,cx
	add	ax,cx
	add	ax,cx
	add	ax,cx
	add	ax,cx
	add	ax,cx
	add	ax,cx
	add	ax,cx
	add	ax,cx
pitch_scaled:
	add	ah,byte ptr cs:opl_note_semitone	;ax: pitch in 1/16 semitones
	add	ax,8			;round before /16
	sar	ax,1
	sar	ax,1
	sar	ax,1
	sar	ax,1
	.if	l
		xor	ax,ax		;clamp below at 0
	.else
		.if	ax sge 5ffh
			mov	ax,5ffh	;clamp above at 5ffh
		.endif
	.endif
	mov	di,ax
	shr	di,1
	shr	di,1
	shr	di,1
	shr	di,1
	mov	dx,di			;dx: semitone
	mov	bl,byte ptr cs:opl_semitone_step[di]
	xor	bh,bh
	mov	di,bx
	shl	di,1
	shl	di,1
	shl	di,1
	shl	di,1
	shl	di,1			;16-word opl_fnum_table rows
	shl	ax,1
	and	ax,1fh
	add	di,ax
	mov	ax,word ptr cs:opl_fnum_table[di]
	mov	di,dx
	mov	bl,byte ptr cs:opl_semitone_octave[di]	;octave becomes the block
	dec	bl
	or	ax,ax
	.if	l
		inc	bl		;negative F-number: keep the octave
	.endif
	or	bl,bl
	.if	l
		inc	bl		;below block 0: halve the F-number instead
		sar	ax,1
	.endif
	push	ax
	mov	ah,0a0h			;reg A0h+ch: F-number low
	add	ah,byte ptr cs:opl_channel_index
	inc	ah
	call	opl_write_
	pop	ax
	mov	al,ah
	and	al,3			;F-number high bits
	shl	bl,1
	shl	bl,1			;block into bits 2-4
	add	al,bl
	add	al,byte ptr cs:opl_key_on_bit
	mov	ah,0b0h			;reg B0h+ch: key-on, block, F-number high
	add	ah,byte ptr cs:opl_channel_index
	inc	ah
	call	opl_write_
	pops	si,ds,dx,di,cx,bx,ax
	ret
opl_note_on_ endp
codeseg	ends
	end
