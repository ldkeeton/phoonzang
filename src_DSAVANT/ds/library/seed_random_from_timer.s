; Seed the second random word from the BIOS timer tick count.
	include	lmacros.h
	assume	cs:codeseg
	extrn	random_seed_b:word
	public	seed_random_from_timer_
seed_random_from_timer_ proc near
	push	es
	movseg	es,0	; the BIOS data area is addressed from segment zero here
	mov	bx,046ch	; BIOS timer tick counter offset
	mov	ax,word ptr es:[bx]
	pop	es
	add	ax,2	; offset the sampled tick count before storing the seed
	mov	word ptr cs:random_seed_b,ax
	ret
seed_random_from_timer_ endp
	finish
	end
