; Load a screen buffer from maze storage, EMS pages, or the current file.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	screen_maze_slots:word
	extrn	maze_blocks:word
	extrn	maze_mem_seg:word
	extrn	screen_buf_seg:word
	extrn	screen_ems_slots:word
	extrn	ems_blocks:word
	extrn	ems_cur_page:word
	extrn	ems_map_pages_:near
	extrn	ems_frame_seg:word

screen_slot_index	equ	word ptr 0ch[bp]
screen_source_mode	equ	word ptr 0eh[bp]
	procdef	load_screen
	push	bp
	mov	bp,sp
	pushs	ds,es,si,di
	movseg	es,ds
	mov	ax,screen_source_mode
	; Mode 2 reads EMS, mode 1 reads maze storage, and other modes use the file.
	cmp	ax,2
	je	short load_screen_from_ems
	cmp	ax,1
	je	short load_screen_from_maze
	jmp	near ptr load_screen_from_file

load_screen_from_maze:
	; Each maze slot stores an index into the four-byte block table.
	mov	ax,screen_slot_index
	shl	ax,1
	mov	bx,offset screen_maze_slots
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	dec	ax
	mov	cl,2
	shl	ax,cl
	mov	bx,offset maze_blocks
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	mov	bx,word ptr cs:maze_mem_seg
	add	bx,ax
	mov	 ds,bx
	movseg	es,<word ptr cs:screen_buf_seg>
	xor	di,di
	xor	si,si
	; Copy the 0xfa00-byte screen image from the selected maze block.
	mov	cx,0fa00h
	rep	movsb
	jmp	short load_screen_done

load_screen_from_ems:
	; EMS slot entries also index four-byte block records.
	mov	ax,screen_slot_index
	shl	ax,1
	mov	bx,offset screen_ems_slots
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	dec	ax
	mov	cl,2
	shl	ax,cl
	mov	bx,offset ems_blocks
	add	bx,ax
	mov	si,word ptr cs:[bx]
	mov	ax,si
	mov	cl,0ah
	shr	ax,cl
	mov	word ptr cs:ems_cur_page,ax
	call	ems_map_pages_
	; Keep the low ten offset bits, then convert the stored unit to bytes.
	and	si,03ffh
	mov	cl,4
	shl	si,cl
	; Keep the frame segment in BX, matching the original register flow.
	mov	bx,word ptr cs:ems_frame_seg
	mov	ds,bx
	movseg	es,<word ptr cs:screen_buf_seg>
	xor	di,di
	mov	cx,3
load_screen_ems_full_page:
	; Copy three 0x4000-byte EMS pages, mapping the next page after each.
	push	cx
	mov	cx,4000h
	rep	movsb
	and	si,3fffh
	inc	word ptr cs:ems_cur_page
	mov	ax,word ptr cs:ems_cur_page
	call	ems_map_pages_
	pop	cx
	loop	load_screen_ems_full_page
	; Copy the remaining 0x3a00 bytes after three full EMS pages.
	mov	cx,3a00h
	rep	movsb
	jmp	short load_screen_done

load_screen_from_file:
	; Other source modes read 0xfa00 bytes from the supplied file handle.
	movseg	ds,<word ptr cs:screen_buf_seg>
	xor	dx,dx
	mov	bx,screen_slot_index
	; The file-backed path reads the same 0xfa00-byte screen image.
	mov	cx,0fa00h
	dos	3fh

load_screen_done:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
	pend	load_screen
	codeseg	ends
	end
