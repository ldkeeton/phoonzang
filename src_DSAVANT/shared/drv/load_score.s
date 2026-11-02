	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	score_slots:word
	extrn	score_info:word
	extrn	maze_block_count:word
	extrn	maze_blocks:word
	extrn	maze_paras_used:word
	extrn	maze_mem_seg:word

score_file_handle	equ	0ch	; stack argument: source file handle
temporary_file_handle	equ	0eh	; stack argument: optional temporary source handle
score_value	equ	10h	; stack argument: value stored in score_info
score_number	equ	12h	; stack argument: score number
score_slot_address	equ	-2	; stack local: address of the selected score slot
loaded_file_position	equ	-4	; stack local: low word of source file position
loaded_file_position_high	equ	-6	; stack local: high word of source file position
maze_block_address	equ	-0ah	; stack local: address of the allocated maze block
temporary_file_position	equ	-0ch	; stack local: optional file position
temporary_file_paragraphs	equ	-0eh	; stack local: optional file size rounded to paragraphs

	public	load_score_
; Load a score payload into an allocated maze block and record its slot.
load_score_ proc near
	push	bp
	mov	bp,sp
	sub	sp,0eh
	pushs	ds,es,si,di
	movseg	es,ds
	; Each score slot has a four-byte block id and payload offset.
	mov	bx,word ptr score_number[bp]
	shl	bx,1
	shl	bx,1
	add	bx,offset score_slots
	mov	word ptr score_slot_address[bp],bx
	mov	ax,word ptr cs:[bx]
	or	ax,ax
	je	short load_score_allocate_block
	jmp	near ptr load_score_slot_in_use
load_score_allocate_block:
	; Save the score value and reserve the next maze block id.
	mov	bx,word ptr score_number[bp]
	shl	bx,1
	add	bx,offset score_info
	mov	ax,word ptr score_value[bp]
	mov	word ptr cs:[bx],ax
	mov	ax,word ptr cs:maze_block_count
	inc	ax
	mov	word ptr cs:maze_block_count,ax
	mov	bx,word ptr score_slot_address[bp]
	mov	word ptr cs:[bx],ax
	dec	ax
	mov	cl,2
	shl	ax,cl
	mov	bx,offset maze_blocks
	add	bx,ax
	mov	word ptr maze_block_address[bp],bx
	mov	ax,word ptr cs:maze_paras_used
	mov	word ptr cs:[bx],ax
	xor	ax,ax
	mov	word ptr temporary_file_position[bp],ax
	mov	word ptr temporary_file_paragraphs[bp],ax
	mov	bx,word ptr score_slot_address[bp]
	mov	word ptr cs:[bx+2],ax
	; A -1 temporary handle means the optional payload is absent.
	mov	bx,word ptr temporary_file_handle[bp]
	cmp	bx,-1
	je	short load_score_seek_main_file
	; Query the optional file's end and round its byte length up to 16-byte paragraphs.
	mov	ah,42h
	mov	al,2
	xor	cx,cx
	mov	dx,cx
	int	21h
	mov	word ptr temporary_file_position[bp],ax
	mov	bx,word ptr score_slot_address[bp]
	mov	word ptr cs:[bx+2],ax
	add	ax,0fh
	mov	cl,4
	shr	ax,cl
	mov	word ptr temporary_file_paragraphs[bp],ax
	; Rewind the optional file before reading it.
	mov	ah,42h
	mov	al,0
	mov	bx,word ptr temporary_file_handle[bp]
	xor	cx,cx
	mov	dx,cx
	int	21h
load_score_seek_main_file:
	; Query the main payload length, then return its handle to the start.
	mov	ah,42h
	mov	al,2
	mov	bx,word ptr score_file_handle[bp]
	xor	cx,cx
	mov	dx,cx
	int	21h
	mov	word ptr loaded_file_position[bp],ax
	mov	word ptr loaded_file_position_high[bp],dx
	mov	ah,42h
	mov	al,0
	mov	bx,word ptr score_file_handle[bp]
	xor	cx,cx
	mov	dx,cx
	int	21h
	mov	ax,word ptr loaded_file_position[bp]
	add	ax,0fh
	mov	cl,4
	shr	ax,cl
	mov	bx,word ptr maze_block_address[bp]
	add	ax,word ptr temporary_file_paragraphs[bp]
	mov	word ptr cs:[bx+2],ax
	add	ax,word ptr cs:maze_paras_used
	; Refuse allocations reaching or exceeding the available paragraph ceiling.
	cmp	ax,4180h
	jb	short load_score_allocate_memory
	jmp	near ptr load_score_insufficient_memory
load_score_allocate_memory:
	mov	word ptr cs:maze_paras_used,ax
	mov	ax,word ptr cs:[bx]
	add	ax,word ptr cs:maze_mem_seg
	mov	ds,ax
	mov	bx,word ptr temporary_file_handle[bp]
	cmp	bx,-1
	je	short load_score_read_main_payload
	; Read the optional payload into the new maze block first.
	xor	dx,dx
	mov	cx,word ptr temporary_file_position[bp]
	dos	3fh
load_score_read_main_payload:
	; Read the main score payload after any optional payload.
	mov	bx,word ptr score_slot_address[bp]
	mov	bx,word ptr cs:[bx+2]
	mov	dx,bx
	mov	bx,word ptr score_file_handle[bp]
	mov	cx,word ptr loaded_file_position[bp]
	dos	3fh
	xor	ax,ax
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
load_score_slot_in_use:
	; The selected score slot is already occupied; report the fatal condition.
	fatal	load_score_slot_error
load_score_slot_error:
	db	0dh,0ah,07h
	db	'In LOAD_SCORE() ... slot already used.',0
	db	0ah,24h
load_score_insufficient_memory:
	; The requested allocation would reach the fixed paragraph ceiling.
	fatal	load_score_memory_error
load_score_memory_error:
	db	0dh,0ah,07h
	db	'In LOAD_SCORE() ... not enough memory.',0
	db	0ah,24h
load_score_ endp
codeseg	ends
	end
