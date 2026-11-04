; Fill the inclusive rectangle with the BIOS pixel function.
	include lmacros.h

row_start	equ	word ptr 4[bp]
column_start	equ	word ptr 6[bp]
row_end	equ	word ptr 8[bp]
column_end	equ	word ptr 10[bp]
pixel_color	equ	byte ptr 12[bp]
column_limit	equ	word ptr -2[bp]

	procdef bios_fill_pixel_rect, <>
	push	bp
	mov	bp,sp
	sub	sp,2
	pushs	di,si
	mov	si,column_end
	mov	di,row_end
.row_loop:
	mov	ax,column_start
	mov	column_limit,ax
.column_loop:
	; BIOS INT 10h AH=0Ch writes one pixel at CX,DX in color AL.
	mov	ah,0ch
	mov	al,pixel_color
	xor	bx,bx
	mov	cx,column_limit
	mov	dx,row_start
	int	10h
	inc	column_limit
	cmp	si,column_limit
	jae	short .column_loop	; Continue through the inclusive ending column.
	inc	row_start
	cmp	di,row_start
	jae	short .row_loop	; Continue through the inclusive ending row.
	pops	si,di
	mov	sp,bp
	pop	bp
	ret
	pend	bios_fill_pixel_rect
	finish
	end
