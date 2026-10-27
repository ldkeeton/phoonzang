; Copyright (C) 1983 by Manx Software Systems
; Restore the registers and caller frame saved by csav.
	include lmacros.h
	public	$cret
$cret	proc
	pops	si,di
	mov	sp,bp
	pop	bp
	ret
$cret	endp
	finish
	end
