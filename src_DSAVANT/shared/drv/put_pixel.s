	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	screen_buf_seg:word

pixel_column	equ	0ch	; stack argument: pixel column
pixel_row	equ	0eh	; stack argument: pixel row
pixel_color	equ	10h	; stack argument: byte stored at the pixel

	public	put_pixel
; Store one color byte at the requested position in the screen buffer.
put_pixel proc near
	push	bp
	mov	bp,sp
	pushs	ds,es
	movseg	es,ds
	movseg	ds,<word ptr cs:screen_buf_seg>
	mov	ax,pixel_row[bp]
	mov	bx,140h	; Each screen row is 320 bytes apart.
	mul	bx
	add	ax,pixel_column[bp]
	mov	bx,ax
	mov	ax,pixel_color[bp]
	mov	byte ptr [bx],al
	pops	es,ds
	mov	sp,bp
	pop	bp
	ret
put_pixel endp
codeseg	ends
	end
