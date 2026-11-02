	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	picture_slots:word
	extrn	maze_block_count:word
	extrn	maze_blocks:word
	extrn	maze_paras_used:word
	extrn	maze_mem_seg:word
	extrn	scratch_buf_seg:word

; Arguments and scratch words used while loading a picture slot.
picture_file_handle	equ	0Ch
picture_number		equ	0Eh
picture_slot_ptr	equ	-2
picture_bytes_low	equ	-4
picture_bytes_high	equ	-6

	public	load_picture_
; Load a picture into a free slot, accounting for its paragraph size.
load_picture_ proc near
	push	bp
	mov	bp,sp
	sub	sp,8
	pushs	ds,es,si,di
	movseg	es,ds
	mov	ax,word ptr picture_number[bp]
	shl	ax,1
	mov	bx,offset picture_slots
	add	bx,ax
	mov	word ptr picture_slot_ptr[bp],bx
	mov	ax,word ptr cs:[bx]
	or	ax,ax
	je	short load_picture_allocate_slot
	jmp	near ptr load_picture_slot_occupied
load_picture_allocate_slot:
	; Reserve a maze block and save its current paragraph base.
	mov	ax,word ptr cs:maze_block_count
	inc	ax
	mov	word ptr cs:maze_block_count,ax
	mov	bx,word ptr picture_slot_ptr[bp]
	mov	word ptr cs:[bx],ax
	dec	ax
	mov	cl,2
	shl	ax,cl
	mov	bx,offset maze_blocks
	add	bx,ax
	mov	word ptr picture_slot_ptr[bp],bx
	mov	ax,word ptr cs:maze_paras_used
	mov	word ptr cs:[bx],ax
	movseg	ds,<word ptr cs:scratch_buf_seg>
	xor	dx,dx
	mov	cx,4
	mov	bx,word ptr picture_file_handle[bp]
	dos	3Fh
	; The scratch header stores the picture size as a 32-bit byte count.
	xor	bx,bx
	mov	ax,word ptr [bx]
	mov	dx,word ptr [bx+2]
	mov	word ptr picture_bytes_low[bp],ax
	mov	word ptr picture_bytes_high[bp],dx
	; Round the byte count up to a 16-byte paragraph boundary.
	mov	cl,4
	add	ax,0Fh
	adc	dx,0
	shr	ax,cl
	shl	dl,cl
	or	ah,dl
	add	word ptr cs:maze_paras_used,ax
	mov	bx,word ptr picture_slot_ptr[bp]
	mov	word ptr cs:[bx+2],ax
	mov	ax,word ptr cs:maze_paras_used
	; 0x4180 is the paragraph ceiling used by this loader.
	cmp	ax,4180h
	jb	short load_picture_read_first_chunk
	jmp	near ptr load_picture_memory_error
load_picture_read_first_chunk:
	mov	bx,word ptr picture_slot_ptr[bp]
	mov	ax,word ptr cs:[bx]
	add	ax,word ptr cs:maze_mem_seg
	mov	ds,ax
load_picture_read_chunks:
	mov	cx,word ptr picture_bytes_low[bp]
	mov	dx,word ptr picture_bytes_high[bp]
	mov	bx,cx
	or	bx,dx
	je	short load_picture_done
	; Read at most 0x1000 bytes per segment-sized chunk.
	or	dx,dx
	jne	short load_picture_full_chunk
	cmp	cx,1000h
	jae	short load_picture_full_chunk
	sub	word ptr picture_bytes_low[bp],cx
	jmp	short load_picture_issue_read
load_picture_full_chunk:
	sub	cx,1000h
	sbb	dx,0
	mov	word ptr picture_bytes_low[bp],cx
	mov	word ptr picture_bytes_high[bp],dx
	mov	cx,1000h
load_picture_issue_read:
	xor	dx,dx
	mov	bx,word ptr picture_file_handle[bp]
	dos	3Fh
	mov	ax,ds
	add	ax,100h
	mov	ds,ax
	jmp	short load_picture_read_chunks
load_picture_done:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
load_picture_slot_occupied:
	mov	ax,word ptr picture_number[bp]
	mov	bx,0Ah
	div	bx
	or	byte ptr cs:picture_error_tens,al
	or	byte ptr cs:picture_error_ones,dl
load_picture_ endp

; This adjacent error path prints the slot number, then exits through DOS.
loc_3176:
	fatal	cseg_3186
cseg_3186 label byte
	db	0Dh,0Ah,07h
	db	'Picture slot '
picture_error_tens label byte
	db	30h
picture_error_ones label byte
	db	'0 not freed.',0
	db	0Ah,24h

; Report when the paragraph total would exceed the loader's limit.
load_picture_memory_error:
	fatal	cseg_31b6
cseg_31b6 label byte
	db	0Dh,0Ah,07h
	db	'Memory unavailable loading picture.',0
	db	0Ah,24h
codeseg	ends
	end
