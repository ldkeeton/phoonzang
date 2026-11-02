; Clear a maze-map entry and release the selected maze block when occupied.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	maze_map_slots:word
	extrn	maze_block_count:word
	extrn	renumber_and_release_block_:near

; Stack parameter and local slot used to address the selected map entry.
maze_number	equ	0ch	; stack arg: maze number, limited to 0 through 9
map_entry_offset	equ	-8	; byte offset of this maze's map entry

	public	free_maze_
free_maze_ proc near
	push	bp
	mov	bp,sp
	sub	sp,8
	pushs	ds,es,di,si
	movseg	es,ds
	mov	ax,word ptr maze_number[bp]
	cmp	ax,0ah
	jb	short free_maze_valid_number
	jmp	near ptr free_maze_return
free_maze_valid_number:
	shl	ax,1
	mov	word ptr map_entry_offset[bp],ax
	mov	bx,offset maze_map_slots
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	or	ax,ax
	jne	short free_maze_entry_occupied
	jmp	near ptr free_maze_return
free_maze_entry_occupied:
	; Only occupied map entries trigger the block-count update and helper call.
	mov	word ptr cs:[bx],0
	mov	cx,word ptr cs:maze_block_count
	dec	cx
	mov	word ptr cs:maze_block_count,cx
	call	renumber_and_release_block_
free_maze_return:
	pops	si,di,es,ds
	mov	sp,bp
	pop	bp
	ret
free_maze_ endp
codeseg	ends
	end
