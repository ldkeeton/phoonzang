; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; 256-byte velocity curve used to scale OPL operator levels by playback volume
	public	opl_velocity_scale_table
opl_velocity_scale_table	db	3fh,3eh,36h,32h,2eh,2ch,2ah,28h,26h,25h,24h,23h,22h,21h,20h,1fh
	db	1eh,1eh,1dh,1ch,1ch,1bh,1bh,1ah,1ah,19h,19h,18h,18h,17h,17h,17h
	db	16h,16h,16h,15h,15h,15h,14h,14h,14h,13h,13h,13h,13h,12h,12h,12h
	db	12h,11h,11h,11h,11h,11h,10h,10h,10h,10h,0fh,0fh,0fh,0fh,0fh,0fh
	db	0eh,0eh,0eh,0eh,0eh,0dh,0dh,0dh,0dh,0dh,0dh,0ch,0ch,0ch,0ch,0ch
	db	0ch,0ch,0bh,0bh,0bh,0bh,0bh,0bh,0bh,0ah,0ah,0ah,0ah,0ah,0ah,0ah
	db	0ah,0ah,09h,09h,09h,09h,09h,09h,09h,09h,08h,08h,08h,08h,08h,08h
	db	08h,08h,08h,08h,07h,07h,07h,07h,07h,07h,07h,07h,07h,07h,06h,06h
	db	06h,06h,06h,06h,06h,06h,06h,06h,06h,06h,05h,05h,05h,05h,05h,05h
	db	05h,05h,05h,05h,05h,05h,04h,04h,04h,04h,04h,04h,04h,04h,04h,04h
	db	04h,04h,04h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h
	db	03h,03h,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h
	db	02h,02h,01h,01h,01h,01h,01h,01h,01h,01h,01h,01h,01h,01h,01h,01h
	db	01h,01h,01h
	db	47 dup (0)

codeseg	ends
	end
