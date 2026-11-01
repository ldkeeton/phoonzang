; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; 256-byte table: sample byte to device output value (PIT count on device 0, level on others), read with cs xlatb by the INT 08h handlers
	public	sample_output_table
sample_output_table	db	128 dup (0)

codeseg	ends
	end
