	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	opl_operator_map:word

; Return the two-operator map word for channel AL in DX, preserving AX and BX.
	procdef	opl_channel_operators
	pushs	ax,bx
	xor	ah,ah
	mov	bx,offset opl_operator_map
	shl	ax,1		; Each channel entry occupies one word.
	add	bx,ax
	mov	dx,word ptr cs:[bx]
	pops	bx,ax
	ret
	pend	opl_channel_operators

codeseg	ends
	end
