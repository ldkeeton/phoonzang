; fade_in_no_memory_exit: report that fade_in() could not get the memory it
; needs, then terminate to DOS with errorlevel 1.  Never returns.
; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	public	fade_in_no_memory_exit_
fade_in_no_memory_exit_ proc near
	fatal	no_memory_msg	;DOS print string, then exit code 1
fade_in_no_memory_exit_ endp
no_memory_msg	db	0dh,0ah,7,'Memory unavailable in fade_in().',0,0ah,'$'
codeseg	ends
	end
