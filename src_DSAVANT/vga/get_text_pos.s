	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	public	get_text_pos_
	extrn	text_pos_x:word
	extrn	text_pos_y:word

horizontal_output	equ	0ch	;pointer to the horizontal position result
vertical_output	equ	0eh	;pointer to the vertical position result

; Copy the saved text cursor coordinates through the caller's output pointers.
get_text_pos_	proc	near
	push	bp
	mov	bp,sp
	push	es
	movseg	es,ds
	mov	ax,word ptr cs:text_pos_x
	mov	bx,word ptr horizontal_output[bp]
	mov	word ptr [bx],ax
	mov	ax,word ptr cs:text_pos_y
	mov	bx,word ptr vertical_output[bp]
	mov	word ptr [bx],ax
	pop	es
	mov	sp,bp
	pop	bp
	ret
get_text_pos_	endp
codeseg	ends
	end
