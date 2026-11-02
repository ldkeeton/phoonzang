; Maze cache tables: map slots, block list and usage counters.
codeseg	segment	byte public 'code'
	public	maze_map_slots
maze_map_slots	dw	10 dup (0)
	public	maze_blocks
maze_blocks	dw	104 dup (0)
	public	maze_block_count
maze_block_count	dw	0000h
	public	maze_paras_used
maze_paras_used	dw	0000h
codeseg	ends
	end
