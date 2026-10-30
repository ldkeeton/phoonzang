; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mouse_drawn_video_offset:word
	extrn	mouse_drawn_height:word
	extrn	mouse_drawn_row_bytes:word
	public	restore_cursor_background_plane_

; Copy saved background rows from DS:SI to the drawn cursor position in video memory.
restore_cursor_background_plane_ proc near
	mov	di,word ptr cs:mouse_drawn_video_offset ; destination offset
	mov	cx,word ptr cs:mouse_drawn_height ; number of rows to copy
.row_loop:
	pushs	cx,si,di
	mov	cx,word ptr cs:mouse_drawn_row_bytes ; bytes per row
	rep	movsb			; copy this row
	pop	di
	add	di,50h			; next row in the 80-byte screen stride
	pop	si
	add	si,word ptr cs:mouse_drawn_row_bytes ; next source row
	pop	cx
	loop	.row_loop
	ret
restore_cursor_background_plane_ endp
codeseg	ends
	end
