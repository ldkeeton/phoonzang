; Restore the saved background pixels beneath the pointer after an area redraw.
	include lmacros.h
codeseg segment byte public 'code'
	assume cs:codeseg
	extrn mouse_area_intersects:byte
	extrn screen_buf_seg:word
	extrn mouse_screen_offset:word
	extrn mouse_redraw_background_offset:word
	extrn mouse_drawn_height:word
	extrn mouse_drawn_width:word
	public redraw_mouse_pointer_
redraw_mouse_pointer_ proc near
	; Skip the copy when the changed area did not intersect the pointer.
	cmp byte ptr cs:mouse_area_intersects, 0
	je short redraw_done
	movseg	es,<word ptr cs:screen_buf_seg>
	movseg	ds,cs
	mov di, word ptr cs:mouse_screen_offset
	mov si, word ptr cs:mouse_redraw_background_offset
	mov cx, word ptr cs:mouse_drawn_height
redraw_row:
	; Restore one row, then advance the screen destination by 320 bytes.
	pushs	cx,di
	mov cx, word ptr cs:mouse_drawn_width
	rep movsb
	pop di
	add di, 140h ; VGA screen row stride is 320 bytes.
	pop cx
	loop redraw_row
redraw_done:
	ret
redraw_mouse_pointer_ endp
codeseg ends
	end
