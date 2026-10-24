; allocates the driver memory blocks when a video driver was found; shares the
; caller's frame
	include	lmacros.h
	assume	cs:codeseg
	extrn	driver_block_table_:word
	extrn	ds_loc_LGTQ_:near
	extrn	free_driver_blocks_:near
	public	allocate_driver_blocks_
result	equ	-2		;caller's result word: 0 = no video driver
block_size equ	0		;entry: paragraphs to allocate
block_seg equ	2		;entry: segment DOS returned
block_next equ	4		;entries are 4 bytes apart
allocate_driver_blocks_ proc near
	cmp	word ptr result[bp],0	;no video driver: nothing to allocate
	jne	have_driver
	jmp	ds_loc_LGTQ_
have_driver:
	lea	si,driver_block_table_	;driver block table in the code segment
alloc_loop:
	mov	bx,word ptr cs:[si+block_size]
	or	bx,bx		;zero size ends the table
	je	ds_loc_LGTQ_
	mov	ah,48h		;DOS 48h: allocate bx paragraphs, ax = segment
	push	si
	int	21h
	pop	si
	jb	alloc_failed	;carry set: not enough memory
	mov	word ptr cs:[si+block_seg],ax
	add	si,block_next
	jmp	short alloc_loop
alloc_failed:
	call	free_driver_blocks_	;free what was allocated, then report the error and exit
allocate_driver_blocks_ endp
	finish
	end
