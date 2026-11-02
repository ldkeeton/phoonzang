; EGA palette registers for INT 10h AX=1002h.
codeseg	segment	byte public 'code'
	public	ega_palette_
ega_palette_	db	00h,17h,11h,15h,14h,16h,12h,13h,10h,07h,01h,05h,04h,06h,02h,03h
	db	00h
codeseg	ends
	end
