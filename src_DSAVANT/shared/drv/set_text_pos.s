	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
extrn	text_pos_x:word
extrn	text_pos_y:word

text_x_position	equ	0ch	; stack argument: horizontal text position
text_y_position	equ	0eh	; stack argument: vertical text position

	public	set_text_pos_
; Store the horizontal and vertical text cursor positions.
set_text_pos_ proc near
	push	bp
	mov	bp,sp
	push	es
	movseg	es,ds
	mov	ax,word ptr text_x_position[bp]
	mov	word ptr cs:text_pos_x,ax
	mov	ax,word ptr text_y_position[bp]
	mov	word ptr cs:text_pos_y,ax
	pop	es
	mov	sp,bp
	pop	bp
	ret
set_text_pos_ endp
codeseg	ends
	end
