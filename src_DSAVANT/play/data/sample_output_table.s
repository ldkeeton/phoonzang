; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; 256-byte table: sample byte to device output value (PIT count on device 0, level on others), read with cs xlatb by the INT 08h handlers
	public	sample_output_table
sample_output_table	db	128 dup (0)

; upper 128 bytes of sample_output_table, written separately by build_opl_sample_curve
	public	sample_output_table_upper
sample_output_table_upper	db	128 dup (0)

codeseg	ends
	end
