; prints the CACHEAREA() out-of-EMS-slots error and exits to DOS with code 1
	include	lmacros.h
	include	hlmacros.h
	assume	cs:codeseg
	public	cache_area_ems_slots_full_
cache_area_ems_slots_full_ proc near
	fatal	message	; the message lives in the code segment; int 21h/9: print '$'-terminated string at ds:dx; int 21h/4ch: terminate, exit code 1
cache_area_ems_slots_full_ endp

message	db	0dh,0ah,07h	;CR LF BEL
	db	'CACHEAREA out of EMS slots.',0
	db	0ah,'$'
	finish
	end
