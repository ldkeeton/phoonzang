	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	sound_slots:word
	extrn	maze_blocks:word
	extrn	maze_mem_seg:word
	extrn	sound_play_far:dword

sound_number	equ	word ptr 0ch[bp]	; selected sound slot, 0 through 19
sound_arg_a	equ	word ptr 0eh[bp]	; first caller value forwarded to sound_play_far
sound_arg_b	equ	word ptr 10h[bp]	; second caller value forwarded to sound_play_far
sound_arg_c	equ	word ptr 12h[bp]	; third caller value forwarded to sound_play_far
sound_block_id	equ	word ptr -2[bp]	; block id stored in the selected sound slot
maze_block_index	equ	word ptr -4[bp]	; zero-based maze-block index for this sound

	public	play_sound_
; Play an occupied sound slot by passing its block segment and caller values to the sound driver.
play_sound_ proc near
	push	bp
	mov	bp,sp
	sub	sp,0ah
	pushs	ds,es,si,di
	movseg	es,ds
	; Ignore sound numbers outside the twenty available slots.
	mov	ax,sound_number
	cmp	ax,14h
	jb	short play_sound_valid_number
	jmp	near ptr play_sound_done
play_sound_valid_number:
	; Each sound slot occupies four bytes: block id and data offset.
	shl	ax,1
	shl	ax,1
	mov	bx,offset sound_slots
	add	bx,ax
	mov	ax,word ptr cs:[bx+2]
	mov	sound_block_id,ax
	mov	ax,word ptr cs:[bx]
	or	ax,ax
	jne	short play_sound_slot_occupied
	jmp	near ptr play_sound_done
play_sound_slot_occupied:
	; Convert the stored one-based block id to its four-byte maze-block record.
	dec	ax
	mov	maze_block_index,ax
	; Pass caller values, slot data offset, and the block's segment to the sound driver.
	push	sound_arg_c
	push	sound_arg_b
	push	sound_arg_a
	mov	ax,sound_block_id
	push	ax
	xor	ax,ax
	push	ax
	mov	bx,offset maze_blocks
	mov	ax,maze_block_index
	shl	ax,1
	shl	ax,1
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	add	ax,word ptr cs:maze_mem_seg
	push	ax
	xor	ax,ax
	push	ax
	call	far ptr cs:sound_play_far
	add	sp,0eh
play_sound_done:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
play_sound_ endp
codeseg	ends
	end
