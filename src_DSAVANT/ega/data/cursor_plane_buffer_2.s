; Cursor image buffer for one EGA plane.
codeseg	segment	byte public 'code'
	public	cursor_plane_buffer_2
cursor_plane_buffer_2	db	256 dup (0)
codeseg	ends
	end
