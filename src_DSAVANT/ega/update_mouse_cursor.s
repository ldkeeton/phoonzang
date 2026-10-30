	; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	cursor_background_buffer:word
	extrn	cursor_video_offset:word
	extrn	cursor_height_rows:word
	extrn	cursor_save_row_bytes:word
	extrn	cursor_x_shift:word
	extrn	cursor_clipped_right:word
	extrn	cursor_mask_width_bytes:word
	extrn	cursor_save_buffer:word
	extrn	mouse_read_x:word
	extrn	mouse_read_y:word
	extrn	mouse_drawn_x:word
	extrn	mouse_drawn_y:word
	extrn	mouse_drawn_height:word
	extrn	mouse_drawn_row_bytes:word
	extrn	mouse_pointer_width:word
	extrn	old_cursor_restore_mask:byte
	extrn	cursor_plane_buffers:byte
	extrn	save_cursor_background_plane_:near
	extrn	draw_cursor_from_planes_:near
	extrn	restore_cursor_surround_plane_:near
	extrn	restore_old_background_plane_:near
	extrn	mouse_pointer_height:word
	extrn	cursor_clipped_width:word
	extrn	cursor_overlaps_previous:byte
	extrn	cursor_mask_scratch:byte
	extrn	cursor_draw_busy:byte
	public	update_mouse_cursor_
bottom_row_or_mask_width	equ	-2	; clipped bottom row, then mask row width
right_column_or_mask_bytes	equ	-4	; clipped right column, then mask byte count
clip_left_byte	equ	-6	; left edge of the intersected cursor area
clip_top_row	equ	-8	; top edge of the intersected cursor area
source_x_offset	equ	-0ah	; horizontal offset into the saved cursor
source_y_offset	equ	-0ch	; vertical offset into the saved cursor
clip_width_bytes	equ	-0eh	; intersected width in bytes
clip_height_rows	equ	-10h	; intersected height in rows

; Restore the old cursor, clip and save the new cursor, then draw it.
update_mouse_cursor_ proc near
	push bp
	mov bp, sp
	sub sp, 10h
	mov ax, word ptr cs:mouse_read_y
	mov bx, 0c8h
	sub bx, ax
	cmp bx, word ptr cs:mouse_pointer_height
	jb short L_forward1
	mov bx, word ptr cs:mouse_pointer_height
; Clamp visible cursor height to the remaining screen rows.
L_forward1:
	mov word ptr cs:cursor_height_rows, bx
	mov bx, 50h	; EGA cursor rows are addressed at 80-byte steps
	mul bx
	mov bx, word ptr cs:mouse_read_x
	mov cl, 2
	shr bx, cl
	add ax, bx
	mov word ptr cs:cursor_video_offset, ax
	mov ax, word ptr cs:mouse_read_x
	and ax, 3		; select the pixel position within a four-pixel group
	shl ax, 1
	mov word ptr cs:cursor_x_shift, ax
	mov ax, 140h	; 320 bytes per EGA screen row
	mov bx, word ptr cs:mouse_read_x
	sub ax, bx
	cmp ax, word ptr cs:mouse_pointer_width
	jb short L_forward2
	mov ax, word ptr cs:mouse_pointer_width
	mov word ptr cs:cursor_clipped_right, 0
	jmp short L_forward3
; Keep the cursor width within the current screen row.
L_forward2:
	mov word ptr cs:cursor_clipped_right, 0ffh
; Convert clipped pixel width to mask bytes and account for a partial tail.
L_forward3:
	mov word ptr cs:cursor_clipped_width, ax
	add ax, 3
	mov cl, 2
	shr ax, cl
	mov word ptr cs:cursor_mask_width_bytes, ax
	cmp word ptr cs:cursor_clipped_right, 0
	jne short L_forward4
	cmp word ptr cs:cursor_x_shift, 0
	je short L_forward4
	inc ax
	; Include one extra source byte for an unaligned cursor at the right edge.
L_forward4:
	mov word ptr cs:cursor_save_row_bytes, ax
	mov di, word ptr cs:cursor_background_buffer
	movseg	es,cs
	movseg	ds,0a000h
	mov dx, 3ceh		; graphics-controller register port
	mov al, 5
	out dx, al
	inc dx
	mov al, 0
	out dx, al
	mov ah, 0
	xor di, di
	call save_cursor_background_plane_
	mov ah, 1
	mov di, 120h
	call save_cursor_background_plane_
	mov di, 240h
	mov ah, 2
	call save_cursor_background_plane_
	mov di, 360h
	mov ah, 3
	call save_cursor_background_plane_
	mov ax, word ptr cs:mouse_drawn_y
	cmp ax, 0ffffh
	jne short L_forward5
	jmp near ptr L_forward12
; A sentinel y value means no previous cursor image needs restoring.
L_forward5:
	add ax, word ptr cs:mouse_drawn_height
	dec ax
	mov word ptr bottom_row_or_mask_width[bp], ax
	mov ax, word ptr cs:mouse_drawn_x
	mov cl, 2
	shr ax, cl
	add ax, word ptr cs:mouse_drawn_row_bytes
	dec ax
	mov word ptr right_column_or_mask_bytes[bp], ax
	mov cx, word ptr cs:mouse_read_x
	shr cx, 1
	shr cx, 1
	mov dx, word ptr cs:mouse_read_y
	cmp word ptr right_column_or_mask_bytes[bp], cx
	jb short L_forward6
	cmp word ptr bottom_row_or_mask_width[bp], dx
	jb short L_forward6
	add cx, word ptr cs:cursor_save_row_bytes
	dec cx
	add dx, word ptr cs:cursor_height_rows
	dec dx
	mov ax, word ptr cs:mouse_drawn_x
	shr ax, 1
	shr ax, 1
	cmp cx, ax
	jb short L_forward6
	cmp dx, word ptr cs:mouse_drawn_y
	jae short L_forward7
; Mark non-overlap when the old and new cursor rectangles do not intersect.
L_forward6:
	mov byte ptr cs:cursor_overlaps_previous, 0
	jmp near ptr L_forward12
; Compute the inclusive intersection of the old and new cursor rectangles.
L_forward7:
	mov byte ptr cs:cursor_overlaps_previous, 1
	mov cx, word ptr cs:mouse_read_x
	shr cx, 1
	shr cx, 1
	mov ax, cx
	mov bx, word ptr cs:mouse_drawn_x
	shr bx, 1
	shr bx, 1
	cmp bx, cx
	jb short L_forward8
	mov ax, word ptr cs:mouse_drawn_x
	shr ax, 1
	shr ax, 1
	; Choose the leftmost byte column shared by both cursor positions.
L_forward8:
	mov word ptr clip_left_byte[bp], ax
	mov dx, word ptr cs:mouse_read_y
	mov bx, dx
	cmp word ptr cs:mouse_drawn_y, dx
	jb short L_forward9
	mov bx, word ptr cs:mouse_drawn_y
	; Choose the topmost screen row shared by both cursor positions.
L_forward9:
	mov word ptr clip_top_row[bp], bx
	sub ax, cx
	sub bx, dx
	mov word ptr source_x_offset[bp], ax
	mov word ptr source_y_offset[bp], bx
	mov cx, word ptr cs:cursor_save_row_bytes
	mov dx, word ptr cs:cursor_height_rows
	sub cx, ax
	mov word ptr clip_width_bytes[bp], cx
	sub dx, bx
	mov word ptr clip_height_rows[bp], dx
	mov ax, word ptr clip_left_byte[bp]
	add ax, word ptr clip_width_bytes[bp]
	dec ax
	cmp ax, word ptr right_column_or_mask_bytes[bp]
	jb short L_forward10
	mov ax, word ptr right_column_or_mask_bytes[bp]
	sub ax, word ptr clip_left_byte[bp]
	inc ax
	mov word ptr clip_width_bytes[bp], ax
	; Limit the clipped width to the old cursor rectangle.
L_forward10:
	mov ax, word ptr clip_top_row[bp]
	add ax, word ptr clip_height_rows[bp]
	dec ax
	cmp ax, word ptr bottom_row_or_mask_width[bp]
	jb short L_forward11
	mov ax, word ptr bottom_row_or_mask_width[bp]
	sub ax, word ptr clip_top_row[bp]
	inc ax
	mov word ptr clip_height_rows[bp], ax
	; Limit the clipped height to the old cursor rectangle.
L_forward11:
	mov ax, word ptr clip_top_row[bp]
	sub ax, word ptr cs:mouse_drawn_y
	mov bx, word ptr cs:mouse_drawn_row_bytes
	mul bx
	add ax, word ptr clip_left_byte[bp]
	mov bx, word ptr cs:mouse_drawn_x
	shr bx, 1
	shr bx, 1
	sub ax, bx
	add ax, word ptr cs:cursor_save_buffer
	mov si, ax
	mov ax, word ptr source_y_offset[bp]
	mov bx, word ptr cs:cursor_save_row_bytes
	mul bx
	add ax, word ptr source_x_offset[bp]
	add ax, word ptr cs:cursor_background_buffer
	mov di, ax
	movseg	ds,cs
	mov es, ax
	mov cx, word ptr clip_height_rows[bp]
; Copy each intersecting row across the four EGA planes.
	; Copy the clipped save area row by row; 120h separates EGA planes.
L_back1:
	pushs	cx,si,di
	mov ax, si
	mov bx, di
	mov cx, word ptr clip_width_bytes[bp]
	rep movsb
	add ax, 120h
	add bx, 120h
	mov si, ax
	mov di, bx
	mov cx, word ptr clip_width_bytes[bp]
	rep movsb
	add ax, 120h
	add bx, 120h
	mov si, ax
	mov di, bx
	mov cx, word ptr clip_width_bytes[bp]
	rep movsb
	add ax, 120h
	add bx, 120h
	mov si, ax
	mov di, bx
	mov cx, word ptr clip_width_bytes[bp]
	rep movsb
	pop di
	add di, word ptr cs:cursor_save_row_bytes
	pop si
	add si, word ptr cs:mouse_drawn_row_bytes
	pop cx
	loop L_back1
; Restore the saved cursor planes before drawing the new cursor.
	; Restore the saved cursor planes before drawing the new cursor.
L_forward12:
	movseg	es,0a000h
	mov si, offset cursor_plane_buffers
	movseg	ds,cs
	xor si, si
	mov ah, 1
	call draw_cursor_from_planes_
	mov si, 100h
	mov ah, 2
	call draw_cursor_from_planes_
	mov si, 200h
	mov ah, 4
	call draw_cursor_from_planes_
	mov si, 300h
	mov ah, 8
	call draw_cursor_from_planes_
	mov dx, 3ceh
	mov al, 8
	out dx, al
	inc dx
	mov al, 0ffh
	out dx, al
	mov dx, 3c4h		; sequencer register port
	mov al, 2
	out dx, al
	inc dx
	mov al, 0fh
	out dx, al
	mov ax, word ptr cs:mouse_drawn_y
	cmp ax, 0ffffh
	jne short L_forward13
	jmp near ptr L_forward19
; Save the old cursor image when one is present.
	; Save the old cursor image only when a previous cursor is present.
L_forward13:
	mov ah, 1
	xor si, si
	call restore_cursor_surround_plane_
	mov ah, 2
	mov si, 120h
	call restore_cursor_surround_plane_
	mov ah, 4
	mov si, 240h
	call restore_cursor_surround_plane_
	mov ah, 8
	mov si, 360h
	call restore_cursor_surround_plane_
	mov dx, 3ceh
	mov al, 8
	out dx, al
	inc dx
	mov al, 0ffh
	out dx, al
	mov dx, 3c4h
	mov al, 2
	out dx, al
	inc dx
	mov al, 0fh
	out dx, al
	movseg	es,cs
	mov ds, ax
	mov di, offset old_cursor_restore_mask
	mov cx, 80h
	mov al, 0ffh
	rep stosb
	mov ax, word ptr cs:mouse_drawn_row_bytes
	add ax, 7
	mov cl, 3
	shr ax, cl
	mov word ptr bottom_row_or_mask_width[bp], ax
	cmp byte ptr cs:cursor_overlaps_previous, 0
	jne short L_forward14
	jmp near ptr L_forward18
; Build a bit mask for the clipped horizontal cursor span.
L_forward14:
	mov ax, word ptr clip_top_row[bp]
	sub ax, word ptr cs:mouse_drawn_y
	mov bx, word ptr bottom_row_or_mask_width[bp]
	mul bx
	mov di, ax
	add di, offset old_cursor_restore_mask
	mov ax, word ptr clip_left_byte[bp]
	mov bx, word ptr cs:mouse_drawn_x
	shr bx, 1
	shr bx, 1
	sub ax, bx
	mov bx, offset cursor_mask_scratch
; Skip complete mask bytes before setting the first partial byte.
L_back2:
	cmp ax, 8
	jb short L_forward15
	sub ax, 8
	inc di
	jmp short L_back2
	; Form the first byte mask from the pixel offset within the byte.
L_forward15:
	mov cx, ax
	mov ah, 0ffh
	shr ah, cl
	mov dx, word ptr clip_width_bytes[bp]
	add dx, cx
; Fill full mask bytes, then handle any remaining bits.
L_back3:
	cmp dx, 8
	jb short L_forward16
	not ah
	mov byte ptr [bx], ah
	inc bx
	mov ah, 0ffh
	sub dx, 8
	je short L_forward17
	jmp short L_back3
	; Mask the remaining pixels in a partial final screen byte.
L_forward16:
	mov al, 0ffh
	mov cx, 8
	sub cx, dx
	shl al, cl
	and ah, al
	not ah
	mov byte ptr [bx], ah
	inc bx
	; The cursor mask row is complete; copy it to each clipped row.
L_forward17:
	sub bx, offset cursor_mask_scratch
	mov word ptr right_column_or_mask_bytes[bp], bx
	mov cx, word ptr clip_height_rows[bp]
; Copy the generated mask rows into the cursor mask buffer.
L_back4:
	pushs	cx,di
	mov si, offset cursor_mask_scratch
	mov cx, word ptr right_column_or_mask_bytes[bp]
	rep movsb
	pop di
	add di, word ptr bottom_row_or_mask_width[bp]
	pop cx
	loop L_back4
; Draw each saved cursor plane and restore the sequencer mask.
	; Draw each saved cursor plane and restore the sequencer mask.
L_forward18:
	movseg	es,0a000h
	mov si, word ptr cs:cursor_save_buffer
	mov ah, 1
	call restore_old_background_plane_
	mov si, word ptr cs:cursor_save_buffer
	add si, 120h
	mov ah, 2
	call restore_old_background_plane_
	mov si, word ptr cs:cursor_save_buffer
	add si, 240h
	mov ah, 4
	call restore_old_background_plane_
	mov si, word ptr cs:cursor_save_buffer
	add si, 360h
	mov ah, 8
	call restore_old_background_plane_
	mov dx, 3c4h
	mov al, 2
	out dx, al
	inc dx
	mov al, 0fh
	out dx, al
; Swap the cursor save/background buffers and remember the new position.
	; Swap save and background buffers, then record the new cursor position.
L_forward19:
	mov ax, word ptr cs:cursor_save_buffer
	mov bx, word ptr cs:cursor_background_buffer
	mov word ptr cs:cursor_background_buffer, ax
	mov word ptr cs:cursor_save_buffer, bx
	movseg	ds,cs
	mov es, ax
	mov si, offset mouse_read_x
	mov di, offset mouse_drawn_x
	mov cx, 9
	rep movsw
	mov sp, bp
	pop bp
	xor al, al
	mov byte ptr cs:cursor_draw_busy, al
	db	0cbh	; far return to the caller
update_mouse_cursor_ endp
codeseg	ends
	end
