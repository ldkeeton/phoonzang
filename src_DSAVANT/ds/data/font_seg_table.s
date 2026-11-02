; Loaded font segments.
codeseg	segment	byte public 'code'
	public	font_seg_table_
font_seg_table_	db	20 dup (0)
	db	0ffh,0ffh
codeseg	ends
	end
