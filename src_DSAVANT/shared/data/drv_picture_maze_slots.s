; Picture, screen and maze slot tables.
codeseg	segment	byte public 'code'
	public	picture_slots
picture_slots	dw	20 dup (0)
	public	screen_maze_slots
screen_maze_slots	dw	5 dup (0)
	public	maze_slots
maze_slots	dw	16 dup (0)
	public	maze_piece_table
maze_piece_table	dw	0004h,10 dup (0)
codeseg	ends
	end
