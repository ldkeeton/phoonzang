	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	maze_map_slots:word
	extrn	maze_block_count:word
	extrn	maze_blocks:word
	extrn	maze_paras_used:word
	extrn	maze_mem_seg:word
	extrn	cache_maze_slot_table:word
	extrn	ems_blocks:word
	extrn	ems_frame_seg:word
	extrn	ems_cur_page:word
	extrn	ems_map_pages_:near
	extrn	maze_piece_descriptors:word

; Arguments supplied by the maze loader dispatcher.
maze_file_handle	equ	0Ch	; open maze file handle
maze_slot_id	equ	0Eh	; requested maze slot
use_ems_storage	equ	10h	; nonzero selects EMS-backed loading

; Scratch values reused while sizing and loading the maze block.
maze_slot_offset	equ	-2	; byte offset of the active maze slot or block
maze_paragraph_count	equ	-4	; allocated paragraphs or EMS copy count
file_chunks_remaining	equ	-6	; remaining 0x8000-byte file chunks
maze_block_size	equ	-8	; computed block byte count / slot offset
loaded_maze_segment	equ	-0Ah	; destination segment for EMS data

	public	load_maze_
	public	maze_bad_slot_message,maze_full_slot_message,maze_memory_limit_message
; Load a maze into a free slot, using conventional or EMS storage.
load_maze_ proc near
	push	bp
	mov	bp,sp
	sub	sp,14h
	pushs	ds,es,di,si
	movseg	es,ds
	mov	ax,word ptr maze_slot_id[bp]
	; Only the ten maze slots are accepted.
	cmp	ax,0Ah
	jb short load_maze_valid_slot
	jmp near ptr load_maze_bad_slot
load_maze_valid_slot:
	shl	ax,1
	mov	word ptr maze_block_size[bp],ax
	mov	bx,offset maze_map_slots
	add	bx,ax
	mov	word ptr maze_slot_offset[bp],bx
	mov	ax,word ptr cs:[bx]
	or	ax,ax
	jne short load_maze_free_slot
	jmp near ptr load_maze_allocate_slot
load_maze_free_slot:
	fatal	maze_full_slot_message,01h	; A filled slot triggers the DOS error exit.
load_maze_allocate_slot:
	; Reserve the next maze block and record its current paragraph base.
	mov	ax,word ptr cs:maze_block_count
	inc	ax
	mov	word ptr cs:maze_block_count,ax
	mov	bx,word ptr maze_slot_offset[bp]
	mov	word ptr cs:[bx],ax
	dec	ax
	mov	cl,2
	shl	ax,cl
	mov	bx,offset maze_blocks
	add	bx,ax
	mov	word ptr maze_slot_offset[bp],bx
	mov	ax,word ptr cs:maze_paras_used
	mov	word ptr cs:[bx],ax
	mov	ax,word ptr use_ems_storage[bp]
	or	ax,ax
	je short load_maze_conventional
	jmp near ptr load_maze_ems
load_maze_conventional:
	; Read the initial 0x1000 paragraphs into conventional maze memory.
	cld
	; The first read is capped at 0x1000 bytes before sizing the remaining file.
	mov	cx,1000h
	mov	bx,word ptr cs:maze_mem_seg
	add	bx,word ptr cs:maze_paras_used
	mov	ds,bx
	xor	dx,dx
	mov	bx,word ptr maze_file_handle[bp]
	dos	3Fh
	mov	bx,0
	mov	ax,word ptr [bx]
	; The descriptor table advances in six-byte records, after a four-byte header.
	mov	cx,6
	mul	cx
	add	ax,4
	mov	bx,word ptr maze_block_size[bp]
	; 0x27d is the fixed base offset for the maze's indexed size words.
	add	bx,offset maze_piece_descriptors	; piece id * 6 -> its descriptor
	mov	word ptr cs:[bx],ax
	mov	bx,ax
	; Read the record dimensions and row count from the final six-byte header.
	sub	bx,6
	mov	cl,byte ptr [bx+5]
	mov	al,byte ptr [bx+4]
	mul	cl
	mov	cl,3
	shl	ax,cl
	mov	cx,word ptr [bx+2]
	add	ax,cx
	push	ax
	xor	dx,dx
	mov	ax,word ptr [bx]
	mov	cx,10h
	mul	cx
	pop	cx
	add	ax,cx
	adc	dx,0
	pushs	ax,dx
	; Remove the initial 0x1000-byte read before counting full chunks.
	sub	ax,1000h
	sbb	dx,0
	mov	word ptr maze_block_size[bp],ax
	mov	word ptr file_chunks_remaining[bp],dx
	pops	dx,ax
	; Round the byte count up to a 16-byte paragraph boundary.
	add	ax,0Fh
	adc	dx,0
	mov	bx,10h
	div	bx
	mov	bx,word ptr maze_slot_offset[bp]
	mov	word ptr cs:[bx+2],ax
	add	word ptr cs:maze_paras_used,ax
	mov	ax,word ptr cs:maze_paras_used
	; 0x4180 is the maximum paragraph total accepted by this loader.
	cmp	ax,4180h
	jae short load_maze_memory_full
	mov	ax,ds
	add	ax,100h
	mov	ds,ax
	mov	dx,0
load_maze_full_chunks:
	; Read two 0x8000-byte portions for each remaining full chunk.
	cmp	word ptr file_chunks_remaining[bp],0
	je short load_maze_final_chunk
	dec	word ptr file_chunks_remaining[bp]
	mov	cx,8000h
	xor	dx,dx
	mov	bx,word ptr maze_file_handle[bp]
	dos	3Fh
	mov	ax,ds
	; Advance the segment by 0x800 paragraphs after each 0x8000-byte read.
	add	ax,800h
	mov	ds,ax
	mov	cx,8000h
	xor	dx,dx
	mov	bx,word ptr maze_file_handle[bp]
	dos	3Fh
	mov	ax,ds
	add	ax,800h
	mov	ds,ax
	jmp short load_maze_full_chunks
load_maze_final_chunk:
	mov	cx,word ptr maze_block_size[bp]
	xor	dx,dx
	mov	bx,word ptr maze_file_handle[bp]
	dos	3Fh
load_maze_return:
	pops	si,di,es,ds
	mov	sp,bp
	pop	bp
	ret
load_maze_bad_slot:
	fatal	maze_bad_slot_message,01h	; Invalid slot number exits through DOS.
load_maze_memory_full:
	fatal	maze_memory_limit_message,01h	; The paragraph limit has been reached.
maze_bad_slot_message label byte
	db	0Dh,0Ah,07h
	db	'LOAD_MAZE called with bad slot number.',0
	db	0Ah,24h
maze_full_slot_message label byte
	db	0Dh,0Ah,07h
	db	'LOAD_MAZE called with filled slot number.',0
	db	0Ah,24h
maze_memory_limit_message label byte
	db	0Dh,0Ah,07h
	db	'oops... LOAD_MAZE filled its memory area.',0
	db	0Ah,24h
load_maze_ems:
	; Locate the EMS handle and page offset for the requested maze slot.
	mov	ax,word ptr maze_file_handle[bp]
	shl	ax,1
	mov	si,offset cache_maze_slot_table
	add	si,ax
	mov	ax,word ptr cs:[si]
	dec	ax
	mov	cl,2
	shl	ax,cl
	mov	di,offset ems_blocks
	add	di,ax
	mov	si,word ptr cs:[di]
	mov	ax,word ptr cs:[di+2]
	mov	word ptr cs:[bx+2],ax
	mov	word ptr maze_paragraph_count[bp],ax
	mov	dx,word ptr cs:maze_mem_seg
	add	dx,word ptr cs:maze_paras_used
	mov	word ptr loaded_maze_segment[bp],dx
	mov	es,dx
	add	word ptr cs:maze_paras_used,ax
	movseg	ds,<word ptr cs:ems_frame_seg>
	mov	ax,si
	; Split the EMS source position into page and 0x400-byte offset parts.
	mov	cl,0Ah
	shr	ax,cl
	mov	word ptr cs:ems_cur_page,ax
	call	ems_map_pages_
	and	si,3FFh
	mov	cl,4
	shl	si,cl
load_maze_ems_copy:
	; Map the next EMS page when the source crosses a 16K boundary.
	test	si,0C000h
	je short load_maze_copy_page
	inc	word ptr cs:ems_cur_page
	mov	ax,word ptr cs:ems_cur_page
	call	ems_map_pages_
	sub	si,4000h
load_maze_copy_page:
	xor	di,di
	; Copy one 16-byte block from the currently mapped EMS page.
	mov	cx,10h
	rep	movsb
	mov	ax,es
	inc	ax
	mov	es,ax
	dec	word ptr maze_paragraph_count[bp]
	jne short load_maze_ems_copy
	; Recompute and store the loaded maze's indexed data size.
	movseg	ds,<word ptr loaded_maze_segment[bp]>
	mov	bx,0
	mov	ax,word ptr [bx]
	; Rebuild the six-byte descriptor table's size field after EMS loading.
	mov	cx,6
	mul	cx
	add	ax,4
	mov	bx,word ptr maze_block_size[bp]
	; Use the same indexed-size table base after copying from EMS.
	add	bx,offset maze_piece_descriptors	; piece id * 6 -> its descriptor
	mov	word ptr cs:[bx],ax
	jmp near ptr load_maze_return
load_maze_ endp
codeseg	ends
	end
