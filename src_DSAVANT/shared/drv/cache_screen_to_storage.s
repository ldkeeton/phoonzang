	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	ems_block_count:word
	extrn	screen_ems_slots:word
	extrn	ems_blocks:word
	extrn	ems_paras_used:word
	extrn	ems_para_limit:word
	extrn	ems_cur_page:word
	extrn	ems_frame_seg:word
	extrn	scratch_buf_seg:word
	extrn	decrement_cached_slot_ids_:near
	extrn	release_and_compact_ems_blocks_:near
	extrn	copy_file_region_:near	; cache_screen_to_storage.dos_file_loc1 helper alias
	extrn	ems_map_pages_:near

input_file_handle	equ	0ch		;stack arg: DOS source handle
slot_index	equ	0eh		;stack arg: EMS slot index
cache_mode	equ	10h		;stack arg: nonzero selects the file-copy helper
input_handle_or_block_entry	equ	-2
slot_or_output_handle	equ	-4
bytes_left	equ	-6

	public	cache_screen_to_storage_
; Reads the screen in 4K chunks and remaps EMS at each 16K boundary.
cache_screen_to_storage_ proc near
	push	bp
	mov	bp,sp
	sub	sp,20		;the original frame reserves 20 bytes
	pushs	es,ds,di,si
	movseg	es,ds
	mov	ax,input_file_handle[bp]
	.if	ah and 80h		;the high bit selects the release path
		dec	word ptr cs:ems_block_count
		mov	ax,slot_index[bp]
		shl	ax,1	;slot table entries are words
		mov	bx,offset screen_ems_slots
		add	bx,ax
		mov	ax,word ptr cs:[bx]
		mov	word ptr cs:[bx],0
		call	decrement_cached_slot_ids_
		call	release_and_compact_ems_blocks_
		jmp	cache_screen_restore_and_return
	.endif
	mov	input_handle_or_block_entry[bp],ax
	mov	ax,cache_mode[bp]
	.if	ax			;nonzero selects the file-copy helper
		mov	ax,slot_index[bp]
		mov	slot_or_output_handle[bp],ax
		call	copy_file_region_
		jmp	cache_screen_restore_and_return
	.endif
	mov	ax,slot_index[bp]
	shl	ax,1		;slot table entries are words
	mov	bx,offset screen_ems_slots
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	.if	ax
		jmp	cache_screen_slot_in_use_
	.endif
	inc	word ptr cs:ems_block_count
	mov	ax,word ptr cs:ems_block_count
	mov	word ptr cs:[bx],ax
	dec	ax
	mov	cl,2		;EMS block entries are four bytes
	shl	ax,cl
	mov	bx,offset ems_blocks
	add	bx,ax
	mov	input_handle_or_block_entry[bp],bx
	mov	ax,word ptr cs:ems_paras_used
	mov	word ptr cs:[bx],ax
	mov	ax,0fa0h		;allocated length in paragraphs
	mov	word ptr cs:2[bx],ax
	mov	di,word ptr cs:ems_paras_used
	add	word ptr cs:ems_paras_used,ax
	mov	ax,word ptr cs:ems_paras_used
	.if	ax gt cs:ems_para_limit
		jmp	cache_screen_out_of_ems_
	.endif
	mov	ax,0fa00h		;screen transfer length in bytes
	mov	bytes_left[bp],ax
	mov	ax,di
	mov	cl,0ah		;paragraph offset to 16K EMS page number
	shr	ax,cl
	mov	word ptr cs:ems_cur_page,ax
	call	ems_map_pages_
	and	di,3ffh		;paragraph offset within the 16K page
	mov	cl,4		;paragraphs to byte offset
	shl	di,cl
	.back1:			;check the next EMS window before copying
	mov	dx,di
	.if	dx and 0c000h	;DI reached a 16K EMS window boundary
		sub	di,4000h	;wrap into the next window
		inc	word ptr cs:ems_cur_page
		mov	ax,word ptr cs:ems_cur_page
		call	ems_map_pages_
	.endif
	mov	ax,bytes_left[bp]
	or	ax,ax
	je	cache_screen_restore_and_return	;the final zero count exits to the shared epilogue
	mov	cx,1000h		;DOS reads are capped at 4K
	.if	ax lt cx
		mov	cx,ax
	.endif
	sub	ax,cx
	mov	bytes_left[bp],ax
	movseg	es,cs:ems_frame_seg
	movseg	ds,cs:scratch_buf_seg
	mov	dx,0
	mov	bx,input_file_handle[bp]
	mov	ah,3fh	;DOS read function 3Fh
	push	cx
	int	21h
	pop	cx
	mov	si,0
	rep	movsb
	jmp	short .back1	;check the next EMS page before another transfer
	cache_screen_to_storage_ endp

	public	cache_screen_restore_and_return
cache_screen_restore_and_return proc near
	pops	si,di,ds,es
	mov	sp,bp
	pop	bp
	ret
cache_screen_restore_and_return endp

	public	cache_screen_slot_in_use_
cache_screen_slot_in_use_ proc near
	fatal	slot_in_use_message	;DOS print and exit with error code 1
cache_screen_slot_in_use_ endp

slot_in_use_message:	; cache_screen_to_storage.cseg1
	db	0dh,0ah,07h	;CR LF BEL
	db	'CACHESCREEN().  Requested slot already in use.',0
	db	0ah,'$'

	public	cache_screen_return_zero_
cache_screen_return_zero_ proc near
	xor	dx,dx
	mov	ax,dx
	jmp	cache_screen_restore_and_return
cache_screen_return_zero_ endp

	public	cache_screen_out_of_ems_
cache_screen_out_of_ems_ proc near
	fatal	out_of_ems_message	;DOS print and exit with error code 1
cache_screen_out_of_ems_ endp

out_of_ems_message:	; cache_screen_to_storage.cseg2
	db	0dh,0ah,07h	;CR LF BEL
	db	'CACHESCREEN().  Insufficient EMS.',0
	db	0ah,'$'

codeseg	ends
	end
