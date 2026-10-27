; Copyright 1987 Manx Software Systems, Inc.   All rights reserved.
;:ts=8
	include lmacros.h
	procdef	aztec_lfree,<<areaptr,dword>>
	push	es
	mov	es,word ptr areaptr+2
	dos	49h
	jnc	other_return
	mov	ax,-1
	jmp	exit
other_return:
	xor	ax,ax
exit:
	pop	es
	pret
	pend	aztec_lfree
	finish
	end
