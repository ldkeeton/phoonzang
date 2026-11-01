; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; 3-byte filename extension per music device, appended by configure_music_device
	public	device_file_extensions
device_file_extensions	db	00h,00h,00h,50h,42h,41h
	db	6 dup (0)
	db	50h,42h,41h,50h,42h,4ch

codeseg	ends
	end
