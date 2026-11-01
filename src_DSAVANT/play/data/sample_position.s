; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; current sample-table index
	public	sample_position
sample_position	db	00h

codeseg	ends
	end
