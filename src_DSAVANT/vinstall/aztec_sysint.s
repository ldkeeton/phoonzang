; :ts=8
;Copyright (C) 1983 by Manx Software Systems
	include lmacros.h
	procdef aztec_sysint,<<num,byte>,<sregs,ptr>,<dregs,ptr>>
	sub	sp,14
	pushs	si,di,es,ds
;
;	build instruction sequence on the stack to issue int
;		and restore ss:sp to value before int.
;	Note: All this is because some handlers don't restore ss and sp.
;
	mov	byte ptr -10[bp],0cdH		;int xx
	mov	al,num
	mov	byte ptr -9[bp],al
	mov	word ptr -8[bp],0cd8cH		;mov bp,cs
	mov	word ptr -6[bp],0d58eH		;mov ss,bp
	mov	byte ptr -4[bp],0bcH		;mov sp,xx
	mov	ax,sp
	sub	ax,6
	mov	word ptr -3[bp],ax
	mov	byte ptr -1[bp],0cbH		;retf
	mov	word ptr -12[bp],ss		;set up pointer to above code
	lea	ax,-10[bp]
	mov	word ptr -14[bp],ax
;
	ldptr	bx,sregs,ds
	mov	ax,[bx]
	push	2[bx]		;value to go into BX
	mov	cx,4[bx]
	mov	dx,6[bx]
	mov	si,8[bx]
	mov	di,10[bx]
	mov	es,14[bx]
	mov	ds,12[bx]
	pop	bx
	push	bp
	call	ss:dword ptr -14[bp]
	pop	bp
	pushs	ds,bx	; save values so we have working registers
	ldptr	bx,dregs,ds
ifdef LONGPTR
	mov	[bx],ax
	pop	2[bx]		;value returned in BX
	mov	4[bx],cx
	mov	6[bx],dx
	mov	8[bx],si
	mov	10[bx],di
	pop	12[bx]		;value returned in DS
	mov	14[bx],es
	pop	ds
else
	mov	ss:14[bx],es
	pop	ss:2[bx]		;value returned in BX
	pop	ss:12[bx]		;value returned in DS
	pop	ds
	mov	[bx],ax
	mov	4[bx],cx
	mov	6[bx],dx
	mov	8[bx],si
	mov	10[bx],di
endif
	pops	es,di,si
	pushf
	pop	ax
	add	sp,14
	pret
	pend	aztec_sysint
	finish
	end
