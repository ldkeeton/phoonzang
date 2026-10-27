; Copyright (C) 1984 by Manx Software Systems
; :ts=8
	include	lmacros.h
	extrn loc_SGGJ_:near
dataseg	segment	para public 'data'
	extrn	errno_:word
dataseg	ends
	assume	ds:dataseg
	extrn aztec_mkdir_:near
	procdef	aztec_rmdir,<<nnamea,ptr>>
	mov	ah,3aH
	jmp short loc_SGGJ_
	pend	aztec_rmdir
;
	finish
	end
