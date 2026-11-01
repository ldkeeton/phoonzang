; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; three unreferenced bytes after sample_fraction_interrupt; they decode as a jump into the middle of mov dx,0x331 at 121c, purpose unknown
	public	sample_handler_gap
sample_handler_gap	db	0e9h,0afh,09h

codeseg	ends
	end
