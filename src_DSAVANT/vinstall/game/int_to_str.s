	; :ts=8
	include lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	reverse_text_:near
	public	int_to_str_

; Write the signed decimal digits in reverse order, then reverse the buffer.
int_to_str_ proc near
number_value	equ	word ptr 4[bp]
text_buffer	equ	word ptr 6[bp]
	push	bp
	mov	bp,sp
	pushs	di,si
	mov	di,number_value
	mov	ax,di
	; Convert a negative input to its magnitude while DI retains its sign.
	.if	ax slt 0
		neg	ax
		mov	number_value,ax
	.endif
	mov	si,0
	; Store decimal remainders from least to most significant.
	.repeat
		mov	ax,number_value
		mov	cx,10
		cwd
		idiv	cx
		mov	ax,dx
		add	ax,30h
		mov	cx,text_buffer
		add	cx,si
		mov	bx,cx
		inc	si
		mov	byte ptr [bx],al
		mov	ax,number_value
		mov	cx,10
		cwd
		idiv	cx
		mov	number_value,ax
	.until	ax sle 0
	; Append a minus sign when the original value was negative.
	.if	di slt 0
		mov	ax,text_buffer
		add	ax,si
		mov	bx,ax
		inc	si
		mov	byte ptr [bx],2dh
	.endif
	mov	bx,text_buffer
	mov	byte ptr [bx+si],0
	push	text_buffer
	call	reverse_text_
	pops	cx,si,di
	mov	sp,bp
	pop	bp
	ret
int_to_str_ endp
codeseg	ends
	end
