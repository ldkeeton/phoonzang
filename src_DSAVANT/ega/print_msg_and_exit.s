; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	public	print_msg_and_exit_
; print the '$'-terminated message at ds:dx and exit to DOS with errorlevel 1
print_msg_and_exit_ proc near
	dos	9	; DOS print string
	dosx	4c01h	; DOS terminate, return code 1
print_msg_and_exit_ endp
	public	msg_frame_too_big, frame_digit_hi, frame_digit_lo, slot_digit_hi, slot_digit_lo
codeseg	ends
	end
