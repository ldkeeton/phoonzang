; Video driver file names and the open driver handle.
codeseg	segment	byte public 'code'
	public	vga_drv_name_
vga_drv_name_	db	76h,67h,61h,2eh,64h,72h,76h,00h
	public	ega_drv_name_
ega_drv_name_	db	65h,67h,61h,2eh,64h,72h,76h,00h,63h,67h,61h,2eh,64h,72h,76h,00h
	db	68h,65h,72h,63h,2eh,64h,72h,76h,00h,74h,61h,6eh,64h,79h,2eh,64h
	db	72h,76h,00h
	public	drv_file_handle_
drv_file_handle_	db	00h,00h
codeseg	ends
	end
