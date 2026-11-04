; The BIOS video mode in effect at startup, kept in the code segment.
codeseg	segment	byte public 'code'
	public	saved_video_mode
saved_video_mode	db	00h
codeseg	ends
	end
