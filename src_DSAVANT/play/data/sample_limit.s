; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; terminal sample-table index
	public	sample_limit
sample_limit	db	00h

codeseg	ends
	end
