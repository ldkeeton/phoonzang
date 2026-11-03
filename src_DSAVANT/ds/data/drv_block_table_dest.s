; Offset in the loaded video driver where load_video_driver copies driver_block_table.
codeseg	segment	byte public 'code'
	public	drv_block_table_dest_
drv_block_table_dest_	dw	01dfh	;driver offset of drv_block_table
	dw	0	;unreferenced
codeseg	ends
	end
