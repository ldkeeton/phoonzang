; Copyright (C) 1983 1984 by Manx Software Systems
; :ts=8
	include lmacros.h

ifdef	FARPROC
	extrn	aztec_impl_tty_rd_:far,aztec_impl_tty_wr_:far
else
	extrn	aztec_impl_tty_rd_:near,aztec_impl_tty_wr_:near
endif

dataseg	segment	para public 'data'
	extrn	errno_:word
	public	_ioflg_
_ioflg_	db	20 dup (0)
	public	_ttrd_, _ttwr_

ifdef FARPROC
_ttrd_	dd	aztec_impl_tty_rd_
else
_ttrd_	dw	offset aztec_impl_tty_rd_
endif

ifdef	FARPROC
_ttwr_	dd	aztec_impl_tty_wr_
else
_ttwr_	dw	offset aztec_impl_tty_wr_
endif
dataseg	ends

	assume	ds:dataseg
;
	procdef	aztec_write, <<fd,word>,<buffer,ptr>,<len,word>>
			;write(fd, buffer, length)
			;char *buffer; int length;
	mov	ah,40H
loc_ILUN_:
	mov	bx,fd
	cmp	_ioflg_[bx],0
	jz	loc_IGMS_
	pop	bp
	cmp	ah,03fH
	je	readit
	jmp	_ttwr_
readit:
	jmp	_ttrd_
;
loc_IGMS_:
	pushds
	ldptr	dx,buffer,ds
	mov	cx,len
	int	21H
	popds
	jnc	io_ok
	mov	errno_,ax
	mov	ax,-1
io_ok:
	pret
	pend aztec_write
	finish
	end
