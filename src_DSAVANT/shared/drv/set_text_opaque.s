	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	text_opaque:word

; Parameter at the driver's fourth stack argument.
text_opaque_value	equ	0ch

	public	set_text_opaque_
; Store the text drawing opacity setting.
set_text_opaque_ proc near
	push	bp
	mov	bp,sp
	mov	ax,word ptr text_opaque_value[bp]
	mov	word ptr cs:text_opaque,ax
	mov	sp,bp
	pop	bp
	ret
set_text_opaque_ endp
codeseg	ends
	end
