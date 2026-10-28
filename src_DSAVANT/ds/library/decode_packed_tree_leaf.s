; Decodes one tree leaf, retaining the caller's bitstream position.
	include	lmacros.h
	assume	cs:codeseg
	public	decode_packed_tree_leaf_
bits_remaining equ -2

decode_packed_tree_leaf_ proc near
	mov	cx,word ptr [bp+bits_remaining]
	xor	bx,bx
next_bit:
	shl	al,1
	.if	not carry?	;select the left edge for a zero bit
		.if	not <word ptr es:[bx]> and 8000h	;negative edges name another node
			mov	bx,word ptr es:[bx]
			jmp	short decoded_leaf
		.endif
		mov	bx,word ptr es:[bx]
		neg	bx
		shl	bx,1
		shl	bx,1	;each node has two word edges
advance_bit:
		loop	next_bit
		mov	cx,8
		lodsb
		jmp	short next_bit
	.endif
	.if	not <word ptr es:[bx+2]> and 8000h
		mov	bx,word ptr es:[bx+2]
		jmp	short decoded_leaf
	.endif
	mov	bx,word ptr es:[bx+2]
	neg	bx
	shl	bx,1
	shl	bx,1
	jmp	short advance_bit
 decoded_leaf:
	dec	cx
	.if	zero?	;preload the next byte when this one is exhausted
		mov	cx,8
		lodsb
	.endif
	mov	word ptr [bp+bits_remaining],cx
	ret
decode_packed_tree_leaf_ endp
	finish
	end
