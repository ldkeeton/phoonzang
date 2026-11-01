; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; upper 128 bytes of sample_output_table, written separately by build_opl_sample_curve
	public	sample_output_table_upper
sample_output_table_upper	db	128 dup (0)

codeseg	ends
	end
