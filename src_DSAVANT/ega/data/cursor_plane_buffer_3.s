; Cursor image buffer for one EGA plane.
codeseg	segment	byte public 'code'
	public	cursor_plane_buffer_3
cursor_plane_buffer_3	db	256 dup (0)
codeseg	ends
	end
