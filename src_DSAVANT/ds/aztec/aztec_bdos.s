;Copyright (C) 1983 by Manx Software Systems
; :ts=8
	include lmacros.h
	procdef	aztec_bdos,<<func,word>,<dxval,word>,<cxval,word>>
	push	es
	mov	ax,func
	test	ah,ah
	jnz	valok
	xchg	ah,al
valok:
	mov	dx,dxval
	mov	cx,cxval
	int	21H
	mov	dx,es
	pop	es
	and	ax,0ffH
	pret
	pend	aztec_bdos
	finish
	end
