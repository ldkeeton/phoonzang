; prints the sound driver load error and exits with code 1; the message is
; kept in the code segment, so ds is pointed at cs before the DOS call
	include	lmacros.h
	assume	cs:codeseg
	public	sound_driver_error_exit
sound_driver_error_exit proc near
	mov	ax,cs
	mov	ds,ax		;ds:dx addresses the message below
	mov	dx,offset sound_driver_error_msg
	mov	ah,9		;DOS 9: write the $-terminated string to stdout
	int	21h
	mov	ax,4c01h	;DOS 4Ch: terminate with exit code 1
	int	21h
	ret		;not reached
sound_driver_error_msg:
	db	0dh,0ah,07h	;CR LF bell
	db	'Unable to load sound driver',0
	db	0ah,'$'		;LF, string terminator
sound_driver_error_exit endp
	finish
	end
