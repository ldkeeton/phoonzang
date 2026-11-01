; Store the two text-color words supplied by the caller.
; The first argument updates the primary color and the second updates the secondary color.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	primary_text_color:word
	extrn	secondary_text_color:word
	public	set_text_color_
primary_color_arg	equ	0ch	; first supplied color
secondary_color_arg	equ	0eh	; second supplied color
set_text_color_	proc	near
	push	bp
	mov	bp,sp
	mov	ax,word ptr primary_color_arg[bp]
	mov	word ptr cs:primary_text_color,ax
	mov	ax,word ptr secondary_color_arg[bp]
	mov	word ptr cs:secondary_text_color,ax
	mov	sp,bp
	pop	bp
	ret
set_text_color_	endp
codeseg	ends
	end
