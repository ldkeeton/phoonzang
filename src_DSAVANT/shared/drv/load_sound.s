; Load a sound file into a new maze-memory block and record its size.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	sound_slots:word
	extrn	maze_block_count:word
	extrn	maze_blocks:word
	extrn	maze_paras_used:word
	extrn	maze_mem_seg:word
	extrn	scratch_buf_seg:word
	extrn	expand_compressed_string_:near

; Arguments and scratch values used while allocating and reading the file.
sound_file_handle	equ	0Ch	; open DOS handle for the sound file
sound_number	equ	0Eh	; selected sound slot, from 0 through 19
sound_slot_offset	equ	-2	; byte offset of this sound's slot entry
file_size_low	equ	-4	; low word of the file size
file_size_high	equ	-6	; high word of the file size
sound_block_entry	equ	-0Ah	; maze-block record for this sound

	public	load_sound_
load_sound_ proc near
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	pushs	ds,es,si,di
	movseg	es,ds
	mov	bx,word ptr sound_number[bp]
	; Sound slots are four bytes apart, and there are twenty slots.
	shl	bx,1
	shl	bx,1
	add	bx,offset sound_slots
	mov	word ptr sound_slot_offset[bp],bx
	mov	ax,word ptr cs:[bx]
	or	ax,ax
	je	short load_sound_allocate
	jmp	near ptr load_sound_slot_occupied
load_sound_allocate:
	; Reserve a block and remember its current paragraph base.
	mov	ax,word ptr cs:maze_block_count
	inc	ax
	mov	word ptr cs:maze_block_count,ax
	mov	bx,word ptr sound_slot_offset[bp]
	mov	word ptr cs:[bx],ax
	dec	ax
	mov	cl,2
	shl	ax,cl
	mov	bx,offset maze_blocks
	add	bx,ax
	mov	word ptr sound_block_entry[bp],bx
	mov	ax,word ptr cs:maze_paras_used
	mov	word ptr cs:[bx],ax

	; Seek to end to get the file length, then return to its start.
	mov	ah,42h
	mov	al,2
	mov	bx,word ptr sound_file_handle[bp]
	xor	cx,cx
	mov	dx,cx
	int	21h
	mov	word ptr file_size_low[bp],ax
	mov	word ptr file_size_high[bp],dx
	mov	ah,42h
	mov	al,0
	mov	bx,word ptr sound_file_handle[bp]
	xor	cx,cx
	mov	dx,cx
	int	21h

	; The first two file bytes select the plain-size or compressed-data path.
	movseg	ds,<word ptr cs:scratch_buf_seg>
	xor	dx,dx
	mov	bx,word ptr sound_file_handle[bp]
	mov	cx,2
	dos	3Fh
	xor	bx,bx
	mov	ax,word ptr [bx]
	or	ax,ax
	je	short load_sound_plain_size
	jmp	near ptr load_sound_compressed_data
load_sound_plain_size:
	; A zero prefix uses the file length minus its two-byte header.
	mov	bx,word ptr sound_slot_offset[bp]
	mov	ax,word ptr file_size_low[bp]
	sub	ax,2
	mov	word ptr cs:[bx+2],ax
	add	ax,0Fh
	mov	cl,4
	shr	ax,cl
	mov	bx,word ptr sound_block_entry[bp]
	mov	word ptr cs:[bx+2],ax
	add	ax,word ptr cs:maze_paras_used
	; 0x4180 paragraphs is the loader's conventional-memory ceiling.
	cmp	ax,4180h
	jae	short load_sound_memory_error
	mov	word ptr cs:maze_paras_used,ax
	mov	ax,word ptr cs:[bx]
	add	ax,word ptr cs:maze_mem_seg
	mov	ds,ax
	xor	dx,dx
	mov	bx,word ptr sound_file_handle[bp]
	mov	cx,word ptr file_size_low[bp]
	sub	cx,2
	dos	3Fh
	xor	ax,ax
load_sound_return:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret

load_sound_slot_occupied:
	; An occupied slot reports its error text and exits with status one.
	fatal	load_sound_slot_error_message
load_sound_slot_error_message:
	db	0Dh,0Ah,07h
	db	'In LOAD_SOUND() ... slot already used.',0
	db	0Ah,24h

load_sound_memory_error:
	; Reaching the paragraph limit reports an error and exits with status one.
	fatal	load_sound_memory_error_message
load_sound_memory_error_message:
	db	0Dh,0Ah,07h
	db	'In LOAD_SOUND() ... not enough memory.',0
	db	0Ah,24h

load_sound_compressed_data:
	; Read compressed bytes into scratch memory, including the block at offset 0x400.
	mov	cx,ax
	movseg	ds,<word ptr cs:scratch_buf_seg>
	xor	dx,dx
	mov	bx,word ptr sound_file_handle[bp]
	dos	3Fh
	mov	dx,400h
	mov	bx,word ptr sound_file_handle[bp]
	mov	cx,1000h
	dos	3Fh
	mov	si,400h
	mov	di,0
	lodsw
	mov	word ptr file_size_low[bp],ax
	mov	bx,word ptr sound_slot_offset[bp]
	mov	word ptr cs:[bx+2],ax
	; Round the payload byte count up to a paragraph boundary.
	add	ax,0Fh
	mov	cl,4
	shr	ax,cl
	mov	bx,word ptr sound_block_entry[bp]
	mov	word ptr cs:[bx+2],ax
	add	ax,word ptr cs:maze_paras_used
	cmp	ax,4180h
	jb	short load_sound_memory_available
	jmp	near ptr load_sound_memory_error
load_sound_memory_available:
	mov	word ptr cs:maze_paras_used,ax
	mov	ax,word ptr cs:[bx]
	add	ax,word ptr cs:maze_mem_seg
	mov	es,ax
	; Expand the compressed stream into the newly reserved block.
	call	expand_compressed_string_
	xor	ax,ax
	jmp	near ptr load_sound_return
load_sound_ endp
codeseg	ends
	end
