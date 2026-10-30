; Store the two text-color words supplied by the caller.
; The first argument is saved at cseg offset 0193 and the second at 0191.
; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	primary_text_color:word
	extrn	secondary_text_color:word
	public	set_text_color_
primary_color_arg	equ	0ch	; stack argument stored at offset 0193
secondary_color_arg	equ	0eh	; stack argument stored at offset 0191
set_text_color_	proc	near
	push	bp
	mov	bp,sp
	push	es
	movseg	es,ds
	mov	ax,word ptr primary_color_arg[bp]
	mov	word ptr cs:primary_text_color,ax
	mov	ax,word ptr secondary_color_arg[bp]
	mov	word ptr cs:secondary_text_color,ax
	pop	es
	mov	sp,bp
	pop	bp
	ret
set_text_color_	endp
codeseg	ends
	end
