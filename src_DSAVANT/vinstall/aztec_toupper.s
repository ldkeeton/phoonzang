; Copyright (C) 1983  by Manx Software Systems
	include lmacros.h
	procdef aztec_toupper,<<val1,byte>>
;
	mov	al,val1
	sub	ah,ah
	cmp	al,'a'
	jl	tu_done
	cmp	al,'z'
	jg	tu_done
	sub	al,'a'-'A'
tu_done:
	pret
	pend	aztec_toupper
;
;
	finish
	end
