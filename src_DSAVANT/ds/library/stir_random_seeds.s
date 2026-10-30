; Advance the three code-segment random seed words with their separate recurrences.
	include	lmacros.h
	assume	cs:codeseg
	extrn	random_seed_a:word, random_seed_b:word, random_seed_c:word
	extrn	glyph_y_table:byte
	public	stir_random_seeds_
stir_random_seeds_ proc near
	pushs	ax,bx,cx,dx
	mov	ax,word ptr cs:random_seed_a
	cwd
	mov	bx,00b1h	; divisor 177 for the first seed remainder
	idiv	bx
	mov	cx,dx
	mov	dx,2		; first recurrence quotient multiplier
	imul	dx
	mov	bx,ax
	mov	ax,00abh	; 171 - 2*remainder coefficient
	imul	cx
	sub	ax,bx
	jns	short seed_a_nonnegative
	add	ax,0763dh	; add the first seed modulus when the intermediate is negative
seed_a_nonnegative:
	mov	word ptr cs:random_seed_a,ax
	mov	ax,word ptr cs:random_seed_b
	cwd
	mov	bx,00b0h	; divisor 176 for the second seed remainder
	idiv	bx
	mov	cx,dx
	mov	dx,023h	; second recurrence quotient multiplier
	imul	dx
	mov	bx,ax
	mov	ax,00ach	; 172 - 35*remainder coefficient
	imul	cx
	sub	ax,bx
	jns	short seed_b_nonnegative
	add	ax,07663h	; add the second seed modulus when the intermediate is negative
seed_b_nonnegative:
	mov	word ptr cs:random_seed_b,ax
	mov	ax,word ptr cs:random_seed_c
	cwd
	mov	bx,00b2h	; divisor 178 for the third seed remainder
	idiv	bx
	mov	cx,dx
	mov	dx,03fh	; third recurrence quotient multiplier
	imul	dx
	mov	bx,ax
	mov	ax,00aah	; 170 - 63*remainder coefficient
	imul	cx
	sub	ax,bx
	jns	short seed_c_nonnegative
	add	ax,07673h	; add the third seed modulus when the intermediate is negative
seed_c_nonnegative:
	mov	word ptr cs:random_seed_c,ax
	pops	dx,cx,bx,ax
	ret
stir_random_seeds_ endp
	finish
	end
