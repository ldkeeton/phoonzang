; Clear a picture-map entry and release the selected picture block when occupied.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	picture_slots:word
	extrn	maze_block_count:word
	extrn	renumber_and_release_block_:near

; Stack argument and local offset used to address the selected picture entry.
picture_number	equ	0ch	; stack arg: picture number, limited to 0 through 19
picture_entry_offset	equ	-8	; byte offset of this picture's map entry

	public	free_picture_
free_picture_ proc near
	push	bp
	mov	bp,sp
	sub	sp,8
	pushs	ds,es,di,si
	movseg	es,ds
	mov	ax,word ptr picture_number[bp]
	cmp	ax,14h
	jb	short free_picture_valid_number
	jmp	near ptr free_picture_return
free_picture_valid_number:
	; Each picture slot is a word, so scale the index by two.
	shl	ax,1
	mov	word ptr picture_entry_offset[bp],ax
	mov	bx,offset picture_slots
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	or	ax,ax
	jne	short free_picture_entry_occupied
	jmp	near ptr free_picture_return
free_picture_entry_occupied:
	; Only occupied entries trigger the count update and helper call.
	mov	word ptr cs:[bx],0
	mov	cx,word ptr cs:maze_block_count
	dec	cx
	mov	word ptr cs:maze_block_count,cx
	call	renumber_and_release_block_
free_picture_return:
	pops	si,di,es,ds
	mov	sp,bp
	pop	bp
	ret
free_picture_ endp
codeseg	ends
	end
