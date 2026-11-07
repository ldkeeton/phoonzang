; Saved video state and detected adapter flags.
codeseg	segment	byte public 'code'
	public	video_state_pad
video_state_pad	db	00h
	public	saved_video_mode_
saved_video_mode_	db	00h
	public	saved_equip_byte_
saved_equip_byte_	db	00h
	public	video_is_ega_
video_is_ega_	db	00h
	public	video_is_vga_
video_is_vga_	db	00h
	public	video_is_cga_
video_is_cga_	db	00h
	public	video_is_herc_
video_is_herc_	db	00h
codeseg	ends
	end
