; One-shot flag: a mouse click has been stored.
codeseg	segment	byte public 'code'
	public	mouse_click_pending
mouse_click_pending	dw	0000h
codeseg	ends
	end
