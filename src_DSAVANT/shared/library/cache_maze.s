; Contiguous CACHEMAZE block: main routine, shared return paths, and errors.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	cache_maze_slot_table:byte
	extrn	ems_block_count:word
	extrn	ems_blocks:word
	extrn	ems_paras_used:word
	extrn	ems_para_limit:word
	extrn	ems_cur_page:word
	extrn	ems_frame_seg:word
	extrn	scratch_buf_seg:word
	extrn	decrement_cached_slot_ids_:near
	extrn	release_and_compact_ems_blocks_:near
	extrn	copy_file_region_:near
	extrn	ems_map_pages_:near

input_file_handle	equ	0ch	; stack arg: DOS handle or release flag
slot_index	equ	0eh	; stack arg: cache slot
cache_mode	equ	10h	; stack arg: nonzero selects the file-copy path
block_table_entry	equ	-2
output_slot_index		equ	-4
transfer_bytes_low		equ	-6
transfer_bytes_high		equ	-8

	public	cache_maze_
; Cache a MAZE file in EMS, release a slot, or copy a file region.
cache_maze_ proc near
	push	bp
	mov	bp,sp
	sub	sp,20
	pushs	es,ds,di,si
	movseg	es,ds
	mov	ax,input_file_handle[bp]
	test	ah,80h
	je	short maze_non_release_path
	dec	word ptr cs:ems_block_count
	mov	ax,slot_index[bp]
	shl	ax,1
	mov	bx,offset cache_maze_slot_table
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	mov	word ptr cs:[bx],0
	call	decrement_cached_slot_ids_
	call	release_and_compact_ems_blocks_
	jmp	cache_maze_restore_and_return_
maze_non_release_path:
	mov	block_table_entry[bp],ax
	mov	ax,cache_mode[bp]
	or	ax,ax
	je	short maze_allocate_or_finish_copy
	mov	ax,slot_index[bp]
	mov	output_slot_index[bp],ax
	call	copy_file_region_
	jmp	cache_maze_restore_and_return_
maze_allocate_or_finish_copy:
	mov	ax,slot_index[bp]
	shl	ax,1
	mov	bx,offset cache_maze_slot_table
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	or	ax,ax
	je	short maze_slot_claimed
	jmp	cache_maze_slot_in_use_
maze_slot_claimed:
	inc	word ptr cs:ems_block_count
	mov	ax,word ptr cs:ems_block_count
	mov	word ptr cs:[bx],ax
	dec	ax
	mov	cl,2
	shl	ax,cl
	mov	bx,offset ems_blocks
	add	bx,ax
	mov	block_table_entry[bp],bx
	mov	ax,word ptr cs:ems_paras_used
	mov	word ptr cs:[bx],ax
	movseg	ds,<word ptr cs:scratch_buf_seg>
	xor	dx,dx
	mov	cx,1000h
	mov	bx,input_file_handle[bp]
	dos	3fh
	mov	bx,0
	mov	ax,word ptr [bx]
	mov	cx,6
	mul	cx
	add	ax,4
	mov	bx,ax
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
	add	cx,0fh
	add	ax,cx
	adc	dx,0
	mov	transfer_bytes_low[bp],ax
	mov	transfer_bytes_high[bp],dx
	mov	cx,10h
	div	cx
	mov	di,word ptr cs:ems_paras_used
	mov	bx,block_table_entry[bp]
	mov	word ptr cs:2[bx],ax
	add	word ptr cs:ems_paras_used,ax
	mov	ax,word ptr cs:ems_paras_used
	cmp	ax,word ptr cs:ems_para_limit
	jbe	short maze_capacity_available
	jmp	cache_maze_insufficient_ems_
maze_capacity_available:
	mov	ax,di
	mov	cl,0ah
	shr	ax,cl
	mov	word ptr cs:ems_cur_page,ax
	call	ems_map_pages_
	and	di,3ffh
	mov	cl,4
	shl	di,cl
	xor	si,si
	movseg	ds,<word ptr cs:scratch_buf_seg>
	movseg	es,<word ptr cs:ems_frame_seg>
	mov	cx,1000h
	rep	movsb
	mov	ax,transfer_bytes_low[bp]
	mov	dx,transfer_bytes_high[bp]
	sub	ax,1000h
	sbb	dx,0
	mov	transfer_bytes_low[bp],ax
	mov	transfer_bytes_high[bp],dx
maze_copy_next_page:
	mov	dx,di
	test	dx,0c000h
	je	short maze_page_ready
	sub	di,4000h
	inc	word ptr cs:ems_cur_page
	mov	ax,word ptr cs:ems_cur_page
	call	ems_map_pages_
maze_page_ready:
	mov	ax,transfer_bytes_low[bp]
	mov	dx,transfer_bytes_high[bp]
	or	ax,dx
	je	short cache_maze_restore_and_return_
	mov	cx,1000h
	mov	ax,transfer_bytes_low[bp]
	or	dx,dx
	jne	short maze_chunk_size_ready
	cmp	ax,cx
	jae	short maze_chunk_size_ready
	mov	cx,ax
maze_chunk_size_ready:
	sub	ax,cx
	sbb	dx,0
	mov	transfer_bytes_low[bp],ax
	mov	transfer_bytes_high[bp],dx
	mov	dx,0
	mov	bx,input_file_handle[bp]
	mov	ah,3fh
	push	cx
	int	21h
	pop	cx
	mov	si,0
	rep	movsb
	jmp	short maze_copy_next_page
cache_maze_ endp

	public	cache_maze_restore_and_return_
cache_maze_restore_and_return_ proc near
	pops	si,di,ds,es
	mov	sp,bp
	pop	bp
	ret
cache_maze_restore_and_return_ endp

	public	cache_maze_slot_in_use_
cache_maze_slot_in_use_ proc near
	fatal	cache_maze_slot_message
cache_maze_slot_in_use_ endp
cache_maze_slot_message db 0dh,0ah,07h
	db	'CACHEMAZE().  Requested slot already in use.',0
	db	0ah,'$'

	public	cache_maze_return_zero_
cache_maze_return_zero_ proc near
	xor	dx,dx
	mov	ax,dx
	jmp	short cache_maze_restore_and_return_
cache_maze_return_zero_ endp

	public	cache_maze_insufficient_ems_
cache_maze_insufficient_ems_ proc near
	fatal	cache_maze_insufficient_ems_message
cache_maze_insufficient_ems_ endp
cache_maze_insufficient_ems_message db 0dh,0ah,07h
	db	'CACHEMAZE().  Insufficient EMS.',0
	db	0ah,'$'

codeseg	ends
	end
