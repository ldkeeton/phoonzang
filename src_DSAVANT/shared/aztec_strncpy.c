/* auto-generated */
#asm
; :ts=8
;Copyright (C) 1983, 1985 by Manx Software Systems
	include	lmacros.h
	procdef strncpy,<<str1,ptr>,<str2,ptr>,<len,word>>
	cld
	push	si
	push	di
	pushds
	mov	cx,len
ifndef LONGPTR
	mov	di,ds
	mov	es,di
endif
	ldptr	di,str1
	ldptr	si,str2
	jcxz	cpydone
cpyloop:
	lodsb
	test	al,al
	jz	zerofill
	stosb
	loop	cpyloop
	jmp	short cpydone
zerofill:
rep	stosb
cpydone:
	popds
	pop	di
	pop	si
	retptrm	str1
	pret
	pend	strncpy
	finish
	end
#endasm
