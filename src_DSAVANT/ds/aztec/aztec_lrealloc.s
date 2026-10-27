; Copyright 1987 Manx Software Systems, Inc.   All rights reserved.
;:ts=8
	include lmacros.h
	procdef	aztec_lrealloc,<<area_ptr,dword>,<count,dword>>

	mov	ax,word ptr count
	mov	dx,word ptr count+2
	mov	cx,4

right_shift:
	shr	dx,1
	rcr	ax,1
	loop	right_shift
	mov	bx,ax
	mov	ah,4ah
	mov	es,word ptr area_ptr+2
	int	21h
	jc	failure
	mov	ax,word ptr area_ptr
	mov	dx,word ptr area_ptr+2
return:
	pret
failure:
	xor	ax,ax
	xor	dx,dx
	jmp	return
	pend	aztec_lrealloc
	finish
	end
