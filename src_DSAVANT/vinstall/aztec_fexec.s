; Copyright (C) 1984 by Manx Software Systems
; :ts=8
	include lmacros.h
dataseg segment para public 'data'
param	equ	this word
env	dw	?
cline	dw	?,?
fcb1	dw	?,?
fcb2	dw	?,?
	extrn	errno_:word
dataseg	ends
	assume	ds:dataseg
	extrn aztec_fexec_save_ss_:word
save_ss equ aztec_fexec_save_ss_
	extrn aztec_fexec_save_sp_:word
save_sp equ aztec_fexec_save_sp_
	procdef	aztec_fexec,<<filname,ptr>,<enva,word>,<clinea,ptr>,<fcb1a,ptr>,<fcb2a,ptr>>
;			char *fexec(name,env,cline,fcb1,fcb2)
;
	pushs	si,di
	pushf
	push	[030H]
	push	[02EH]
	pushs	ds,es
	mov	cs:save_ss,ss
	mov	cs:save_sp,sp
;
;	set up parameter block for exec call
;
	mov	ax,enva
	mov	env,ax
ifndef LONGPTR
	movseg	es,ds
endif
	ldptr	ax,clinea,es
	mov	cline,ax
	mov	cline+2,es
	ldptr	ax,fcb1a,es
	mov	fcb1,ax
	mov	fcb1+2,es
	ldptr	ax,fcb2a,es
	mov	fcb2,ax
	mov	fcb2+2,es
;
	movseg	es,ds
	mov	bx,offset env	;param
	ldptr	dx,filname,ds		;name of file to exec
	dosx	04b00H
	mov	ss,cs:save_ss
	mov	sp,cs:save_sp
	pops	es,ds
	jnc	noerror
	mov	errno_,ax
	mov	ax,-1
	jmp	short done
noerror:
	sub	ax,ax
done:
	pop	[02EH]
	pop	[030H]
	popf
	pops	di,si
	pret
	pend	aztec_fexec
	finish
	end
