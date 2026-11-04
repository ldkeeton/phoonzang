; Copyright (C) 1984 by Manx Software Systems
; :ts=8
	include	lmacros.h
	procdef	aztec_wait
	dos	4dh
	jnc	noerr
	neg	ax
noerr:
	pret
	pend	aztec_wait
	finish
	end
