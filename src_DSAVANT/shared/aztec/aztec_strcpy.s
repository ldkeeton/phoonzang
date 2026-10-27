; :ts=8
;Copyright (C) 1983, 1985 by Manx Software Systems
	include lmacros.h
	procdef aztec_strcpy,<<str1,ptr>,<str2,ptr>>
	cld
	pushs	si,di
	pushds
ifndef LONGPTR
	mov	di,ds
	mov	es,di
endif
	ldptr	di,str2
	mov	cx,0ffffH
	mov	al,0
repne	scasb
	not	cx		;real length of string
	ldptr	di,str1
	ldptr	si,str2
	shr	cx,1
	jcxz	nowords
rep	movsw

nowords:
	jnc	nobyte
	movsb
nobyte:
	popds
	pops	di,si
	retptrm	str1
	pret
	pend	aztec_strcpy
	finish
	end
