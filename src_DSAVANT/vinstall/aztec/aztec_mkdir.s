; Copyright (C) 1984 by Manx Software Systems
; :ts=8
	include	lmacros.h
dataseg	segment	para public 'data'
	extrn	errno_:word
dataseg	ends
	assume	ds:dataseg
	procdef	aztec_mkdir,<<namea,ptr>>
;			char *mkdir(name)
;			char *name;
;
	mov	ah,39h
dircommon:
	pushds
	ldptr	dx,namea,ds
	int	21h
	popds
	mov	ax,0
	jnc	ok
	mov	errno_,ax
	mov	ax,-1
ok:
	pret
	pend aztec_mkdir
;
	procdef aztec_rmdir,<<nnamea,ptr>>
	mov ah,3ah
	jmp short dircommon
	pend aztec_rmdir
;
	procdef aztec_chdir,<<xnamea,ptr>>
	mov ah,3bh
	jmp short dircommon
	pend aztec_chdir
	finish
	end
