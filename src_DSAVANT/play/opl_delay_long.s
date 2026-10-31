	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; Read OPL status port 388h 23 times while preserving the registers used.
	procdef	opl_delay_long
	pushs	ax,cx,dx
	mov	dx,388h
	mov	cx,17h		; 23 status reads provide the long delay.
	.repeat
		in	al,dx
	.untilcxz
	pops	dx,cx,ax
	ret
	pend	opl_delay_long

codeseg	ends
	end
