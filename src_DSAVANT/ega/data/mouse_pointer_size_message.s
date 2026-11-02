; Error message for an out-of-range pointer size; ends in a DOS $.
codeseg	segment	byte public 'code'
	public	mouse_pointer_size_message
mouse_pointer_size_message	db	0dh,0ah,07h
	db	'Mouse pointer size out of range.',0
	db	0ah,24h
codeseg	ends
	end
