; Copyright (C) 1984 by Manx Software Systems
; :ts=8
	include	lmacros.h
	extrn loc_SGGJ_:near
dataseg	segment	para public 'data'
	extrn	errno_:word
dataseg	ends
	assume	ds:dataseg
	extrn aztec_mkdir_:near
	procdef	aztec_chdir,<<xnamea,ptr>>
	mov	ah,3bH
	jmp short loc_SGGJ_
	pend	aztec_chdir
	finish
	end
