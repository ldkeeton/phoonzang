; Clear an occupied screen-maze slot and decrement the allocated block count.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	screen_maze_slots:word
	extrn	maze_block_count:word
	extrn	renumber_and_release_block_:near

; Stack argument and local byte offset used to reach the selected slot.
screen_argument	equ	0ch
screen_slot_offset	equ	-8

	public	free_screen_
free_screen_ proc near
	push	bp
	mov	bp,sp
	sub	sp,8
	pushs	ds,es,di,si
	movseg	es,ds
	mov	ax,word ptr screen_argument[bp]
	neg	ax
	; The negated argument selects one of the five screen slots.
	cmp	ax,5
	jb	short free_screen_valid_index
	jmp	near ptr free_screen_return
free_screen_valid_index:
	shl	ax,1
	mov	word ptr screen_slot_offset[bp],ax
	mov	bx,offset screen_maze_slots
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	; An empty slot needs no count change or helper call.
	or	ax,ax
	jne	short free_screen_slot_occupied
	jmp	near ptr free_screen_return
free_screen_slot_occupied:
	mov	word ptr cs:[bx],0
	mov	cx,word ptr cs:maze_block_count
	dec	cx
	mov	word ptr cs:maze_block_count,cx
	call	renumber_and_release_block_
free_screen_return:
	pops	si,di,es,ds
	mov	sp,bp
	pop	bp
	ret
free_screen_ endp
codeseg	ends
	end
