; Copyright (C) 1983 1984 by Manx Software Systems
	include lmacros.h
	extrn $lud:near
	extrn loc_QRUP_:near
	extrn $lud:near
	extrn $ldv:near
	intrdef	$lrm
;long remainder	(primary = primary%secondary)
	push	di
	mov	di,0			;mark result as positive
	test	dx,dx
	jns	rprim_ok
	neg	dx
	neg	ax
	sbb	dx,0
	inc	di			;mark as negative
rprim_ok:
	test	bx,bx
	jns	rsec_ok
	neg	bx
	neg	cx
	sbb	bx,0
rsec_ok:
	call $lud
	mov	ax,cx
	mov	dx,bx
	jmp short loc_QRUP_
;
	finish
	end
