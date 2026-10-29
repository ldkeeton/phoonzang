; Preserve the pointer background while the caller changes an intersecting area.
	include lmacros.h
codeseg segment byte public 'code'
	assume cs:codeseg
	extrn mouse_present:byte
	extrn mouse_drawn_x:word
	extrn mouse_drawn_y:word
	extrn screen_buf_seg:word
	extrn mouse_area_intersects:byte
	extrn mouse_drawn_width:word
	extrn mouse_drawn_height:word
	extrn mouse_saved_background_offset:word
	extrn mouse_screen_offset:word
	extrn mouse_redraw_background_offset:word
	extrn mouse_image_segment:word
	extrn mouse_image_offset:word
	extrn mouse_image_stride:word
; Borrow the caller frame; no separate prologue or local allocation.
area_left equ 0ch
area_top equ 0eh
area_right equ 10h
area_bottom equ 12h
clip_left equ -6
clip_top equ -8
pointer_x_skip equ -0ah
pointer_y_skip equ -0ch
clip_width equ -0eh
clip_height equ -10h
screen_stride equ 140h	;320 pixels per screen row
default_pointer_offset equ 1e69h	;built-in image when the far pointer is null
transparent_pixel equ 0ffh	;background passes through
	public	clip_mouse_pointer_to_area_
clip_mouse_pointer_to_area_	proc	near
	; These tests share the rejection arm of the final intersection test.
	cmp	byte ptr cs:mouse_present, 1
	jne	short reject_area
	mov	cx, word ptr cs:mouse_drawn_x
	mov	dx, word ptr cs:mouse_drawn_y
	cmp	word ptr area_right[bp], cx
	jb	short reject_area
	cmp	word ptr area_bottom[bp], dx
	jb	short reject_area
	add	cx, word ptr cs:mouse_drawn_width
	dec	cx
	add	dx, word ptr cs:mouse_drawn_height
	dec	dx
	cmp	cx, word ptr area_left[bp]
	jb	short reject_area
	.if	dx lt <word ptr area_top[bp]>
reject_area:
		mov	byte ptr cs:mouse_area_intersects, 0
	.else
		mov	byte ptr cs:mouse_area_intersects, 1
		mov	cx, word ptr cs:mouse_drawn_x
		mov	ax, cx
		.if	<word ptr area_left[bp]> ge cx
			mov	ax,word ptr area_left[bp]
		.endif
		mov	word ptr clip_left[bp], ax
		mov	dx, word ptr cs:mouse_drawn_y
		mov	bx, dx
		.if	<word ptr area_top[bp]> ge dx
			mov	bx,word ptr area_top[bp]
		.endif
		mov	word ptr clip_top[bp], bx
		sub	ax, cx
		sub	bx, dx
		mov	word ptr pointer_x_skip[bp], ax
		mov	word ptr pointer_y_skip[bp], bx
		mov	cx, word ptr cs:mouse_drawn_width
		mov	dx, word ptr cs:mouse_drawn_height
		sub	cx, ax
		mov	word ptr clip_width[bp], cx
		sub	dx, bx
		mov	word ptr clip_height[bp], dx
		mov	ax, word ptr clip_left[bp]
		add	ax, word ptr clip_width[bp]
		dec	ax
		.if	ax ge <word ptr area_right[bp]>
			mov	ax, word ptr area_right[bp]
			sub	ax, word ptr clip_left[bp]
			inc	ax
			mov	word ptr clip_width[bp], ax
		.endif
		mov	ax, word ptr clip_top[bp]
		add	ax, word ptr clip_height[bp]
		dec	ax
		.if	ax ge <word ptr area_bottom[bp]>
			mov	ax, word ptr area_bottom[bp]
			sub	ax, word ptr clip_top[bp]
			inc	ax
			mov	word ptr clip_height[bp], ax
		.endif
		mov	ax, word ptr clip_top[bp]
		mov	bx, screen_stride
		mul	bx
		add	ax, word ptr clip_left[bp]
		mov	si, ax
		mov	ax, word ptr pointer_y_skip[bp]
		mov	bx, word ptr cs:mouse_drawn_width
		mul	bx
		add	ax, word ptr pointer_x_skip[bp]
		add	ax, word ptr cs:mouse_saved_background_offset
		mov	di, ax
		movseg	ds,<word ptr cs:screen_buf_seg>
		movseg	es,cs
		mov	cx, word ptr clip_height[bp]
		.repeat	;refresh the intersecting background from the changed area
			pushs	cx,si,di
			mov	cx, word ptr clip_width[bp]
			rep	movsb
			pop	di
			add	di, word ptr cs:mouse_drawn_width
			pop	si
			add	si, word ptr screen_stride
			pop	cx
		.untilcxz
		movseg	es,cs
		movseg	ds,<word ptr cs:screen_buf_seg>
		mov	si, word ptr cs:mouse_screen_offset
		mov	di, word ptr cs:mouse_redraw_background_offset
		mov	cx, word ptr cs:mouse_drawn_height
		.repeat	;save all screen pixels beneath the pointer
			pushs	cx,si
			mov	cx, word ptr cs:mouse_drawn_width
			rep	movsb
			pop	si
			add	si, word ptr screen_stride
			pop	cx
		.untilcxz
		movseg	es,<word ptr cs:screen_buf_seg>
		mov	di, word ptr cs:mouse_screen_offset
		movseg	ds,<word ptr cs:mouse_image_segment>
		mov	si, word ptr cs:mouse_image_offset
		mov	cx, word ptr cs:mouse_drawn_height
		mov	ax, ds
		or	ax, si
		.if	zero?	;use the built-in image for a null far pointer
			mov	si, default_pointer_offset
			movseg	ds,cs
		.endif
		.repeat	;composite the pointer back into the screen buffer
			pushs	cx,di,si
			mov	cx, word ptr cs:mouse_drawn_width
			.repeat
				mov	al, byte ptr [si]
				.if	al ne transparent_pixel	;ffh leaves the background pixel intact
					mov	byte ptr es:[di], al
				.endif
				inc	si
				inc	di
			.untilcxz
			pop	si
			add	si, word ptr cs:mouse_image_stride
			pop	di
			add	di, word ptr screen_stride
			pop	cx
		.untilcxz
	.endif
	ret	
clip_mouse_pointer_to_area_ endp
codeseg ends
	end
