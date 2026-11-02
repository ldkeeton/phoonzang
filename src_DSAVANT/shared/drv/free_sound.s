; Clear a sound-map entry and release the selected sound block when occupied.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	sound_slots:word
	extrn	maze_block_count:word
	extrn	renumber_and_release_block_:near

; Stack argument and local offset used to address the selected sound entry.
sound_number	equ	0ch	; stack arg: sound number, limited to 0 through 19
sound_entry_offset	equ	-8	; byte offset of this sound's map entry

	public	free_sound_
free_sound_ proc near
	push	bp
	mov	bp,sp
	sub	sp,0ah
	pushs	ds,es,si,di
	movseg	es,ds
	mov	ax,word ptr sound_number[bp]
	cmp	ax,14h
	jb	short free_sound_valid_number
	jmp	near ptr free_sound_return
free_sound_valid_number:
	; Each sound slot occupies four bytes, so scale the index by four.
	shl	ax,1
	shl	ax,1
	mov	bx,offset sound_slots
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	or	ax,ax
	jne	short free_sound_entry_occupied
	jmp	near ptr free_sound_return
free_sound_entry_occupied:
	; Only occupied entries are cleared and decrement the shared block count.
	mov	word ptr cs:[bx],0
	mov	cx,word ptr cs:maze_block_count
	dec	cx
	mov	word ptr cs:maze_block_count,cx
	call	renumber_and_release_block_
free_sound_return:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
free_sound_ endp
codeseg	ends
	end
