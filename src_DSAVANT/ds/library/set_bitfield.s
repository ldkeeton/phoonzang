; Store a width-bit value at the requested bit index in a packed array.
	include	lmacros.h
	assume	cs:codeseg

packed_data	equ	4	;near pointer to the packed words
field_index	equ	6	;bit offset from the start of the packed data
field_width	equ	8	;number of bits in the field
field_value	equ	0ah	;value to place into the field
field_mask	equ	-2	;low-order mask for the field width

	public	set_bitfield_
set_bitfield_ proc near
	push	bp
	mov	bp,sp
	cld
	sub	sp,2	;Reserve one word for the field mask.
	pushs	ds,si,es
	movseg	es,ds

	; Build a low-order mask for the requested width.
	mov	ax,0ffffh
	mov	cx,word ptr [bp + field_width]
	mov	ch,cl
	mov	cl,10h
	sub	cl,ch
	shr	ax,cl
	mov	word ptr [bp + field_mask],ax
	and	word ptr [bp + field_value],ax

	; Convert the bit index to a word offset and an offset within that word.
	mov	si,word ptr [bp + packed_data]
	mov	bx,word ptr [bp + field_index]
	mov	ax,word ptr [bp + field_width]
	mul	bx
	mov	dx,ax
	mov	bx,ax
	mov	cl,3
	shr	bx,cl
	mov	cx,7
	and	cx,dx

	; Shift both masks into position, clear the old bits, and write the value.
	mov	ax,word ptr [bp + field_mask]
	shl	ax,cl
	shl	word ptr [bp + field_value],cl
	mov	dx,word ptr [bp + field_value]
	not	ax
	and	word ptr [bx + si],ax
	or	word ptr [bx + si],dx

	pops	es,si,ds
	mov	sp,bp
	pop	bp
	ret
set_bitfield_ endp
	finish
	end
