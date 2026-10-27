; Copyright (C) 1983 1984 by Manx Software Systems
	include lmacros.h
	intrdef	$lud
;unsigned long divide	(primary = primary/secondary)
	ifdef	FARPROC
	call	comdivide
	ret
	endif

;	fall thru into common divide routine if not large code model
;
; comdivide		; divide (dx,ax) by (bx,cx):
;				returns quotient in (dx,ax)
;					remainder in (bx,cx)
;
	test	bx,bx		;check for easy case
	jnz	hardldv
	cmp	cx,dx
	ja	veryeasy
	push	ax
	mov	ax,dx
	sub	dx,dx
	div	cx
	mov	bx,ax		;save high word of quotient
	pop	ax
	div	cx
	mov	cx,dx		;save remainder
	mov	dx,bx
	sub	bx,bx
	ret
veryeasy:
	div	cx
	mov	cx,dx		;save remainder
	mov	dx,bx		;bx is already zero if we are here
	ret
hardldv:
	pushs	di,si
	mov	si,cx		;copy divisor (bx,cx) into (di,si)
	mov	di,bx
	pushs	dx,ax	; save dividend for remainder calculation

	test	bh,bh
	jz	shiftit
	mov	cl,ch		;shift bx,cx right 8 bits
	mov	ch,bl
	mov	bl,bh
	mov	al,ah		;shift dx,ax right 8 bits
	mov	ah,dl
	mov	dl,dh
	sub	dh,dh
shiftit:
	shr	dx,1
	rcr	ax,1
	shr	bl,1
	rcr	cx,1
	test	bl,bl
	jnz	shiftit

	div	cx		;guess at quotient (may off by 1)
	mov	cx,ax
			; compute remainder = dividend - divisor*quotient
	mul	si
	mov	bx,dx
	push	ax		;save low half
	mov	ax,cx
	mul	di
	add	bx,ax
	jnc	normal_path
	dec	cx
	pop	ax	; delete top element off the stack
	mov	ax,cx
	mul	di
	mov	bx,ax	; save the answer into bx
	mov	ax,cx
	mul	si
	add	bx,dx
	mov	es,cx	; es now contains the answer of the divide
	mov	cx,ax
; bx:cx now contains  result * quotient
	pops	ax,dx
	sub	cx,ax
	sbb	bx,dx
	not	cx
	not	bx
	add	cx,1
	adc	bx,0
	mov	ax,es
	jmp	answer_ok
normal_path:
	mov	dx,bx		;high half
	mov	ax,cx		;restore quotient to ax for return

	pops	bx,cx	; low half of divisor*quotient; low half of dividend
	sub	cx,bx
	pop	bx		;high half of dividend
	sbb	bx,dx
	jnc	answer_ok	;if we get a borrow, answer was too big
	add	cx,si		;so adjust the remainder
	adc	bx,di
	dec	ax		;and the quotient
answer_ok:
	sub	dx,dx
	pops	si,di
	ret

	finish
	end
