; Lookup table used when expanding pixels to EGA planes.
codeseg	segment	byte public 'code'
	public	pixel_plane_lookup
pixel_plane_lookup	db	00h,11h,19h,19h,18h,18h,01h,01h,01h,09h,09h,09h,08h,08h,08h,00h
	db	11h,19h,14h,14h,44h,44h,44h,44h,4ch,4ch,0cch,0cch,04h,04h,0ch,0ch
	db	08h,08h,00h,00h,14h,45h,45h,44h,4dh,0ddh,0ddh,04h,45h,45h,5dh,5ch
	db	16h,66h,66h,6eh,6eh,0eeh,06h,0eh,0eh,08h,08h,5ch,9dh,8dh,8dh,0ceh
	db	59h,56h,5eh,6dh,0deh,0ceh,0ceh,08h,08h,00h,00h,7fh,0ffh,07h,0fh,0fh
	db	15h,15h,15h,55h,55h,55h,59h,5dh,46h,05h,0ceh,0ceh,08h,08h,27h,0afh
	db	19h,19h,19h,19h,18h,18h,18h,18h,18h,01h,01h,01h,01h,09h,09h,09h
	db	09h,08h,08h,08h,08h,00h,00h,00h,01h,09h,09h,09h,0adh,08h,08h,08h
	db	17h,17h,1fh,27h,27h,27h,27h,2fh,2fh,0afh,2dh,02h,0fh,0adh,08h,08h
	db	1ch,1ch,48h,48h,14h,14h,34h,22h,22h,22h,2ah,02h,0ah,0ah,08h,08h
	db	8dh,04h,04h,0dh,34h,3ch,0bch,13h,33h,33h,3bh,0bbh,0bbh,03h,0bh,08h
	db	55h,55h,55h,59h,59h,59h,5dh,5dh,12h,12h,1ah,1ah,28h,28h,28h,02h
	db	5dh,5dh,9dh,9dh,9dh,8dh,8dh,8dh,0dh,0dh,0dh,0dh,08h,08h,08h,00h
	db	1dh,5dh,5dh,9dh,9dh,05h,8dh,15h,14h,14h,14h,1dh,1dh,1dh,1ch,1ch
	db	09h,09h,08h,59h,1dh,9dh,8dh,9dh,48h,8dh,8dh,8dh,0dh,0dh,08h,00h
	db	1ch,48h,48h,04h,04h,0ch,12h,23h,23h,2bh,0abh,0abh,02h,0bh,08h,2dh
codeseg	ends
	end
