; prints the display driver load error and exits with code 1; the message is
; kept in the code segment, so ds is pointed at cs before the DOS call
	include	lmacros.h
	include	hlmacros.h
	assume	cs:codeseg
	public	display_driver_error_exit
display_driver_error_exit proc near
	movseg	ds,cs		;ds:dx addresses the message below
	mov	dx,offset display_driver_error_msg
	dos	9		;DOS 9: write the $-terminated string to stdout
	dosx	4c01h		;DOS 4Ch: terminate with exit code 1
	ret			;not reached
display_driver_error_msg:
	db	0dh,0ah,07h	;CR LF bell
	db	'Unable to load display driver',0
	db	0ah,'$'		;LF, string terminator
display_driver_error_exit endp
	finish
	end
