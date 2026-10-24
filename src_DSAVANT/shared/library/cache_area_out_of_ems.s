; prints the CACHEAREA() out-of-EMS error and exits to DOS with code 1
	include	lmacros.h
	assume	cs:codeseg
	public	cache_area_out_of_ems_
cache_area_out_of_ems_ proc near
	fatal	message	; the message lives in the code segment; int 21h/9: print '$'-terminated string at ds:dx; int 21h/4ch: terminate, exit code 1
cache_area_out_of_ems_ endp

message	db	0dh,0ah,07h	;CR LF BEL
	db	'CACHEAREA out of EMS.',0
	db	0ah,'$'
	finish
	end
