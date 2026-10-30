; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	default_pointer_dimensions:byte
	extrn	default_pointer_bitmap:byte
	extrn	mouse_pointer_size_message:byte
	extrn	request_mouse_redraw_:near
	extrn	expand_cursor_bitmap_planes_:near
	extrn	draw_mouse_pointer_at_:near
	extrn	mouse_pointer_bitmap_offset:word
	extrn	mouse_pointer_bitmap_segment:word
	extrn	mouse_pointer_width:word
	extrn	mouse_pointer_height:word
	extrn	cursor_bitmap_stride:word
	extrn	mouse_present:byte
	extrn	mouse_glide_active:byte
	extrn	mouse_drawn_x:word
	extrn	mouse_drawn_y:word
	extrn	mouse_redraw_pending:byte
	public	set_mouse_pointer_

background_offset	equ	0ch	; stack arg: source image offset
background_segment	equ	0eh	; stack arg: source image segment
bitmap_row_stride	equ	10h	; stack arg: source image row stride
max_bottom_rows	equ	12h	; stack arg: maximum pointer height
new_mouse_x	equ	14h	; stack arg: requested horizontal position
new_mouse_y	equ	16h	; stack arg: requested vertical position
frame_size	equ	4	; preserve the original four-byte local frame

; Install a mouse pointer shape and redraw it at the requested position.
set_mouse_pointer_ proc near
	push	bp
	mov	bp,sp
	sub	sp,frame_size
	pushs	ds,es,si,di
	movseg	es,ds
	mov	ax,word ptr bitmap_row_stride[bp]
	cmp	ax,51h			; reject a pointer wider than the supported limit
	jb	.forward1
.back1:
	jmp	near ptr .forward7
.forward1:
	mov	bx,word ptr max_bottom_rows[bp]
	mul	bx
	or	dx,dx			; reject a product that overflowed 16 bits
	jne	.back1
	cmp	ax,401h			; pointer area must be smaller than 1025 bytes
	jae	.back1
	call	request_mouse_redraw_
	mov	ax,word ptr background_offset[bp]
	mov	word ptr cs:mouse_pointer_bitmap_offset,ax
	mov	ax,word ptr background_segment[bp]
	mov	word ptr cs:mouse_pointer_bitmap_segment,ax
	mov	ax,word ptr bitmap_row_stride[bp]
	mov	word ptr cs:mouse_pointer_width,ax
	mov	ax,word ptr max_bottom_rows[bp]
	mov	word ptr cs:mouse_pointer_height,ax
	mov	ax,word ptr cs:mouse_pointer_bitmap_offset
	or	ax,word ptr cs:mouse_pointer_bitmap_segment
	jne	.forward2
	; Null source fields select the built-in pointer data.
	movseg	ds,cs
	mov	es,ax
	mov	si,offset default_pointer_dimensions
	mov	di,offset mouse_pointer_width
	mov	cx,6
	rep	movsb
	pushs	ds,si
	mov	si,offset default_pointer_bitmap
	movseg	ds,cs
	call	expand_cursor_bitmap_planes_
	pops	si,ds
	jmp	short .forward3
.forward2:
	mov	ax,word ptr cs:mouse_pointer_width
	add	ax,3
	mov	cl,2
	shr	ax,cl
	mov	word ptr cs:cursor_bitmap_stride,ax
	pushs	ds,si
	mov	si,word ptr background_offset[bp]
	movseg	ds,<word ptr background_segment[bp]>
	call	expand_cursor_bitmap_planes_
	pops	si,ds
.forward3:
	cmp	byte ptr cs:mouse_present,0
	je	.forward6		; leave if the mouse driver is not active
	mov	cx,word ptr new_mouse_x[bp]
	cmp	cx,-1			; -1 requests the current pointer coordinate
	je	.forward4
	mov	dx,word ptr new_mouse_y[bp]
	cmp	dx,-1
	je	.forward4
	shl	cx,1
	mouse	4
.back2:
	mouse	3
	jmp	short .forward5
.forward4:
	cmp	byte ptr cs:mouse_glide_active,0
	je	.back2		; query the current position when glide is inactive
	mov	cx,word ptr cs:mouse_drawn_x
	shl	cx,1
	mov	dx,word ptr cs:mouse_drawn_y
.forward5:
	mov	ax,cs
	push	ax
	call	draw_mouse_pointer_at_
	mov	byte ptr cs:mouse_redraw_pending,0
.forward6:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
.forward7:
	; Print the embedded DOS message and terminate with status 1.
	fatal	mouse_pointer_size_message
set_mouse_pointer_ endp
codeseg	ends
	end
