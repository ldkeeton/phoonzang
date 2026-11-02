; Loaded music score slots and score information.
codeseg	segment	byte public 'code'
	public	score_slots
score_slots	dw	12 dup (0)
	public	score_info
score_info	dw	5 dup (0)
codeseg	ends
	end
