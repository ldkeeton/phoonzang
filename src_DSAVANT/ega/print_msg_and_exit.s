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
	public	table_entry_ptr
; point ds:bx at entry al of the 4-byte offset/paragraph table at ds:2
table_entry_ptr:
	mov	cl,2
	shl	al,cl		;4-byte entries
	mov	bx,2		;table starts at ds:2
	add	bx,ax
	mov	ax,[bx]
	mov	dx,2[bx]	;paragraphs past ds
	mov	bx,ds
	add	bx,dx
	mov	ds,bx
	mov	bx,ax
	ret
codeseg	ends
	end
