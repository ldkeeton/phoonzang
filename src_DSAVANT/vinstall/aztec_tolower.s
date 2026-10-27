; Copyright (C) 1983  by Manx Software Systems
	include lmacros.h
	procdef aztec_tolower,<<val2,byte>>
;
	mov	al,val2
	sub	ah,ah
	cmp	al,'A'
	jl	skip
	cmp	al,'Z'
	jg	skip
	add	al,'a'-'A'
skip:
	pret
	pend	aztec_tolower
	finish
	end
