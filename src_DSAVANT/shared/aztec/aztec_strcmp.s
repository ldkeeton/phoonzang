	include	lmacros.h

	public	aztec_strncmp_

; Compare bytes in word pairs, resolving a differing pair in byte order.
	procdef	aztec_strcmp,<<left,ptr>,<right,ptr>>
limit	equ	8
	cld
	pushs	si,di
	mov	si,left
	mov	di,ds
	mov	es,di
	mov	di,right
	.repeat
		lodsw
		scasw
		jne	differing_pair
		test	al,al
		je	equal_strings	; a null ends the comparison
	.until	not ah and ah
	jmp	short equal_strings

; Bounded entry shares the byte-order resolution and return paths.
aztec_strncmp_:
	push	bp
	mov	bp,sp
	mov	cx,word ptr [bp+limit]
	mov	dx,cx
	shr	cx,1		; compare complete pairs first
	cld
	pushs	si,di
	mov	si,left
	mov	di,ds
	mov	es,di
	mov	di,right
	jcxz	odd_byte
bounded_pairs:
	lodsw
	scasw
	jne	differing_pair
	test	al,al
	je	equal_strings
	test	ah,ah
	loopne	bounded_pairs	; retain both the count and null test
	je	equal_strings
odd_byte:
	test	dl,1		; an odd bound leaves one byte
	je	equal_strings
	cmpsb
	jne	comparison_result
equal_strings:
	sub	ax,ax
return_result:
	pops	di,si
	pret
differing_pair:
	sub	di,2
	scasb
	jne	comparison_result
	test	al,al
	je	equal_strings
	mov	al,ah
	scasb
comparison_result:
	sbb	ax,ax
	js	return_result
	inc	ax
	jmp	short return_result
	pend	aztec_strcmp
	finish
	end
