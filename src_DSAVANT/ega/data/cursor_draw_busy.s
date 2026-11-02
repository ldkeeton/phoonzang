; Cursor draw busy flag; the raw bytes after it look like code, not yet decoded.
codeseg	segment	byte public 'code'
	public	cursor_draw_busy
cursor_draw_busy	db	0
	db	0fch,25h,0ah,00h,74h,34h,2eh,80h,3eh,08h,2bh,00h,75h,29h,2eh,0a2h
	db	08h,2bh,2eh,89h,1eh,02h,2bh,0d1h,0e9h,2eh,89h,0eh,04h,2bh,2eh,89h
	db	16h,06h,2bh,32h,0c0h,2eh,0a2h,08h,2bh,2eh,3bh,0eh,0d9h,1bh,75h,08h
	db	2eh,3bh,16h,0dbh,1bh,75h,01h,0cbh,0d1h,0e1h,2eh,0a0h,27h,02h,2eh,0ah
	db	06h,26h,02h,74h,01h,0cbh
codeseg	ends
	end
