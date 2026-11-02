	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	palette_ptr:dword

palette_output	equ	0ch	; stack argument: destination for palette bytes

	public	get_palette_
; Copy the palette bytes referenced by palette_ptr to the caller's buffer.
get_palette_ proc near
	push	bp
	mov	bp,sp
	sub	sp,8
	pushs	ds,es,di,si
	movseg	es,ds
	lds	si,cs:dword ptr palette_ptr
	mov	di,word ptr palette_output[bp]
	mov	cx,300h	; 256 palette entries, each containing three bytes
	rep	movsb
	pops	si,di,es,ds
	mov	sp,bp
	pop	bp
	ret
get_palette_ endp
codeseg	ends
	end
