; Copyright (C) 1983 1984 by Manx Software Systems
	include lmacros.h
	public aztec_dbgcaller_
aztec_dbgcaller_	proc
	pushs	di,si	; CS value of local function; IP value call local function
	db	0cbH		;far return instruction
aztec_dbgcaller_	endp

	finish
	end
