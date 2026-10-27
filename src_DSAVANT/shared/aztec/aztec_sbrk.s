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
	extrn aztec_brk_:near
	procdef	aztec_sbrk,<<siz,word>>
	push	di
	mov	ax,siz
	mov	di,$MEMRY
	test	ax,ax
	jge	addok
	sub	di,ax
	jc	invalid
	jmp	short dobrk
addok:
	add	ax,di
	jc	invalid
dobrk:
	push	ax
	call	aztec_brk_
	pop	cx
	test	ax,ax
	jnz	brk_error
	mov	ax,di		;return original value of the break
brk_error:
	pop	di
	test	ax,ax		;set flags for C
	pret
invalid:
	mov	errno_,-8
	mov	ax,-1
	jmp	brk_error
	pend	aztec_sbrk
;
; brk(addr):	set current top address to addr
;		returns 0 if ok, -1 if error
;
	finish
	end
