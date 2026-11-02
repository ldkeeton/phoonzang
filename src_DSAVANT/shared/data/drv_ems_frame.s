; EMS page frame state: paragraph limit, mapping handle, frame segment.
codeseg	segment	byte public 'code'
	public	ems_para_limit
ems_para_limit	dw	0000h
	public	ems_mapping_handle
ems_mapping_handle	dw	0000h
	public	ems_frame_seg
ems_frame_seg	dw	0000h
codeseg	ends
	end
