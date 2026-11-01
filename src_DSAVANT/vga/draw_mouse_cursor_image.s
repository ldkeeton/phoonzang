	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mouse_read_y:word
	extrn	mouse_read_x:word
	extrn	mouse_drawn_y:word
	extrn	mouse_drawn_height:word
	extrn	mouse_drawn_x:word
	extrn	mouse_drawn_width:word
	extrn	mouse_image_stride:word
	extrn	mouse_image_height:word
	extrn	mouse_cursor_width:word
	extrn	mouse_cursor_height:word
	extrn	mouse_redraw_background_offset:word
	extrn	mouse_saved_background_offset:word
	extrn	mouse_image_segment:word
	extrn	mouse_image_offset:word
	extrn	mouse_screen_offset:word
	extrn	cursor_draw_busy:byte
data_1dc4	equ	1dc4h	; image buffer used to construct the cursor mask
data_1e4c	equ	1e4ch	; 16-byte cursor mask buffer
	extrn	mouse_cursor_screen_offset:word
	extrn	mouse_cursor_overlaps:byte

; Locals in the 16-byte compiler frame.
lower_y	equ	-2	; clipped bottom row
lower_x	equ	-4	; clipped right column
copy_left_x	equ	-6	; left edge of overlap
copy_top_y	equ	-8	; top edge of overlap
copy_x_offset	equ	-0ah	; overlap offset from redraw origin
copy_y_offset	equ	-0ch	; overlap offset from redraw origin
copy_width	equ	-0eh	; overlap width in pixels
copy_height	equ	-10h	; overlap height in rows

vga_segment	equ	0a000h	; VGA graphics memory segment
screen_height	equ	0c8h	; 200 scan lines
screen_width	equ	140h	; 320 pixels per VGA row
cursor_image_fallback	equ	1e69h	; built-in image offset for a null image pointer
transparent_pixel	equ	0ffh	; transparent cursor pixel and empty mask bit

	public	draw_mouse_cursor_image_
; Restore the previous cursor background, draw the pointer, and save its new background.
draw_mouse_cursor_image_ label far
	push	bp
	mov	bp,sp
	sub	sp,10h
	mov ax, word ptr cs:mouse_read_y
	mov bx, screen_height	; VGA screen bottom in scan lines
	sub bx, ax
	umin	bx,<word ptr cs:mouse_image_height>
forward_1:
	mov word ptr cs:mouse_cursor_height, bx
	mov bx, screen_width
	mul bx
	mov bx, word ptr cs:mouse_read_x
	add ax, bx
	mov si, ax
	mov word ptr cs:mouse_cursor_screen_offset, ax
	mov cx, screen_width	; VGA row width in bytes
	sub cx, bx
	umin	cx,<word ptr cs:mouse_image_stride>
forward_2:
	mov word ptr cs:mouse_cursor_width, cx
	mov di, word ptr cs:mouse_redraw_background_offset
	movseg	es,cs
	movseg	ds,vga_segment
	mov cx, word ptr cs:mouse_cursor_height
; Restore the saved background row by row.
back_1:
	pushs	cx,si
	mov cx, word ptr cs:mouse_cursor_width
	rep movsb
	pop si
	add si, screen_width
	pop cx
	loop back_1
	mov ax, word ptr cs:mouse_drawn_y
	cmp ax, 0ffffh	; ffffh marks that no cursor was drawn yet
	jne short forward_3
	jmp near ptr forward_10
; The previous cursor position is valid; compute its inclusive bounds.
forward_3:
	add ax, word ptr cs:mouse_drawn_height
	dec ax
	mov word ptr lower_y[bp], ax
	mov ax, word ptr cs:mouse_drawn_x
	add ax, word ptr cs:mouse_drawn_width
	dec ax
	mov word ptr lower_x[bp], ax
	mov cx, word ptr cs:mouse_read_x
	mov dx, word ptr cs:mouse_read_y
	cmp word ptr lower_x[bp], cx
	jb short forward_4
	cmp word ptr lower_y[bp], dx
	jb short forward_4
	add cx, word ptr cs:mouse_cursor_width
	dec cx
	add dx, word ptr cs:mouse_cursor_height
	dec dx
	cmp cx, word ptr cs:mouse_drawn_x
	jb short forward_4
	cmp dx, word ptr cs:mouse_drawn_y
	jae short forward_5
; The old cursor rectangle does not overlap the redraw area.
forward_4:
	mov byte ptr cs:mouse_cursor_overlaps, 0
	jmp near ptr forward_10
; Intersect the old and new rectangles before copying their shared pixels.
forward_5:
	mov byte ptr cs:mouse_cursor_overlaps, 1
	mov cx, word ptr cs:mouse_read_x
	mov ax, cx
	cmp word ptr cs:mouse_drawn_x, cx
	jb short forward_6
	mov ax, word ptr cs:mouse_drawn_x
forward_6:
	mov word ptr copy_left_x[bp], ax
	mov dx, word ptr cs:mouse_read_y
	mov bx, dx
	cmp word ptr cs:mouse_drawn_y, dx
	jb short forward_7
	mov bx, word ptr cs:mouse_drawn_y
forward_7:
	mov word ptr copy_top_y[bp], bx
	sub ax, cx
	sub bx, dx
	mov word ptr copy_x_offset[bp], ax
	mov word ptr copy_y_offset[bp], bx
	mov cx, word ptr cs:mouse_cursor_width
	mov dx, word ptr cs:mouse_cursor_height
	sub cx, ax
	mov word ptr copy_width[bp], cx
	sub dx, bx
	mov word ptr copy_height[bp], dx
	mov ax, word ptr copy_left_x[bp]
	add ax, word ptr copy_width[bp]
	dec ax
	cmp ax, word ptr lower_x[bp]
	jb short forward_8
	mov ax, word ptr lower_x[bp]
	sub ax, word ptr copy_left_x[bp]
	inc ax
	mov word ptr copy_width[bp], ax
forward_8:
	mov ax, word ptr copy_top_y[bp]
	add ax, word ptr copy_height[bp]
	dec ax
	cmp ax, word ptr lower_y[bp]
	jb short forward_9
	mov ax, word ptr lower_y[bp]
	sub ax, word ptr copy_top_y[bp]
	inc ax
	mov word ptr copy_height[bp], ax
forward_9:
	mov ax, word ptr copy_top_y[bp]
	sub ax, word ptr cs:mouse_drawn_y
	mov bx, word ptr cs:mouse_drawn_width
	mul bx
	add ax, word ptr copy_left_x[bp]
	sub ax, word ptr cs:mouse_drawn_x
	add ax, word ptr cs:mouse_saved_background_offset
	mov si, ax
	mov ax, word ptr copy_y_offset[bp]
	mov bx, word ptr cs:mouse_cursor_width
	mul bx
	add ax, word ptr copy_x_offset[bp]
	add ax, word ptr cs:mouse_redraw_background_offset
	mov di, ax
	movseg	ds,cs
	mov es, ax
	mov cx, word ptr copy_height[bp]
; Copy the intersecting portion of the saved background.
back_2:
	pushs	cx,si,di
	mov cx, word ptr copy_width[bp]
	rep movsb
	pop di
	add di, word ptr cs:mouse_cursor_width
	pop si
	add si, word ptr cs:mouse_drawn_width
	pop cx
	loop back_2
; Draw the pointer, leaving transparent pixels unchanged.
forward_10:
	movseg	es,vga_segment
	mov di, word ptr cs:mouse_cursor_screen_offset
	movseg	ds,<word ptr cs:mouse_image_segment>
	mov si, word ptr cs:mouse_image_offset
	mov cx, word ptr cs:mouse_cursor_height
	mov ax, ds
	or ax, si
	jne short forward_11
	mov si, cursor_image_fallback
	movseg	ds,cs
forward_11:
	pushs	di,si
back_3:
	pushs	cx,di,si
	mov cx, word ptr cs:mouse_cursor_width
; Composite one pointer-image row into VGA memory.
back_4:
	mov al, byte ptr [si]
	cmp al, transparent_pixel	; transparent pixels preserve the display
	je short forward_12
	mov byte ptr es:[di], al
forward_12:
	inc si
	inc di
	loop back_4
	pop si
	add si, word ptr cs:mouse_image_stride
	pop di
	add di, screen_width
	pop cx
	loop back_3
	pops	bx,di
	mov ax, word ptr cs:mouse_drawn_y
	cmp ax, 0ffffh
	jne short forward_13
	jmp near ptr forward_20
forward_13:
	mov si, word ptr cs:mouse_redraw_background_offset
	mov cx, word ptr cs:mouse_cursor_height
; Restore background pixels through transparent spots, one row at a time.
back_5:
	pushs	cx,di,si,bx
	mov cx, word ptr cs:mouse_cursor_width
; Restore only transparent pixels from the current background.
back_6:
	mov al, byte ptr [bx]
	inc bx
	cmp al, transparent_pixel	; transparent pixels need their saved background restored
	jne short forward_14
	mov dl, byte ptr cs:[si]
	mov byte ptr es:[di], dl
forward_14:
	inc si
	inc di
	loop back_6
	pop bx
	add bx, word ptr cs:mouse_image_stride
	pop si
	add si, word ptr cs:mouse_cursor_width
	pop di
	add di, screen_width
	pop cx
	loop back_5
	movseg	es,cs
	mov ds, ax
	mov di, offset data_1dc4
	mov cx, 88h
	mov al, transparent_pixel
	rep stosb
	mov ax, word ptr cs:mouse_drawn_width
	add ax, 7	; round the pixel width up to a whole mask byte
	mov cl, 3
	shr ax, cl
	mov word ptr lower_y[bp], ax
	cmp byte ptr cs:mouse_cursor_overlaps, 0
	je short forward_18
	mov ax, word ptr copy_top_y[bp]
	sub ax, word ptr cs:mouse_drawn_y
	mov bx, word ptr lower_y[bp]
	mul bx
	mov di, ax
	add di, offset data_1dc4
	mov ax, word ptr copy_left_x[bp]
	sub ax, word ptr cs:mouse_drawn_x
	mov bx, offset data_1e4c
back_7:
	cmp ax, 8	; skip complete mask bytes before the first set bit
	jb short forward_15
	sub ax, 8
	inc di
	jmp short back_7
forward_15:
	mov cx, ax
	mov ah, transparent_pixel
	shr ah, cl
	mov dx, word ptr copy_width[bp]
	add dx, cx
back_8:
	cmp dx, 8	; emit complete mask bytes for the overlap width
	jb short forward_16
	not ah
	mov byte ptr [bx], ah
	inc bx
	mov ah, transparent_pixel
	sub dx, 8
	je short forward_17
	jmp short back_8
forward_16:
	mov al, transparent_pixel
	mov cx, 8
	sub cx, dx
	shl al, cl
	and ah, al
	not ah
	mov byte ptr [bx], ah
	inc bx
forward_17:
	sub bx, offset data_1e4c
	mov word ptr lower_x[bp], bx
	mov cx, word ptr copy_height[bp]
back_9:
	pushs	cx,di
	mov si, offset data_1e4c
	mov cx, word ptr lower_x[bp]
	rep movsb
	pop di
	add di, word ptr lower_y[bp]
	pop cx
	loop back_9
; Build the one-bit mask and restore saved screen pixels.
forward_18:
	mov bx, offset data_1dc4
	mov si, word ptr cs:mouse_saved_background_offset
	mov di, word ptr cs:mouse_screen_offset
	movseg	es,vga_segment
	mov cx, word ptr cs:mouse_drawn_height
; Reconstruct each previous cursor row from the saved mask and pixels.
back_10:
	pushs	cx,si,bx,di
	mov cx, word ptr cs:mouse_drawn_width
back_11:
	mov ah, byte ptr [bx]
	inc bx
	mov al, 9	; eight bits plus the decrement-before-test count
; Test each of the eight packed mask bits for this pixel.
back_12:
	dec al
	je short back_11
	shl ah, 1
	jae short forward_19
	mov dl, byte ptr [si]
	mov byte ptr es:[di], dl
forward_19:
	inc di
	inc si
	loop back_12
	pop di
	add di, screen_width
	pop bx
	add bx, word ptr lower_y[bp]
	pop si
	add si, word ptr cs:mouse_drawn_width
	pop cx
	loop back_10
; Save the position and dimensions used by the next redraw.
forward_20:
	mov ax, word ptr cs:mouse_saved_background_offset
	mov bx, word ptr cs:mouse_redraw_background_offset
	mov word ptr cs:mouse_redraw_background_offset, ax
	mov word ptr cs:mouse_saved_background_offset, bx
	mov ax, word ptr cs:mouse_read_x
	mov word ptr cs:mouse_drawn_x, ax
	mov ax, word ptr cs:mouse_read_y
	mov word ptr cs:mouse_drawn_y, ax
	mov ax, word ptr cs:mouse_cursor_height
	mov word ptr cs:mouse_drawn_height, ax
	mov ax, word ptr cs:mouse_cursor_width
	mov word ptr cs:mouse_drawn_width, ax
	mov ax, word ptr cs:mouse_cursor_screen_offset
	mov word ptr cs:mouse_screen_offset, ax
	mov sp, bp
	pop bp
	xor al, al
	mov byte ptr cs:cursor_draw_busy, al
	db	0cbh	; far return
codeseg	ends
	end
