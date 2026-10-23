; :ts=8
	include	hlmacros.h
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
	extrn	ems_cur_page:word
	extrn	cache_area_disk_error_:near
	extrn	cache_area_out_of_ems_:near
	extrn	cache_area_restore_and_return_:near
	extrn	cache_area_ems_slots_full_:near
	extrn	cache_area_maze_mem_full_:near
	extrn	cache_area_maze_slots_full_:near
	extrn	ems_map_pages_:near
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
	frame	14
	pushs	es,ds,di,si
	movseg	es,ds
	cmp	word ptr mode[bp],3
	jne	notfile		;not a file
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
	jae	f1
	jmp	cache_area_disk_error_
f1:
	movseg	ds,cs:screen_buf_seg
	mov	cx,rows[bp]
f2:				;write one row per pass
	push	cx
	mov	dx,srcoff[bp]
	add	word ptr srcoff[bp],320
	mov	cx,cols[bp]
	mov	bx,handle[bp]
	dos	40h	; DOS write file
	jae	f3
	jmp	cache_area_disk_error_
f3:
	cmp	ax,cols[bp]
	je	f4		;short write is an error too
	jmp	cache_area_disk_error_
f4:
	pop	cx
	loop	f2
	xor	ax,ax
	mov	dx,mode[bp]
	jmp	cache_area_restore_and_return_
notfile:
	cmp	word ptr mode[bp],2
	je	m2		;MAZE memory
	jmp	m1
m2:
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
	jbe	c1
	jmp	cache_area_maze_mem_full_
c1:
	mov	bx,cs:maze_paras_used
	mov	block[bp],bx
	mov	cs:maze_paras_used,ax
	mov	bx,offset maze_slots
	mov	cx,16		;16 MAZE slots
	xor	dx,dx
c2:				;find a zero slot
	mov	ax,cs:[bx]
	or	ax,ax
	je	c3
	inc	dx
	add	bx,2
	loop	c2
	jmp	cache_area_maze_slots_full_
c3:
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
c4:				;copy one row per pass
	mov	si,srcoff[bp]
	add	word ptr srcoff[bp],320
	mov	cx,cols[bp]
	rep	movsb
	dec	word ptr rows[bp]
	jne	c4
	mov	ax,slot[bp]
	mov	dx,mode[bp]
	jmp	cache_area_restore_and_return_
m1:
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
	jbe	e1
	jmp	cache_area_out_of_ems_
e1:
	mov	bx,cs:ems_paras_used
	mov	block[bp],bx
	mov	cs:ems_paras_used,ax
	mov	bx,offset ems_slots
	mov	cx,20		;20 EMS slots
	xor	dx,dx
e2:				;find a zero slot
	mov	ax,cs:[bx]
	or	ax,ax
	je	e3
	inc	dx
	add	bx,2
	loop	e2
	jmp	cache_area_ems_slots_full_
e3:
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
e4:				;copy one row per pass
	mov	si,srcoff[bp]
	add	word ptr srcoff[bp],320
	mov	cx,cols[bp]
	rep	movsb
	test	di,0c000h	;ran past the 16K page
	je	e5
	inc	word ptr cs:ems_cur_page
	mov	ax,cs:ems_cur_page
	call	ems_map_pages_
	and	di,3fffh		;wrap into the next page
e5:
	dec	word ptr rows[bp]
	jne	e4
	mov	ax,slot[bp]
	mov	dx,mode[bp]
	jmp	cache_area_restore_and_return_
cache_area_ endp
codeseg	ends
	end
