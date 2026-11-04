; fexec.asm's save_sp: the caller's SP, kept in the code segment over the EXEC.
codeseg	segment	byte public 'code'
	public	aztec_fexec_save_sp_
aztec_fexec_save_sp_	dw	0000h
codeseg	ends
	end
