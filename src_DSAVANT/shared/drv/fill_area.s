	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	screen_buf_seg:word

left_column	equ	0ch	; stack argument: first column
top_row		equ	0eh	; stack argument: first row
right_column	equ	10h	; stack argument: last column
bottom_row	equ	12h	; stack argument: last row
fill_color	equ	14h	; stack argument: byte written to the area
screen_offset	equ	-2	; stack slot: current destination row offset
rows_remaining	equ	-4	; stack slot: rows left to fill
columns_to_fill	equ	-6	; stack slot: bytes written per row
; Fill an inclusive rectangle in the active screen buffer with one byte.
	procdef	fill_area
	push	bp
	mov	bp,sp
	sub	sp,8
	pushs	es,di
	movseg	es,ds
	movseg	es,<word ptr cs:screen_buf_seg>
	mov	ax,top_row[bp]
	mov	bx,140h	; screen rows are separated by 320 bytes
	mul	bx
	add	ax,left_column[bp]
	mov	screen_offset[bp],ax
	mov	ax,bottom_row[bp]
	sub	ax,top_row[bp]
	inc	ax	; include both endpoint rows
	mov	rows_remaining[bp],ax
	mov	ax,right_column[bp]
	sub	ax,left_column[bp]
	inc	ax	; include both endpoint columns
	mov	columns_to_fill[bp],ax
	mov	ax,fill_color[bp]
.fill_next_row:
	; Store one full row, then advance by the fixed screen stride.
	mov	di,screen_offset[bp]
	add	word ptr screen_offset[bp],140h
	mov	cx,columns_to_fill[bp]
	rep	stosb
	dec	word ptr rows_remaining[bp]
	jne	.fill_next_row
	pops	di,es
	mov	sp,bp
	pop	bp
	ret
	pend	fill_area
codeseg	ends
	end
