; fexec.asm's save_ss: the caller's SS, kept in the code segment over the EXEC.
codeseg	segment	byte public 'code'
	public	aztec_fexec_save_ss_
aztec_fexec_save_ss_	dw	0000h
codeseg	ends
	end
