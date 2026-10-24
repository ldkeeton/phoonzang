; prints the CACHEAREA() disk-write error and exits to DOS with code 1
	include	lmacros.h
	assume	cs:codeseg
	public	cache_area_disk_error_
cache_area_disk_error_ proc near
	fatal	message	; the message lives in the code segment; int 21h/9: print '$'-terminated string at ds:dx; int 21h/4ch: terminate, exit code 1
cache_area_disk_error_ endp

message	db	0dh,0ah,07h	;CR LF BEL
	db	'Error occurred writing to disk in CACHEAREA().',0
	db	0ah,'$'
	finish
	end
