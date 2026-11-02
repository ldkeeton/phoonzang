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
	procdef	aztec_impl_read, <<rdfd,word>,<xbuff,ptr>,<xlen,word>>
	mov	ah,3fH
	mov	bx,rdfd
	jmp	short use_dos
	pend	aztec_impl_read
;
	procdef	aztec_impl_write, <<wrfd,word>,<ybuff,ptr>,<ylen,word>>
	mov	ah,40H
	mov	bx,wrfd
	jmp	short use_dos
	pend	aztec_impl_write
;
	procdef	aztec_read, <<ifd,word>,<ibuffer,ptr>,<ilen,word>>
			;read_(fd, buffer, length)
			;char *buffer; int length;

	mov	ah,3fH
	jmp	short iocommon
	pend	aztec_read
;
	procdef	aztec_write, <<fd,word>,<buffer,ptr>,<len,word>>
			;write(fd, buffer, length)
			;char *buffer; int length;
	mov	ah,40H
iocommon:
	mov	bx,fd
	cmp	_ioflg_[bx],0
	jz	use_dos
	pop	bp
	cmp	ah,03fH
	je	readit
	jmp	_ttwr_
readit:
	jmp	_ttrd_
;
use_dos:
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
	pend	aztec_write
;
	procdef	aztec_close, <<ffd,word>>
		;close(fd)
	mov	ah,3eH
	mov	bx,ffd
	int	21H
	jnc	cls_ok
	mov	errno_,ax
	mov	ax,-1
	pret
cls_ok:
	sub	ax,ax
	pret
	pend	aztec_close
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
