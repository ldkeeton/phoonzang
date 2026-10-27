; Copyright (C) 1983 1984 by Manx Software Systems
	include lmacros.h
	extrn $lud:near
	extrn $lud:near
	intrdef	$lum
;unsigned long remainder	(primary = primary%secondary)
	call $lud
	mov	ax,cx
	mov	dx,bx
	ret
;
	finish
	end
