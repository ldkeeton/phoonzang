; Position the mouse pointer was last drawn at.
codeseg	segment	byte public 'code'
	public	mouse_drawn_x
mouse_drawn_x	dw	0000h
	public	mouse_drawn_y
mouse_drawn_y	dw	0000h
codeseg	ends
	end
