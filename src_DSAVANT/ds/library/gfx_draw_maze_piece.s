; Calls the maze-piece driver entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	gfx_drv_draw_maze_piece:dword
	public	gfx_draw_maze_piece_

gfx_draw_maze_piece_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:gfx_drv_draw_maze_piece
	mov	sp,bp
	pop	bp
	ret
gfx_draw_maze_piece_ endp
	finish
	end
