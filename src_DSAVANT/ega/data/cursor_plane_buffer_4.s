; Cursor image buffer for one EGA plane.
codeseg	segment	byte public 'code'
	public	cursor_plane_buffer_4
cursor_plane_buffer_4	db	256 dup (0)
codeseg	ends
	end
