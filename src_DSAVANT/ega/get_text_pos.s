	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	text_pos_x:word
	extrn	text_pos_y:word
	public	get_text_pos_
text_pos_x_out	equ	0ch	;stack arg: pointer receiving the horizontal position
text_pos_y_out	equ	0eh	;stack arg: pointer receiving the vertical position
; Return the current text position through the caller's two output pointers.
get_text_pos_ proc near
	push	bp
	mov	bp,sp
	mov	ax,word ptr cs:text_pos_x
	mov	bx,word ptr text_pos_x_out[bp]
	mov	word ptr [bx],ax
	mov	ax,word ptr cs:text_pos_y
	mov	bx,word ptr text_pos_y_out[bp]
	mov	word ptr [bx],ax
	mov	sp,bp
	pop	bp
	ret
get_text_pos_ endp
codeseg	ends
	end
