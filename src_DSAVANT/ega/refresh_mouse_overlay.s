; Update planar screen bytes under the mouse and restore saved cursor pixels.
; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mouse_present:byte
	extrn	mouse_drawn_x:word
	extrn	mouse_drawn_y:word
	extrn	mouse_drawn_row_bytes:word
	extrn	mouse_drawn_height:word
	extrn	mouse_overlaps_area:byte
	extrn	cursor_save_buffer:word
	extrn	pixel_plane_lookup:byte
	extrn	screen_buf_seg:word
	extrn	cursor_copy_width:word
	extrn	cursor_background_buffer:word
	extrn	mouse_pointer_bitmap_segment:word
	extrn	mouse_pointer_bitmap_offset:word
	extrn	mouse_pointer_width:word
	extrn	default_pointer_bitmap:byte
	extrn	expand_pixel_to_planes_:near
	public	refresh_mouse_overlay_
; Stack slots belong to the caller frame; this entry intentionally leaves BP untouched.
area_left	equ	0ch	; left edge of the area rectangle
area_top	equ	0eh	; top edge of the area rectangle
area_right	equ	10h	; right edge of the area rectangle
area_bottom	equ	12h	; bottom edge of the area rectangle
draw_left	equ	-6
draw_top	equ	-8
clip_x_offset	equ	-0ah
clip_y_offset	equ	-0ch
clip_width	equ	-0eh
clip_height	equ	-10h
plane_shift	equ	-20h
plane_mask	equ	-22h
source_plane_shift	equ	-1ch
source_plane_mask	equ	-1eh
refresh_mouse_overlay_ proc near
	; Skip all cursor work when its rectangle does not intersect this area.
	cmp byte ptr cs:mouse_present, 1
	jne forward1
	mov cx, word ptr cs:mouse_drawn_x
	and cx, 0FFFCh		; round the mouse x-coordinate to a four-pixel boundary
	mov dx, word ptr cs:mouse_drawn_y
	cmp word ptr area_right[bp], cx
	jb forward1
	cmp word ptr area_bottom[bp], dx
	jb forward1
	add cx, word ptr cs:mouse_drawn_row_bytes
	add cx, word ptr cs:mouse_drawn_row_bytes
	add cx, word ptr cs:mouse_drawn_row_bytes
	add cx, word ptr cs:mouse_drawn_row_bytes
	dec cx
	add dx, word ptr cs:mouse_drawn_height
	dec dx
	cmp cx, word ptr area_left[bp]
	jb forward1
	cmp dx, word ptr area_top[bp]
	jae forward2
forward1:
	; Record the non-overlap case and return without touching screen memory.
	mov byte ptr cs:mouse_overlaps_area, 0
	jmp near ptr return1
forward2:
	; Clip the cursor's top-left coordinates to the area bounds.
	mov byte ptr cs:mouse_overlaps_area, 1
	mov cx, word ptr cs:mouse_drawn_x
	and cx, 0FFFCh
	mov ax, cx
	cmp word ptr area_left[bp], cx
	jb forward3
	mov ax, word ptr area_left[bp]
forward3:
	; Keep the greater of the cursor and area left edges.
	mov word ptr draw_left[bp], ax
	mov dx, word ptr cs:mouse_drawn_y
	mov bx, dx
	cmp word ptr area_top[bp], dx
	jb forward4
	mov bx, word ptr area_top[bp]
forward4:
	; Keep the greater of the cursor and area top edges.
	mov word ptr draw_top[bp], bx
	sub ax, cx
	sub bx, dx
	mov word ptr clip_x_offset[bp], ax
	mov word ptr clip_y_offset[bp], bx
	mov cx, word ptr cs:mouse_drawn_row_bytes
	shl cx, 1
	shl cx, 1
	mov dx, word ptr cs:mouse_drawn_height
	sub cx, ax
	mov word ptr clip_width[bp], cx
	sub dx, bx
	mov word ptr clip_height[bp], dx
	mov ax, word ptr draw_left[bp]
	add ax, word ptr clip_width[bp]
	dec ax
	; Reduce the width if the clipped rectangle reaches past the area's right edge.
	cmp ax, word ptr area_right[bp]
	jb forward5
	mov ax, word ptr area_right[bp]
	sub ax, word ptr draw_left[bp]
	inc ax
	mov word ptr clip_width[bp], ax
forward5:
	mov ax, word ptr draw_top[bp]
	add ax, word ptr clip_height[bp]
	dec ax
	; Reduce the height if the clipped rectangle reaches past the area's bottom edge.
	cmp ax, word ptr area_bottom[bp]
	jb forward6
	mov ax, word ptr area_bottom[bp]
	sub ax, word ptr draw_top[bp]
	inc ax
	mov word ptr clip_height[bp], ax
forward6:
	mov ax, word ptr draw_top[bp]
	mov bx, 0140h		; screen rows are 320 bytes wide
	mul bx
	add ax, word ptr draw_left[bp]
	mov si, ax
	mov ax, word ptr clip_y_offset[bp]
	mov bx, word ptr cs:mouse_drawn_row_bytes
	mul bx
	mov bx, word ptr clip_x_offset[bp]
	shr bx, 1
	shr bx, 1
	add ax, bx
	add ax, word ptr cs:cursor_save_buffer
	mov di, ax
	mov bx, word ptr clip_x_offset[bp]
	; Select the bit pair for the starting pixel within its four-pixel group.
	and bx, 3
	shl bx, 1
	mov cx, 6
	sub cx, bx
	mov word ptr plane_shift[bp], cx
	mov dx, 3
	shl dx, cl
	; Clear the destination plane bits before merging this pixel's color bits.
	not dl
	mov byte ptr plane_mask[bp], dl
	movseg	ds,<word ptr cs:screen_buf_seg>
	movseg	es,cs
	mov cx, word ptr clip_height[bp]
back1:
	; Walk each clipped screen row while retaining the source row position.
	pushs	cx,si,di
	mov ax, word ptr plane_shift[bp]
	mov word ptr source_plane_shift[bp], ax
	mov ax, word ptr plane_mask[bp]
	mov word ptr source_plane_mask[bp], ax
	mov cx, word ptr clip_width[bp]
back2:
	; Expand each source pixel, then merge its four color planes in place.
	push cx
	mov bx, offset pixel_plane_lookup
	mov ah, byte ptr source_plane_shift[bp]
	lodsb
	call expand_pixel_to_planes_
	mov bl, byte ptr source_plane_mask[bp]
	and byte ptr es:[di], bl
	or byte ptr es:[di], dl
	and byte ptr es:[di+120h], bl	; same byte position in plane 1
	or byte ptr es:[di+120h], dh
	and byte ptr es:[di+240h], bl	; same byte position in plane 2
	or byte ptr es:[di+240h], al
	and byte ptr es:[di+360h], bl	; same byte position in plane 3
	or byte ptr es:[di+360h], ah
	shr byte ptr source_plane_mask[bp], 1
	shr byte ptr source_plane_mask[bp], 1
	or byte ptr source_plane_mask[bp], 0C0h
	sub byte ptr source_plane_shift[bp], 2
	jae forward7
	inc di
	mov byte ptr source_plane_shift[bp], 6
	mov byte ptr source_plane_mask[bp], 03Fh
forward7:
	; Continue the source pixel loop when the current plane shift remains valid.
	pop cx
	loop back2
	pop di
	add di, word ptr cs:mouse_drawn_row_bytes
	pop si
	add si, 0140h		; next source row in the 320-byte screen buffer
	pop cx
	loop back1
	mov cx, word ptr cs:mouse_drawn_x
	mov ax, cx
	cmp word ptr area_left[bp], cx
	jb forward8
	mov ax, word ptr area_left[bp]
forward8:
	; Recompute the horizontal intersection for the background copy.
	mov word ptr draw_left[bp], ax
	mov ax, word ptr clip_x_offset[bp]
	mov cx, word ptr cs:cursor_copy_width
	sub cx, ax
	mov word ptr clip_width[bp], cx
	mov ax, word ptr draw_left[bp]
	add ax, word ptr clip_width[bp]
	dec ax
	cmp ax, word ptr area_right[bp]
	jb forward9
	mov ax, word ptr area_right[bp]
	sub ax, word ptr draw_left[bp]
	inc ax
	mov word ptr clip_width[bp], ax
forward9:
	; Set up the screen and cursor addresses for saving the covered rows.
	movseg	es,cs
	movseg	ds,<word ptr cs:screen_buf_seg>
	mov ax, word ptr cs:mouse_drawn_y
	mov bx, 0140h
	mul bx
	add ax, word ptr cs:mouse_drawn_x
	mov si, ax
	mov di, word ptr cs:cursor_background_buffer
	mov cx, word ptr cs:mouse_drawn_height
back3:
	; Preserve the cursor-covered screen rows before drawing its image.
	pushs	cx,si
	mov cx, word ptr cs:cursor_copy_width
	rep movsb
	pop si
	add si, 0140h		; next source row in the 320-byte screen buffer
	pop cx
	loop back3
	movseg	es,<word ptr cs:screen_buf_seg>
	mov ax, word ptr cs:mouse_drawn_y
	mov bx, 0140h
	mul bx
	add ax, word ptr cs:mouse_drawn_x
	mov di, ax
	movseg	ds,<word ptr cs:mouse_pointer_bitmap_segment>
	mov si, word ptr cs:mouse_pointer_bitmap_offset
	mov cx, word ptr cs:mouse_drawn_height
	mov ax, ds
	or ax, si
	jne back4
	; Use the built-in pointer image when the caller supplied none.
	mov si, offset default_pointer_bitmap
	movseg	ds,cs
back4:
	; Copy cursor pixels back; 0xff marks a transparent source pixel.
	pushs	cx,di,si
	mov cx, word ptr cs:cursor_copy_width
back5:
	mov al, byte ptr [si]
	cmp al, 0FFh		; transparent source marker
	je forward10
	mov byte ptr es:[di], al
forward10:
	; Advance through the row while leaving marked transparent pixels unchanged.
	inc si
	inc di
	loop back5
	pop si
	add si, word ptr cs:mouse_pointer_width
	pop di
	add di, 0140h		; next destination screen row
	pop cx
	loop back4
return1:
	ret
refresh_mouse_overlay_ endp
codeseg	ends
	end
