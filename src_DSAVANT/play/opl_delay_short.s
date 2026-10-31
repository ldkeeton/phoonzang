	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; Read OPL status port 388h four times while preserving the registers used.
	procdef	opl_delay_short
	pushs	ax,cx,dx
	mov	dx,388h		; OPL status register port.
	mov	cx,4		; Four reads provide the short delay.
	.repeat
		in	al,dx
	.untilcxz
	pops	dx,cx,ax
	ret
	pend	opl_delay_short

codeseg	ends
	end
