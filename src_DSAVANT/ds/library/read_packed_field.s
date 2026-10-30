; Read a fixed-width field from a packed byte array.
	include	lmacros.h
	assume	cs:codeseg
	public	read_packed_field_

packed_data	equ	4
field_index	equ	6
field_width	equ	8

read_packed_field_ proc near
	push	bp
	mov	bp,sp
	cld
	pushs	ds,di,si,es
	movseg	es,ds
	mov	ax,0ffffh
	mov	cx,[bp+field_width]
	mov	ch,cl
	mov	cl,16	; Start with a full 16-bit mask.
	sub	cl,ch
	shr	ax,cl
	mov	di,ax
	mov	si,[bp+packed_data]
	mov	bx,[bp+field_index]
	mov	ax,[bp+field_width]
	mul	bx
	mov	dx,ax
	mov	bx,ax
	mov	cl,3	; Divide the bit position by eight to get its byte offset.
	shr	bx,cl
	mov	cx,7	; Keep the bit position within that byte.
	and	cx,dx
	mov	ax,di
	mov	dx,[bx+si]
	shr	dx,cl
	and	ax,dx
	pops	es,si,di,ds
	mov	sp,bp
	pop	bp
	ret
read_packed_field_ endp
	finish
	end
