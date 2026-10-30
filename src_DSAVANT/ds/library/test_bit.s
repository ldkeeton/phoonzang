; Return whether the indexed bit is set in a byte bitset.
	include	lmacros.h
	assume	cs:codeseg
	procdef	test_bit,<<bitset,word>,<bit_index,word>>
	cld
	pushs	es,si
	movseg	es,ds
	mov	si,bitset
	mov	bx,bit_index
	mov	dx,bx
	mov	cl,3
	shr	bx,cl	; Divide the bit index by eight to select its byte.
	mov	cx,7
	and	cx,dx	; Keep the bit's position within that byte.
	mov	al,1
	shl	al,cl
	test	byte ptr [bx+si],al
	.if	nz	; A matching mask means the requested bit is set.
		mov	ax,1
	.else short
		xor	ax,ax
	.endif
	pops	si,es
	mov	sp,bp
	pret
	pend	test_bit
	finish
	end
