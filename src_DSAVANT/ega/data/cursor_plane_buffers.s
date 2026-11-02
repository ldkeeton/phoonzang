; First cursor image plane buffer.
codeseg	segment	byte public 'code'
	public	cursor_plane_buffers
cursor_plane_buffers	db	256 dup (0)
codeseg	ends
	end
