;Copyright (C) 1983 by Manx Software Systems
; :ts=8
	include lmacros.h
	procdef aztec_fcbinit, <<jname,ptr>,<fcb,ptr>>
	pushds
	pushs	di,si
ifndef LONGPTR
	mov	di,ds
	mov	es,di
endif
	ldptr	si,jname
	ldptr	di,fcb
	dosx	2900H	; issue parse filename call
	and	ax,0ffH
	cmp	es:byte ptr 1[di],' '
	jne	nameok
	mov	ax,-1
nameok:
	pops	si,di
	popds
	pret
	pend	aztec_fcbinit
	finish
	end
