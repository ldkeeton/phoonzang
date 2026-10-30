; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	screen_buf_seg:word
	public	invert_area_
left_x	equ	0ch		;stack argument: left edge of the area
top_y	equ	0eh		;stack argument: top edge of the area
right_x	equ	10h		;stack argument: right edge of the area
bottom_y	equ	12h		;stack argument: bottom edge of the area
pixel_offset	equ	-2	;local: current screen-buffer offset
rows_remaining	equ	-4	;local: rows left in the area
columns	equ	-6		;local: bytes to invert in each row

; Invert every screen-buffer byte inside the inclusive rectangle.
invert_area_ proc near
	push	bp
	mov	bp,sp
	sub	sp,8
	pushs	es,ds,di
	movseg	es,ds
	movseg	es,<word ptr cs:screen_buf_seg>	; use the off-screen buffer
	mov	ds,ax
	mov	ax,word ptr top_y[bp]
	mov	bx,140h		; EGA buffer rows are 320 bytes wide
	mul	bx
	add	ax,word ptr left_x[bp]
	mov	word ptr pixel_offset[bp],ax
	mov	ax,word ptr bottom_y[bp]
	sub	ax,word ptr top_y[bp]
	inc	ax			; include both rectangle edges
	mov	word ptr rows_remaining[bp],ax
	mov	ax,word ptr right_x[bp]
	sub	ax,word ptr left_x[bp]
	inc	ax			; include both rectangle edges
	mov	word ptr columns[bp],ax
; Advance through one rectangle row at a time.
invert_area_row_loop:
	mov	di,word ptr pixel_offset[bp]
	mov	si,di
	add	word ptr pixel_offset[bp],140h
	mov	cx,word ptr columns[bp]
; Complement each byte in the current row.
invert_area_column_loop:
	lodsb
	not	al			; complement each source byte
	stosb
	loop	invert_area_column_loop
	dec	word ptr rows_remaining[bp]
	jne	short invert_area_row_loop
	pops	di,ds,es
	mov	sp,bp
	pop	bp
	ret
invert_area_ endp
codeseg	ends
	end
