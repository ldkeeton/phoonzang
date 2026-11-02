; Driver and table block sizes, with the segments they load into.
codeseg	segment	byte public 'code'
	public	driver_block_table_
driver_block_table_	db	80h,41h,00h,00h,00h,10h,00h,00h,40h,01h
	public	font_header_seg_
font_header_seg_	db	00h,00h,40h,00h
	public	misc_table_seg_
misc_table_seg_	db	00h,00h,30h,05h
	public	cseg_2f52_
cseg_2f52_	db	00h,00h,0d0h,01h
	public	cseg_2f56_
cseg_2f56_	db	00h,00h
	public	driver_block_table_end_
driver_block_table_end_	db	4 dup (0)
	db	3eh,2fh,0bch,34h
codeseg	ends
	end
