	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	screen_maze_slots:word
	extrn	maze_block_count:word
	extrn	maze_blocks:word
	extrn	maze_paras_used:word
	extrn	maze_mem_seg:word
	extrn	screen_buf_seg:word

screen_selector_or_handle	equ	0ch	; stack argument: negative maze-screen selector, or DOS handle

	public	save_screen_
; Save the current screen into a maze slot or write it to a DOS handle.
save_screen_ proc near
	push	bp
	mov	bp,sp
	sub	sp,8
	pushs	ds,es,si,di
	movseg	es,ds
	mov	ax,word ptr screen_selector_or_handle[bp]
	test	ah,80h	; A set high sign bit selects a stored maze screen.
	jne	short save_screen_maze_selector
	jmp	near ptr save_screen_write_file

save_screen_maze_selector:
	neg	ax
	mov	bx,offset screen_maze_slots
	shl	ax,1
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	or	ax,ax
	je	short save_screen_allocate_slot
	jmp	near ptr save_screen_bad_slot

save_screen_allocate_slot:
	; Reserve one 64,000-byte block for a maze screen.
	mov	ax,word ptr cs:maze_block_count
	inc	ax
	mov	word ptr cs:maze_block_count,ax
	mov	word ptr cs:[bx],ax
	mov	cl,2
	dec	ax
	shl	ax,cl
	mov	bx,offset maze_blocks
	add	bx,ax
	mov	ax,word ptr cs:maze_paras_used
	mov	word ptr cs:[bx],ax
	mov	cx,0fa0h	; 0xFA0 paragraphs hold 64,000 screen bytes.
	mov	word ptr cs:[bx+2],cx
	mov	dx,word ptr cs:maze_paras_used
	add	dx,cx
	mov	word ptr cs:maze_paras_used,dx
	cmp	dx,4180h
	jb	short save_screen_copy_slot
	jmp	near ptr save_screen_memory_full

save_screen_copy_slot:
	; Copy all 64,000 bytes from the screen buffer to the allocated slot.
	mov	ax,word ptr screen_selector_or_handle[bp]
	neg	ax
	shl	ax,1
	mov	bx,offset screen_maze_slots
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	dec	ax
	mov	cl,2
	shl	ax,cl
	mov	bx,offset maze_blocks
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	add	ax,word ptr cs:maze_mem_seg
	mov	es,ax
	movseg	ds,<word ptr cs:screen_buf_seg>
	xor	di,di
	xor	si,si
	mov	cx,0fa00h	; Screen buffer size in bytes.
	rep	movsb
	jmp	short save_screen_return

save_screen_write_file:
	; Write the screen buffer to the supplied DOS file handle.
	movseg	ds,<word ptr cs:screen_buf_seg>
	xor	dx,dx
	mov	bx,word ptr screen_selector_or_handle[bp]
	mov	cx,0fa00h
	dos	40h

save_screen_return:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
save_screen_ endp

; Reject a maze-screen selector that already has a slot number.
save_screen_bad_slot:
	fatal	save_screen_bad_slot_message

; DOS function 09h reads this dollar-terminated bad-selector message.
save_screen_bad_slot_message:
	db	0dh,0ah,07h
	db	'SAVE_SCREEN called with bad slot number.',0
	db	0ah,24h

; Reject a new maze-screen slot that would exceed the paragraph limit.
save_screen_memory_full:
	fatal	save_screen_memory_full_message

; DOS function 09h reads this dollar-terminated memory-limit message.
save_screen_memory_full_message:
	db	0dh,0ah,07h
	db	'SAVE_SCREEN called with table full.',0
	db	0ah,24h

codeseg	ends
	end
