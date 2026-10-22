; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	public	print_msg_and_exit_
; print the '$'-terminated message at ds:dx and exit to DOS with errorlevel 1
print_msg_and_exit_ proc near
	mov	ah,9		;DOS print string
	int	21h
	mov	ax,4c01h	;DOS terminate, return code 1
	int	21h
print_msg_and_exit_ endp
	public	msg_frame_too_big, frame_digit_hi, frame_digit_lo, slot_digit_hi, slot_digit_lo
msg_frame_too_big	db	0dh,0ah,7,'Frame '	;CR LF BEL
frame_digit_hi	db	'0'		;digit ORed in by the caller
frame_digit_lo	db	'0 too big in slot '
slot_digit_hi	db	'0'		;digit ORed in by the caller
slot_digit_lo	db	'0.',0,0ah,'$'	;'$' ends the DOS string
codeseg	ends
	end
