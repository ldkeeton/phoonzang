; Maze, screen and scratch buffer segment defaults, palette pointer, delay hook.
codeseg	segment	byte public 'code'
	public	maze_mem_seg
maze_mem_seg	dw	0000h,1000h
	public	screen_buf_seg
screen_buf_seg	dw	0000h,0140h
	public	scratch_buf_seg
scratch_buf_seg	dw	0000h,0040h,0000h,0530h,0000h,01d0h,0000h
	public	palette_ptr
palette_ptr	dd	00000000h
	public	delay_hook
delay_hook	dd	00000000h
codeseg	ends
	end
