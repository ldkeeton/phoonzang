	; :ts=8
	include lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	cursor_video_offset:word
	extrn	cursor_background_buffer:word
	extrn	cursor_height_rows:word
	extrn	cursor_save_row_bytes:word
	public	save_cursor_background_plane_

; Copy the saved cursor rows to the background buffer using EGA plane 2.
save_cursor_background_plane_ proc near
	mov	si,word ptr cs:cursor_video_offset
	add	di,word ptr cs:cursor_background_buffer
	mov	cx,word ptr cs:cursor_height_rows
	; Select graphics-controller register 4 and load its value from AH.
	outp	3ceh,4,ah
back1:
	; Copy one cursor row, then advance to the next 80-byte screen row.
	pushs	cx,si
	mov	cx,word ptr cs:cursor_save_row_bytes
	rep	movsb
	pop	si
	add	si,50h			; advance one 80-byte screen row
	pop	cx
	loop	back1
	ret
save_cursor_background_plane_ endp
codeseg	ends
	end
