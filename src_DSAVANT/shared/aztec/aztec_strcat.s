; :ts=8
;Copyright (C) 1983, 1985 by Manx Software Systems
	include	lmacros.h
	extrn loc_KRNT_:near
	extrn aztec_strncat_:near
	procdef aztec_strcat,<<a,ptr>,<b,ptr>>
	mov	dx,7fffH
	jmp	short loc_KRNT_
	pend	aztec_strcat
	finish
	end
