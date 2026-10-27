; Copyright (C) 1983 1984 by Manx Software Systems
	include lmacros.h
	extrn $lud:near
	intrdef	$ldv
;long divide	(primary = primary/secondary)
	push	di
	sub	di,di			;mark result as positive
	test	dx,dx
	jns	prim_ok
	neg	dx
	neg	ax
	sbb	dx,0
	inc	di			;mark as negative
prim_ok:
	test	bx,bx
	jns	sec_ok
	neg	bx
	neg	cx
	sbb	bx,0
	xor	di,1			;flip sign of result
sec_ok:
	call $lud
loc_QRUP_:
	test	di,di
	jz	posres
	neg	dx
	neg	ax
	sbb	dx,0
posres:
	pop	di
	ret
	finish
	end
