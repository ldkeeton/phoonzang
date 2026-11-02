; Cursor bitmap storage.
codeseg	segment	byte public 'code'
	public	cursor_bitmap_base
cursor_bitmap_base	db	256 dup (0)
codeseg	ends
	end
