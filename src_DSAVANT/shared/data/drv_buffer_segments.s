; Driver block table, palette pointer, delay hook.  The block table is
; 4-byte {paragraphs, segment} entries ending in a zero size; DS allocates
; each block and copies its driver_block_table_ over this one at load, so
; each *_seg label is the segment word of one entry.
codeseg	segment	byte public 'code'
	public	drv_block_table
drv_block_table	dw	4180h
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
