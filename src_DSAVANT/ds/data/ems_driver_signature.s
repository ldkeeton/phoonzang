; EMS driver device name.
codeseg	segment	byte public 'code'
	public	ems_driver_signature
ems_driver_signature	db	45h,4dh,4dh,58h,58h,58h,58h,30h
codeseg	ends
	end
