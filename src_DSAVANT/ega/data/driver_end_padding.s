; Final byte of the driver image.
codeseg	segment	byte public 'code'
	public	driver_end_padding
driver_end_padding	db	00h
codeseg	ends
	end
