; Offset of the buffer holding the saved cursor area (cp_1afd in ega_mouse_state).
; A literal: make rebuild cannot check a data source with relocations yet.
codeseg	segment	byte public 'code'
	public	cursor_save_buffer
cursor_save_buffer	dw	1bfdh
codeseg	ends
	end
