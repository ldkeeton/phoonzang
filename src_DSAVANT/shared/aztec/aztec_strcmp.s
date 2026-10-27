; :ts=8
;Copyright (C) 1983 by Manx Software Systems
	include	lmacros.h
	extrn loc_OSRT_:near
	extrn loc_PGTO_:near
	extrn aztec_strncmp_:near
	procdef aztec_strcmp,<<s1,ptr>,<s2,ptr>>
	cld
	pushs	si,di
	pushds
	ldptr	si,s1
ifndef LONGPTR
	mov	di,ds
	mov	es,di
endif
	ldptr	di,s2
cmploop:
	lodsw
	scasw
	jne	loc_OSRT_
	test	al,al
	jz	loc_PGTO_
	test	ah,ah
	jnz	cmploop
	jmp	short loc_PGTO_
	pend	aztec_strcmp
	finish
	end
