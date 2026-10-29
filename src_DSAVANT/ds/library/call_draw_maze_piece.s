; Calls the maze-piece driver entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	drv_slot_draw_maze_piece:dword
	public	call_draw_maze_piece_

call_draw_maze_piece_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:drv_slot_draw_maze_piece
	mov	sp,bp
	pop	bp
	ret
call_draw_maze_piece_ endp
	finish
	end
