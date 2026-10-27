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
	procdef	aztec_rename, <<old,ptr>,<new,ptr>>
			;rename(old, new)
	push	di
	pushds
	mov	ah,56H
	ldptr	dx,old,ds
ifndef LONGPTR
	mov	di,ds
	mov	es,di
endif
	ldptr	di,new,es
	int	21H
	popds
	pop	di
	jnc	rnm_ok
	mov	errno_,ax
	mov	ax,-1
	pret
rnm_ok:
	sub	ax,ax
	pret
	pend	aztec_rename
	finish
	end
