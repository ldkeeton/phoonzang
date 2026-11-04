; Save the character and attribute cells in a text rectangle to the supplied buffer.
	include lmacros.h

row_start	equ	word ptr 4[bp]
column_start	equ	word ptr 6[bp]
rectangle_width	equ	word ptr 8[bp]
rows_remaining	equ	word ptr 10[bp]
rectangle_buffer	equ	word ptr 12[bp]

	procdef bios_save_text_rect, <>
	push	bp
	mov	bp,sp
	pushs	di,si
	mov	bx,rectangle_buffer
	; Convert the caller's one-based row and column to the BIOS zero-based origin.
	dec	row_start
	dec	column_start
	mov	dx,column_start
	mov	ax,row_start
	mov	dh,al
	; Keep the initial cursor position in the buffer before its dimensions.
	push	dx
	mov	row_start,dx
	mov	[bx],dx
	add	bx,2
	mov	cx,rows_remaining
	mov	[bx],cx
	add	bx,2
	mov	cx,rectangle_width
	mov	[bx],cx
	add	bx,2
	push	cx
.cell_loop:
	mov	si,cx
	; Visit each cell in the current row, reading its character and attribute.
	mov	di,bx
	mov	dx,row_start
	inc	row_start
	xor	bx,bx
	video	2
	video	8
	mov	bx,di
	mov	[bx],ax
	add	bx,2
	mov	cx,si
	loop	.cell_loop
	pops	cx,dx
	; Advance to the next row until the saved height has been exhausted.
	inc	dh
	dec	rows_remaining
	je	short .done
	pushs	dx,cx
	jmp	short .cell_loop
.done:
	pops	si,di
	mov	sp,bp
	pop	bp
	ret
	pend	bios_save_text_rect
	finish
	end
