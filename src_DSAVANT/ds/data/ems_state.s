; Expanded memory allocation state.
codeseg	segment	byte public 'code'
	public	ems_allocated_paragraphs
ems_allocated_paragraphs	db	00h,00h
	public	ems_handle
ems_handle	db	00h,00h
	public	ems_page_frame_segment
ems_page_frame_segment	db	00h,00h
codeseg	ends
	end
