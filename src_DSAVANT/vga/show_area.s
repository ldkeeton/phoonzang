	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	request_mouse_redraw_:near
	extrn	clip_mouse_pointer_to_area_:near
	extrn	redraw_mouse_pointer_:near
	extrn	update_mouse_pointer_:near
	extrn	screen_buf_seg:word

left_x	equ	0ch		; inclusive left coordinate argument
top_y	equ	0eh		; inclusive top coordinate argument
right_x	equ	10h		; inclusive right coordinate argument
bottom_y	equ	12h		; inclusive bottom coordinate argument
screen_byte_offset	equ	-2h	; local source offset in the screen buffer
horizontal_span	equ	-4h	; local number of bytes copied per row

; Copy a rectangle from the screen buffer to VGA memory, then restore the mouse pointer.
show_area	proc	near
	push	bp
	mov	bp,sp
	sub	sp,10h
	pushs	ds,es,di,si
	movseg	es,ds
	call	request_mouse_redraw_
	call	clip_mouse_pointer_to_area_
	movseg	ds,<word ptr cs:screen_buf_seg>
	movseg	es,0a000h	; VGA framebuffer segment
	mov	ax,word ptr top_y[bp]
	mov	bx,140h		; 320 bytes per VGA row
	mul	bx
	add	ax,word ptr left_x[bp]
	mov	word ptr screen_byte_offset[bp],ax
	mov	ax,word ptr right_x[bp]
	sub	ax,word ptr left_x[bp]
	inc	ax			; coordinates are inclusive
	mov	word ptr horizontal_span[bp],ax
	mov	ax,word ptr bottom_y[bp]
	sub	ax,word ptr top_y[bp]
	inc	ax			; coordinates are inclusive
	mov	dx,ax
back1:
	; Copy one horizontal row, advancing the source by the VGA row stride.
	mov	di,word ptr screen_byte_offset[bp]
	add	word ptr screen_byte_offset[bp],140h
	mov	si,di
	mov	cx,word ptr horizontal_span[bp]
	rep	movsb
	dec	dx
	jne	short back1
	call	redraw_mouse_pointer_
	call	update_mouse_pointer_
	pops	si,di,es,ds
	mov	sp,bp
	pop	bp
	ret
show_area	endp
codeseg	ends
	end
