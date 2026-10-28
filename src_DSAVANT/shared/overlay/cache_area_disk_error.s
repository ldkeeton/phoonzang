; Contiguous CACHEAREA block: disk error, cache routine, shared returns,
; allocation errors, and the trailing EMS page word.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	maze_mem_seg:word
	extrn	screen_buf_seg:word
	extrn	ems_para_limit:word
	extrn	ems_frame_seg:word
	extrn	maze_slots:word
	extrn	ems_slots:word
	extrn	ems_blocks:word
	extrn	ems_block_count:word
	extrn	ems_paras_used:word
	extrn	maze_blocks:word
	extrn	maze_block_count:word
	extrn	maze_paras_used:word
	extrn	ems_map_pages_:near


	public	cache_area_disk_error_
cache_area_disk_error_ proc near
	fatal	cache_area_disk_error_message	; print the disk-write error, then exit with status 1
cache_area_disk_error_ endp
cache_area_disk_error_message db 0dh,0ah,07h
	db	'Error occurred writing to disk in CACHEAREA().',0
	db	0ah,'$'


x1	equ	0ch		;stack arg: left column
y1	equ	0eh		;stack arg: top row
x2	equ	10h		;stack arg: right column
y2	equ	12h		;stack arg: bottom row
mode	equ	14h		;stack arg: 3 = file, 2 = MAZE memory, else EMS
handle	equ	16h		;stack arg: DOS file handle for mode 3
srcoff	equ	-2		;screen offset of the current row; paragraphs early on
rows	equ	-4		;rows left to copy
cols	equ	-6		;bytes per row
sizelo	equ	-8		;rows*cols, low word
sizehi	equ	-10		;rows*cols, high word; start of the 10-byte file header
slot	equ	-12		;free slot index, the return value
block	equ	-14		;paragraph where the copy starts
	public	cache_area_
; copy a screen rectangle to a file, MAZE memory or EMS; returns the slot index
cache_area_ proc near
	push	bp
	mov	bp,sp
	sub	sp,14
	pushs	es,ds,di,si
	movseg	es,ds
	cmp	word ptr mode[bp],3
	jne	use_ems_or_maze_mode		;not a file
	mov	ax,x2[bp]
	sub	ax,x1[bp]
	inc	ax
	mov	cols[bp],ax
	mov	bx,y2[bp]
	sub	bx,y1[bp]
	inc	bx
	mov	rows[bp],bx
	mul	bx
	mov	sizelo[bp],ax
	mov	sizehi[bp],dx
	mov	ax,y1[bp]
	mov	bx,320		;screen row stride
	mul	bx
	add	ax,x1[bp]
	mov	srcoff[bp],ax
	lea	bx,sizehi[bp]
	mov	dx,bx
	movseg	ds,ss
	mov	cx,10		;header: size hi/lo, rows, cols, offset
	mov	bx,handle[bp]
	dos	40h	; DOS write file
	jae	header_write_succeeded
	jmp	cache_area_disk_error_
header_write_succeeded:
	movseg	ds,cs:screen_buf_seg
	mov	cx,rows[bp]
write_next_row:				;write one row per pass
	push	cx
	mov	dx,srcoff[bp]
	add	word ptr srcoff[bp],320
	mov	cx,cols[bp]
	mov	bx,handle[bp]
	dos	40h	; DOS write file
	jae	row_write_succeeded
	jmp	cache_area_disk_error_
row_write_succeeded:
	cmp	ax,cols[bp]
	je	row_write_complete		;short write is an error too
	jmp	cache_area_disk_error_
row_write_complete:
	pop	cx
	loop	write_next_row
	xor	ax,ax
	mov	dx,mode[bp]
	jmp	cache_area_restore_and_return_
use_ems_or_maze_mode:
	cmp	word ptr mode[bp],2
	je	maze_mode		;MAZE memory
	jmp	ems_mode
maze_mode:
	mov	ax,x2[bp]
	sub	ax,x1[bp]
	inc	ax
	mov	cols[bp],ax
	mov	bx,y2[bp]
	sub	bx,y1[bp]
	inc	bx
	mov	rows[bp],bx
	mul	bx
	mov	sizelo[bp],ax
	mov	sizehi[bp],dx
	add	ax,12		;12-byte block header
	add	ax,15		;round up to paragraphs
	mov	cl,4
	shr	ax,cl
	mov	srcoff[bp],ax
	add	ax,cs:maze_paras_used
	cmp	ax,4180h		;MAZE memory limit in paragraphs
	jbe	maze_space_available
	jmp	cache_area_maze_mem_full_
maze_space_available:
	mov	bx,cs:maze_paras_used
	mov	block[bp],bx
	mov	cs:maze_paras_used,ax
	mov	bx,offset maze_slots
	mov	cx,16		;16 MAZE slots
	xor	dx,dx
find_maze_slot:				;find a zero slot
	mov	ax,cs:[bx]
	or	ax,ax
	je	maze_slot_available
	inc	dx
	add	bx,2
	loop	find_maze_slot
	jmp	cache_area_maze_slots_full_
maze_slot_available:
	mov	slot[bp],dx
	mov	ax,cs:maze_block_count
	inc	ax
	mov	cs:maze_block_count,ax
	mov	cs:[bx],ax
	dec	ax
	mov	cl,2
	shl	ax,cl		;4-byte entries: block, paragraphs
	mov	bx,offset maze_blocks
	add	bx,ax
	mov	ax,block[bp]
	mov	cs:[bx],ax
	add	ax,cs:maze_mem_seg
	mov	es,ax
	mov	ax,srcoff[bp]
	mov	cs:2[bx],ax
	movseg	ds,cs:screen_buf_seg
	mov	ax,y1[bp]
	mov	bx,320		;screen row stride
	mul	bx
	add	ax,x1[bp]
	mov	srcoff[bp],ax
	xor	di,di		;header goes at the block start
	stosw
	xor	ax,ax
	stosw
	mov	ax,rows[bp]
	stosw
	mov	ax,cols[bp]
	stosw
	mov	ax,sizelo[bp]
	stosw
	mov	ax,sizehi[bp]
	stosw
copy_maze_row:				;copy one row per pass
	mov	si,srcoff[bp]
	add	word ptr srcoff[bp],320
	mov	cx,cols[bp]
	rep	movsb
	dec	word ptr rows[bp]
	jne	copy_maze_row
	mov	ax,slot[bp]
	mov	dx,mode[bp]
	jmp	cache_area_restore_and_return_
ems_mode:
	mov	ax,x2[bp]
	sub	ax,x1[bp]
	inc	ax
	mov	cols[bp],ax
	mov	bx,y2[bp]
	sub	bx,y1[bp]
	inc	bx
	mov	rows[bp],bx
	mul	bx
	mov	sizelo[bp],ax
	mov	sizehi[bp],dx
	add	ax,12		;12-byte block header
	add	ax,15		;round up to paragraphs
	mov	cl,4
	shr	ax,cl
	mov	srcoff[bp],ax
	add	ax,cs:ems_paras_used
	cmp	ax,cs:ems_para_limit
	jbe	ems_space_available
	jmp	cache_area_out_of_ems_
ems_space_available:
	mov	bx,cs:ems_paras_used
	mov	block[bp],bx
	mov	cs:ems_paras_used,ax
	mov	bx,offset ems_slots
	mov	cx,20		;20 EMS slots
	xor	dx,dx
find_ems_slot:				;find a zero slot
	mov	ax,cs:[bx]
	or	ax,ax
	je	ems_slot_available
	inc	dx
	add	bx,2
	loop	find_ems_slot
	jmp	cache_area_ems_slots_full_
ems_slot_available:
	mov	slot[bp],dx
	mov	ax,cs:ems_block_count
	inc	ax
	mov	cs:ems_block_count,ax
	mov	cs:[bx],ax
	dec	ax
	mov	cl,2
	shl	ax,cl		;4-byte entries: block, paragraphs
	mov	bx,offset ems_blocks
	add	bx,ax
	mov	ax,block[bp]
	mov	cs:[bx],ax
	mov	ax,srcoff[bp]
	mov	cs:2[bx],ax
	movseg	es,cs:ems_frame_seg
	mov	ax,block[bp]
	mov	di,ax
	and	di,3ffh		;paragraph within a 16K page
	mov	cl,4
	shl	di,cl
	mov	cl,10
	shr	ax,cl		;16K page number
	mov	cs:ems_cur_page,ax
	call	ems_map_pages_
	movseg	ds,cs:screen_buf_seg
	mov	ax,y1[bp]
	mov	bx,320		;screen row stride
	mul	bx
	add	ax,x1[bp]
	mov	srcoff[bp],ax
	stosw
	xor	ax,ax
	stosw
	mov	ax,rows[bp]
	stosw
	mov	ax,cols[bp]
	stosw
	mov	ax,sizelo[bp]
	stosw
	mov	ax,sizehi[bp]
	stosw
copy_ems_row:				;copy one row per pass
	mov	si,srcoff[bp]
	add	word ptr srcoff[bp],320
	mov	cx,cols[bp]
	rep	movsb
	test	di,0c000h	;ran past the 16K page
	je	ems_page_boundary_checked
	inc	word ptr cs:ems_cur_page
	mov	ax,cs:ems_cur_page
	call	ems_map_pages_
	and	di,3fffh		;wrap into the next page
ems_page_boundary_checked:
	dec	word ptr rows[bp]
	jne	copy_ems_row
	mov	ax,slot[bp]
	mov	dx,mode[bp]
	jmp	cache_area_restore_and_return_
cache_area_ endp

	public	cache_area_out_of_ems_
cache_area_out_of_ems_ proc near
	fatal	cache_area_out_of_ems_message
cache_area_out_of_ems_ endp
cache_area_out_of_ems_message db 0dh,0ah,07h
	db	'CACHEAREA out of EMS.',0
	db	0ah,'$'

	public	cache_area_clear_result_
cache_area_clear_result_ proc near
	xor	dx,dx
	mov	ax,dx
cache_area_clear_result_ endp

	public	cache_area_restore_and_return_
cache_area_restore_and_return_ proc near
	pops	si,di,ds,es
	mov	sp,bp
	pop	bp
	ret
cache_area_restore_and_return_ endp

	public	cache_area_ems_slots_full_
cache_area_ems_slots_full_ proc near
	fatal	cache_area_ems_slots_full_message
cache_area_ems_slots_full_ endp
cache_area_ems_slots_full_message db 0dh,0ah,07h
	db	'CACHEAREA out of EMS slots.',0
	db	0ah,'$'

	public	cache_area_maze_mem_full_
cache_area_maze_mem_full_ proc near
	fatal	cache_area_maze_mem_full_message
cache_area_maze_mem_full_ endp
cache_area_maze_mem_full_message db 0dh,0ah,07h
	db	'CACHEAREA out of MAZE/PIC memory.',0
	db	0ah,'$'

	public	cache_area_return_zero_
cache_area_return_zero_ proc near
	xor	dx,dx
	mov	ax,dx
	jmp	short cache_area_restore_and_return_
cache_area_return_zero_ endp

	public	cache_area_maze_slots_full_
cache_area_maze_slots_full_ proc near
	fatal	cache_area_maze_slots_full_message
cache_area_maze_slots_full_ endp
cache_area_maze_slots_full_message db 0dh,0ah,07h
	db	'CACHEAREA out of MAZE slots.',0
	db	0ah,'$'

	public	ems_cur_page
ems_cur_page dw 0

codeseg	ends
	end
