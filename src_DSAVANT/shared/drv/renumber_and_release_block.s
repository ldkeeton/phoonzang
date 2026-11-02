; Shift higher resource IDs after a maze block is released.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	decrement_maze_map_slot_ids_:near
	extrn	decrement_picture_slot_ids_:near
	extrn	decrement_screen_slot_ids_:near
	extrn	decrement_maze_slot_ids_:near
	extrn	decrement_sound_slot_ids_:near
	extrn	decrement_score_slot_values_:near
	extrn	release_maze_block_:near

	public	renumber_and_release_block_
renumber_and_release_block_ proc near
	call	decrement_maze_map_slot_ids_
	call	decrement_picture_slot_ids_
	call	decrement_screen_slot_ids_
	call	decrement_maze_slot_ids_
	call	decrement_sound_slot_ids_
	call	decrement_score_slot_values_
	call	release_maze_block_
	ret
renumber_and_release_block_ endp
codeseg	ends
	end
