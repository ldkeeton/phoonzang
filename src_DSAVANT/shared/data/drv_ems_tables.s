; EMS allocation tables: slot maps, block list and usage counters.
codeseg	segment	byte public 'code'
	public	ems_slots
ems_slots	dw	20 dup (0)
	public	cache_maze_slot_table
cache_maze_slot_table	db	20 dup (0)
	public	screen_ems_slots
screen_ems_slots	dw	10 dup (0)
	public	ems_blocks
ems_blocks	dw	82 dup (0)
	public	ems_block_count
ems_block_count	dw	0000h
	public	ems_paras_used
ems_paras_used	dw	0000h
codeseg	ends
	end
