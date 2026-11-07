	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mouse_init_enabled:byte
	extrn	mouse_read_x:word
	extrn	mouse_read_y:word
	extrn	mouse_drawn_y:word
	extrn	mouse_present:byte
	extrn	draw_mouse_cursor_image_:near
	extrn	mouse_event_handler_:far
	public	mouse_init_

; Reset the BIOS mouse, initialize its bounds, and draw the first pointer.
mouse_init_	proc	near
	push	bp
	mov	bp,sp
	push	es
	movseg	es,ds
	cmp	byte ptr cs:mouse_init_enabled,0
	; Skip hardware setup when mouse initialization is disabled.
	je	short initialization_done
		mouse	0	; INT 33h function 0: reset and detect the mouse.
		pushs	ds,es,di,si
		mov	ax,7		; Set horizontal range from 0 through 639.
		xor	cx,cx
		mov	dx,27fh
		int	33h
		mov	ax,8		; Set vertical range from 0 through 199.
		xor	cx,cx
		mov	dx,0c7h
		int	33h
		mov	ax,4		; Position the pointer at the upper-left corner.
		xor	cx,cx
		xor	dx,dx
		int	33h
		mouse	3	; Read pointer position and button state.
		shr	cx,1		; INT 33h reports horizontal coordinates doubled.
		mov	word ptr cs:mouse_read_x,cx
		mov	word ptr cs:mouse_read_y,dx
		mov	ax,cs
		push	ax
		mov	ax,0ffffh	; Force the first draw by marking the old Y invalid.
		mov	word ptr cs:mouse_drawn_y,ax
		call	draw_mouse_cursor_image_
		pops	si,di,es,ds
		mov	byte ptr cs:mouse_present,1
		push	es
		mov	ax,14h		; INT 33h function 14h installs the user callback.
		mov	bx,cs
		mov	es,bx
		mov	cx,0bh
		mov	dx,offset mouse_event_handler_
		int	33h
		pop	es
initialization_done:
	pop	es
	mov	sp,bp
	pop	bp
	ret
mouse_init_	endp
codeseg	ends
	end
