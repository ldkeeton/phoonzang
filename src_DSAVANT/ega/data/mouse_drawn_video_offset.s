; Video offset of the pointer as last drawn.
codeseg	segment	byte public 'code'
	public	mouse_drawn_video_offset
mouse_drawn_video_offset	dw	0000h,0000h,0000h
codeseg	ends
	end
