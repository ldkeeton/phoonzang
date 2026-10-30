; Return a field after shifting it down and masking it to the requested width.
	include	lmacros.h
	assume	cs:codeseg
	public	get_bits
source_value	equ	4	; first word argument
right_shift	equ	6	; second word argument
bit_width	equ	8	; third word argument
get_bits proc near
	push	bp
	mov	bp,sp
	cld
	pushs	es,si
	movseg	es,ds
	mov	bx,word ptr source_value[bp]
	mov	cx,word ptr right_shift[bp]
	shr	bx,cl
	mov	cx,word ptr bit_width[bp]
	mov	ch,cl
	mov	cl,10h
	sub	cl,ch		; shift all ones by 16 - width to form the mask
	mov	ax,0ffffh
	shr	ax,cl
	and	ax,bx
	pops	si,es
	mov	sp,bp
	pop	bp
	ret
get_bits endp
	finish
	end
