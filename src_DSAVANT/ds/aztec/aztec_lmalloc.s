; Copyright 1987 Manx Software Systems, Inc.   All rights reserved.
;:ts=8
	include lmacros.h
	procdef	aztec_lmalloc,<<asize,dword>>
	mov	ax,word ptr asize
	mov	dx,word ptr asize+2
	test	dx,dx
	js	badalloc
	add	ax,15
	adc	dx,0
	mov	cx,4
rshift:
	shr	dx,1
	rcr	ax,1
	loop	rshift
	test	dx,dx
	jnz	badalloc
	mov	bx,ax
	dos	48H
	jc	badalloc
	mov	dx,ax
	mov	ax,0
	jmp	short lmret
;
badalloc:
	mov	ax,0
	mov	dx,ax
lmret:
	pret
	pend	aztec_lmalloc
	finish
	end
