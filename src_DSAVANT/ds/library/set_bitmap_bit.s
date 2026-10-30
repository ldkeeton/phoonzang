; Sets or clears one indexed bit in a byte-addressed bitmap.
	include	lmacros.h
	assume	cs:codeseg
	public	set_bitmap_bit_

bitmap_ptr	equ	4
bit_index	equ	6
set_value	equ	8

set_bitmap_bit_ proc near
	push	bp
	mov	bp,sp
	cld
	pushs	es,si
	movseg	es,ds
	mov	si,word ptr [bp+bitmap_ptr]
	mov	bx,word ptr [bp+bit_index]
	mov	dx,bx
	mov	cl,3
	shr	bx,cl	; Divide the bit index by eight to get its byte offset.
	mov	cx,7
	and	cx,dx	; Keep the bit index within that byte.
	mov	al,1
	shl	al,cl
	mov	ah,al
	not	ah
	and	byte ptr [bx+si],ah	; Clear the selected bit before applying its value.
	cmp	word ptr [bp+set_value],0
	.if	not zero?
		or	byte ptr [bx+si],al	; Set the bit only when the value is nonzero.
	.endif
	pops	si,es
	mov	sp,bp
	pop	bp
	ret
set_bitmap_bit_ endp
	finish
	end
