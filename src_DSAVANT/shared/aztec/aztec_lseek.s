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
	procdef	aztec_lseek, <<fffd,word>,<pos1,word>,<pos2,word>,<how,byte>>
		;long lseek(fd, pos, how)
			;long pos;
	mov	ah,42H
	mov	al,how
	mov	dx,pos1
	mov	cx,pos2
	mov	bx,fffd
	int	21H
	jnc	lsk_ok
	mov	errno_,ax
	mov	ax,-1
	mov	dx,ax
lsk_ok:
	pret
	pend	aztec_lseek
;
	finish
	end
