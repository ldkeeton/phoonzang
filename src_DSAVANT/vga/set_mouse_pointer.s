	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	request_mouse_redraw_:near
	extrn	draw_mouse_pointer_at_:near
	extrn	mouse_present:byte
	extrn	mouse_glide_active:byte
	extrn	mouse_drawn_x:word
	extrn	mouse_drawn_y:word
	extrn	mouse_redraw_pending:byte
	extrn	mouse_image_offset:word
	extrn	mouse_image_segment:word
	extrn	mouse_image_stride:word
	extrn	mouse_image_height:word
	data_1e5c	equ	1e5ch
	extrn	mouse_default_cursor_dimensions:byte
	public	set_mouse_pointer_

; Set the mouse cursor image and redraw it when the driver is present.
set_mouse_pointer_ proc near
	image_offset	equ	word ptr 0ch[bp]
	image_segment	equ	word ptr 0eh[bp]
	image_stride	equ	word ptr 10h[bp]
	image_height	equ	word ptr 12h[bp]
	cursor_x	equ	word ptr 14h[bp]
	cursor_y	equ	word ptr 16h[bp]
	push	bp
	mov	bp,sp
	pushs	ds,es,si,di
	movseg	es,ds
	; Reject strides of 81 bytes or more before checking the image byte count.
	mov	ax,image_stride
	cmp	ax,51h
	jb	_mouse_pointer_dimensions_valid
	_mouse_pointer_bad_size_jump:
	jmp	near ptr _mouse_pointer_bad_size
_mouse_pointer_dimensions_valid:
	mov	bx,image_height
	mul	bx
	or	dx,dx
	jne	short _mouse_pointer_bad_size_jump
	; The product must fit in the 0x400-byte image buffer.
	cmp	ax,401h
	jae	short _mouse_pointer_bad_size_jump
	call	request_mouse_redraw_
	mov	ax,image_offset
	mov	word ptr cs:mouse_image_offset,ax
	mov	ax,image_segment
	mov	word ptr cs:mouse_image_segment,ax
	mov	ax,image_stride
	mov	word ptr cs:mouse_image_stride,ax
	mov	ax,image_height
	mov	word ptr cs:mouse_image_height,ax
	mov	ax,word ptr cs:mouse_image_offset
	or	ax,word ptr cs:mouse_image_segment
	jne	short _mouse_pointer_have_image
	; Seed the image dimensions when the caller requests the null image.
	movseg	ds,cs
	mov	es,ax
	mov	si,offset mouse_default_cursor_dimensions
	mov	di,offset data_1e5c
	mov	cx,4
	rep	movsb
_mouse_pointer_have_image:
	cmp	byte ptr cs:mouse_present,0
	je	short _mouse_pointer_done
	; A coordinate of -1 asks for the current or gliding pointer position.
	mov	cx,cursor_x
	cmp	cx,-1
	je	short _mouse_pointer_use_drawn
	mov	dx,cursor_y
	cmp	dx,-1
	je	short _mouse_pointer_use_drawn
	shl	cx,1
	; BIOS function 4 moves the pointer; function 3 reads its position.
	mouse	4
_mouse_pointer_get_position:
	mouse	3
	jmp	short _mouse_pointer_draw
_mouse_pointer_use_drawn:
	cmp	byte ptr cs:mouse_glide_active,0
	je	short _mouse_pointer_get_position
	mov	cx,word ptr cs:mouse_drawn_x
	shl	cx,1
	mov	dx,word ptr cs:mouse_drawn_y
_mouse_pointer_draw:
	mov	ax,cs
	push	ax
	call	draw_mouse_pointer_at_
	mov	byte ptr cs:mouse_redraw_pending,0
_mouse_pointer_done:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
_mouse_pointer_bad_size:
	fatal	cseg_1486
cseg_1486:
	db	0dh,0ah,07h
	db	'Mouse pointer size out of range.',0
	db	0ah,24h
set_mouse_pointer_ endp
codeseg	ends
	end
