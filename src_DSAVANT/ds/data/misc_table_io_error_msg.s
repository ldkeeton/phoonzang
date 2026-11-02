; Misc. table load failure message; ends in a DOS $.
codeseg	segment	byte public 'code'
	public	misc_table_io_error_msg_
misc_table_io_error_msg_	db	07h,0dh,0ah,49h,2fh,4fh,20h,65h,72h,72h,6fh,72h,20h,6ch,6fh,61h
	db	64h,69h,6eh,67h,20h,4dh,69h,73h,63h,2eh,20h,74h,61h,62h,6ch,65h
	db	2eh,0dh,0ah,24h
codeseg	ends
	end
