; Copyright (C) 1983 1984 by Manx Software Systems
	include lmacros.h
	extrn aztec_begin_exitad_:dword
	public aztec_exit_return_
aztec_exit_return_ proc near
	jmp dword ptr cs:aztec_begin_exitad_
aztec_exit_return_ endp
	finish
	end
