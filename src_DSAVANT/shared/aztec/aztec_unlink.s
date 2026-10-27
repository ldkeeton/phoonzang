; Copyright (C) 1983 1984 by Manx Software Systems
; :ts=8
	include lmacros.h

ifdef	FARPROC
	extrn	__tty_rd_:far,__tty_wr_:far
else
	extrn	__tty_rd_:near,__tty_wr_:near
endif

dataseg	segment	para public 'data'
	extrn	errno_:word
	extrn _ioflg_:byte, _ttrd_:word, _ttwr_:word
dataseg	ends

	assume	ds:dataseg
;
	procdef	aztec_unlink,<<namea,ptr>>
			;unlink(name)
	pushds
	mov	ah,41H
	ldptr	dx,namea,ds
	int	21H
	popds
	jnc	unl_ok
	mov	errno_,ax
	mov	ax,-1
	pret
unl_ok:
	sub	ax,ax
	pret
	pend	aztec_unlink
;
	finish
	end
