; Copyright (C) 1983 1984 by Manx Software Systems
; :ts=8
	include lmacros.h
	extrn loc_IGMS_:near

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
	extrn aztec_write_:near
	procdef	aztec_impl_read, <<rdfd,word>,<xbuff,ptr>,<xlen,word>>
	mov	ah,3fH
	mov	bx,rdfd
	jmp	short loc_IGMS_
	pend	aztec_impl_read
;
	finish
	end
