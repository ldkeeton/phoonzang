; prints the CACHEAREA() out-of-MAZE-slots error and exits to DOS with code 1
	include	lmacros.h
	assume	cs:codeseg
	public	cache_area_maze_slots_full_
cache_area_maze_slots_full_ proc near
	mov	ax,cs	;the message lives in the code segment
	mov	ds,ax
	mov	dx,offset message
	mov	ah,9	;int 21h/9: print '$'-terminated string at ds:dx
	int	21h
	mov	ax,4c01h	;int 21h/4ch: terminate, exit code 1
	int	21h
cache_area_maze_slots_full_ endp

message	db	0dh,0ah,07h	;CR LF BEL
	db	'CACHEAREA out of MAZE slots.',0
	db	0ah,'$'
	finish
	end
