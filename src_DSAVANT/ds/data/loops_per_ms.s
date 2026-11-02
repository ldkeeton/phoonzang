; Calibrated delay loops per millisecond.
codeseg	segment	byte public 'code'
	public	loops_per_ms_
loops_per_ms_	db	90h,01h
codeseg	ends
	end
