	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	cursor_draw_busy:byte
	extrn	mouse_read_x:word
	extrn	mouse_read_y:word

pointer_x_pixels	equ	cx	; register input: mouse X coordinate
pointer_y		equ	dx	; register input: mouse Y coordinate

	public	draw_mouse_pointer_at_
; Store the pointer coordinates unless a draw is already in progress.
draw_mouse_pointer_at_ proc far
	cmp	byte ptr cs:cursor_draw_busy,0
	je	short pointer_draw_allowed
	db	0cbh	; retf: an existing draw owns the pointer
pointer_draw_allowed:
	mov	al,0ffh	; 0xff marks the drawing state as active
	mov	byte ptr cs:cursor_draw_busy,al
	shr	pointer_x_pixels,1	; save X in the driver's half-column units
	mov	word ptr cs:mouse_read_x,pointer_x_pixels
	mov	word ptr cs:mouse_read_y,pointer_y
draw_mouse_pointer_at_ endp

codeseg	ends
	end
