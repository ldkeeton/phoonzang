; Combines three scaled seed remainders into a 15-bit random value.
	include	lmacros.h
	assume	cs:codeseg
	extrn	stir_random_seeds_:near
	extrn	random_seed_a:word
	extrn	random_seed_b:word
	extrn	random_seed_c:word
	public	random_15bit_
random_15bit_ proc near
	push	bp
	mov	bp,sp
	cld
	pushs	di,si,es
	movseg	es,ds
	call	stir_random_seeds_
	mov	ax,word ptr cs:random_seed_a
	xor	dx,dx
	mov	bx,0763dh	;first seed divisor
	div	bx
	mov	ax,02710h	;scale remainder by 10000
	mul	dx
	mov	bx,0763dh
	div	bx
	and	ax,07fffh	;retain 15 bits
	mov	cx,ax
	mov	ax,word ptr cs:random_seed_b
	xor	dx,dx
	mov	bx,07663h	;second seed divisor
	div	bx
	mov	ax,02710h	;scale remainder by 10000
	mul	dx
	mov	bx,07663h
	div	bx
	and	ax,07fffh
	add	cx,ax
	and	cx,07fffh	;retain 15 bits of the partial sum
	mov	ax,word ptr cs:random_seed_c
	xor	dx,dx
	mov	bx,07673h	;third seed divisor
	div	bx
	mov	ax,02710h	;scale remainder by 10000
	mul	dx
	mov	bx,07673h
	div	bx
	and	ax,07fffh
	add	ax,cx
	and	ax,07fffh	;return a 15-bit sum
	pops	es,si,di
	mov	sp,bp
	pop	bp
	ret
random_15bit_ endp
	finish
	end
