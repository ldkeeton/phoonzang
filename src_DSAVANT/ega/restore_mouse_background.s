	; :ts=8
	include lmacros.h
codeseg	segment byte public 'code'
	assume cs:codeseg
	extrn mouse_overlaps_area:byte
	extrn screen_buf_seg:word
	extrn mouse_drawn_y:word
	extrn mouse_drawn_x:word
	extrn cursor_background_buffer:word
	extrn mouse_drawn_height:word
	extrn cursor_copy_width:word
	public restore_mouse_background_

; Restore the background rectangle under the mouse when it overlaps an area.
restore_mouse_background_ proc near
	.if <byte ptr cs:mouse_overlaps_area> ne 0
		movseg es,<word ptr cs:screen_buf_seg>	; select the off-screen screen buffer
		movseg ds,cs		; source rows come from the code segment
		mov ax,word ptr cs:mouse_drawn_y
		mov bx,140h		; screen rows are 320 bytes wide
		mul bx
		add ax,word ptr cs:mouse_drawn_x
		mov di,ax		; destination offset of the mouse rectangle
		mov si,word ptr cs:cursor_background_buffer
		mov cx,word ptr cs:mouse_drawn_height
		; Copy each saved background row back to the screen buffer.
		.repeat
			pushs cx,di
			mov cx,word ptr cs:cursor_copy_width
			; Copy the bytes in one row.
			rep movsb
			pop di
			add di,140h	; advance to the same x position on the next screen row
			pop cx
		.untilcxz
	.endif
	ret
restore_mouse_background_ endp
codeseg	ends
	end
