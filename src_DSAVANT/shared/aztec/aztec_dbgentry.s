; Copyright (C) 1983 1984 by Manx Software Systems
	include lmacros.h
	extrn aztec_dbgentry_retip_:word, aztec_dbgentry_retcs_:word
	extrn aztec_dbgcaller_:near
	public $dbgentry
$dbgentry proc far
	pop	cs:aztec_dbgentry_retip_
	pop	cs:aztec_dbgentry_retcs_	; save return address into debugger
	pop	ds		;set DS
	call aztec_dbgcaller_
	jmp	dword ptr cs:aztec_dbgentry_retip_ ; return to debugger
$dbgentry endp

	finish
	end
