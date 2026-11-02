; Mouse state flags: glide in progress, redraw pending, driver present.
codeseg	segment	byte public 'code'
	public	mouse_glide_active
mouse_glide_active	db	00h
	public	mouse_redraw_pending
mouse_redraw_pending	db	00h
	public	mouse_present
mouse_present	db	00h
codeseg	ends
	end
