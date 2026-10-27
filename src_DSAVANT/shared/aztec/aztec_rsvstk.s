; :ts=8
;Copyright (C) 1983 by Manx Software Systems
	include lmacros.h
dataseg	segment	word public 'data'
	extrn	$MEMRY:word
	extrn	_mbot_:word, _sbot_:word
	extrn	_mtop_:word
	extrn	errno_:word
	extrn	_STKLOW_:word
	extrn	_STKRED_:word
	extrn	_PSP_:word
dataseg	ends
	assume	ds:dataseg
;
; sbrk(size): return address of current top & bump by size bytes
;
	procdef	aztec_rsvstk,<<stksize,word>>
	mov	ax,sp
	sub	ax,stksize
	mov	_STKRED_,ax
	pret
	pend	aztec_rsvstk
	finish
	end
