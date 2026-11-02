; Restore the screen from a file buffer, maze storage, or EMS pages.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	maze_slots:word
	extrn	maze_blocks:word
	extrn	maze_mem_seg:word
	extrn	screen_buf_seg:word
	extrn	ems_slots:word
	extrn	ems_blocks:word
	extrn	ems_cur_page:word
	extrn	ems_block_count:word
	extrn	ems_map_pages_:near
	extrn	ems_frame_seg:word
	extrn	maze_block_count:word
	extrn	decrement_cached_slot_ids_:near
	extrn	release_and_compact_ems_blocks_:near
	extrn	renumber_and_release_block_:near

screen_slot_index	equ	word ptr 0ch[bp]
source_mode		equ	word ptr 0eh[bp]
release_slot_flag	equ	word ptr 10h[bp]
screen_file_handle	equ	word ptr 12h[bp]
screen_row_offset	equ	-2	; current destination offset in the screen buffer
rows_remaining		equ	-4	; number of rows still to restore
row_byte_count		equ	-6	; bytes copied in each row
file_header_buffer	equ	-0ah	; ten-byte header read from the screen file

	public	restore_screen_
restore_screen_ proc near
	push	bp
	mov	bp,sp
	sub	sp,0eh
	pushs	es,ds,di,si
	movseg	es,ds
	; Mode 3 reads the rectangle header and rows from the open file.
	cmp	word ptr source_mode,3
	jne	short restore_screen_not_file
	lea	bx,word ptr file_header_buffer[bp]
	mov	dx,bx
	movseg	ds,ss
	mov	cx,0ah
	mov	bx,screen_file_handle
	dos	3fh
	movseg	ds,<word ptr cs:screen_buf_seg>
	mov	cx,word ptr rows_remaining[bp]
restore_screen_file_row:
	push	cx
	mov	dx,word ptr screen_row_offset[bp]
	; The screen buffer uses a 320-byte row stride.
	add	word ptr screen_row_offset[bp],140h
	mov	cx,word ptr row_byte_count[bp]
	mov	bx,screen_file_handle
	dos	3fh
	pop	cx
	loop	restore_screen_file_row
	jmp	near ptr restore_screen_done

restore_screen_not_file:
	cmp	word ptr source_mode,2
	je	short restore_screen_from_maze
	jmp	near ptr restore_screen_from_ems

restore_screen_from_maze:
	; Maze slots index four-byte block records.
	mov	ax,screen_slot_index
	shl	ax,1
	mov	bx,offset maze_slots
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	dec	ax
	mov	cl,2
	shl	ax,cl
	mov	bx,offset maze_blocks
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	add	ax,word ptr cs:maze_mem_seg
	mov	ds,ax
	movseg	es,<word ptr cs:screen_buf_seg>
	xor	si,si
	lodsw
	mov	word ptr screen_row_offset[bp],ax
	lodsw
	lodsw
	mov	word ptr rows_remaining[bp],ax
	lodsw
	mov	word ptr row_byte_count[bp],ax
	lodsw
	lodsw
restore_screen_maze_row:
	mov	di,word ptr screen_row_offset[bp]
	; Advance to the next 320-byte screen row.
	add	word ptr screen_row_offset[bp],140h
	mov	cx,word ptr row_byte_count[bp]
	rep	movsb
	dec	word ptr rows_remaining[bp]
	jne	short restore_screen_maze_row
	; A nonzero release flag removes the maze slot after copying.
	cmp	word ptr release_slot_flag,0
	je	short restore_screen_maze_done
	mov	ax,screen_slot_index
	shl	ax,1
	mov	bx,offset maze_slots
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	mov	word ptr cs:[bx],0
	dec	word ptr cs:maze_block_count
	call	renumber_and_release_block_
restore_screen_maze_done:
	jmp	near ptr restore_screen_done

restore_screen_from_ems:
	; EMS slots also index four-byte block records.
	mov	ax,screen_slot_index
	shl	ax,1
	mov	bx,offset ems_slots
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	dec	ax
	mov	cl,2
	shl	ax,cl
	mov	bx,offset ems_blocks
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	mov	word ptr screen_row_offset[bp],ax
	; Shift by ten to select the initial EMS page.
	mov	cl,0ah
	shr	ax,cl
	mov	word ptr cs:ems_cur_page,ax
	call	ems_map_pages_
	mov	si,word ptr screen_row_offset[bp]
	and	si,03ffh
	; EMS offsets are stored in sixteen-byte units.
	mov	cl,4
	shl	si,cl
	movseg	es,<word ptr cs:screen_buf_seg>
	movseg	ds,<word ptr cs:ems_frame_seg>
	lodsw
	mov	word ptr screen_row_offset[bp],ax
	lodsw
	lodsw
	mov	word ptr rows_remaining[bp],ax
	lodsw
	mov	word ptr row_byte_count[bp],ax
	lodsw
	lodsw
restore_screen_ems_row:
	mov	di,word ptr screen_row_offset[bp]
	; Copy each row before mapping a crossed EMS page.
	add	word ptr screen_row_offset[bp],140h
	mov	cx,word ptr row_byte_count[bp]
	rep	movsb
	test	si,0c000h
	je	short restore_screen_ems_same_page
	inc	word ptr cs:ems_cur_page
	mov	ax,word ptr cs:ems_cur_page
	call	ems_map_pages_
	and	si,3fffh
restore_screen_ems_same_page:
	dec	word ptr rows_remaining[bp]
	jne	short restore_screen_ems_row
	; A nonzero release flag clears the EMS slot and compacts cached IDs.
	cmp	word ptr release_slot_flag,0
	je	short restore_screen_done
	mov	cx,word ptr cs:ems_block_count
	dec	cx
	mov	word ptr cs:ems_block_count,cx
	mov	ax,screen_slot_index
	shl	ax,1
	mov	bx,offset ems_slots
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	mov	word ptr cs:[bx],0
	call	decrement_cached_slot_ids_
	call	release_and_compact_ems_blocks_
restore_screen_done:
	pops	si,di,ds,es
	mov	sp,bp
	pop	bp
	ret
restore_screen_ endp
	codeseg	ends
	end
