	; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
extrn	mouse_init_enabled:byte
extrn	default_pointer_bitmap:byte
extrn	mouse_read_x:word
extrn	mouse_read_y:word
extrn	mouse_drawn_y:word
extrn	mouse_present:byte
extrn	expand_cursor_bitmap_planes_:near
extrn	update_mouse_cursor_:near
	public	mouse_init_

mouse_init_ proc near
	push	bp
	mov	bp,sp
	sub	sp,4			; preserve the original four-byte local frame
	pushs	es
	movseg	es,ds
	; Skip initialization when the mouse initialization flag is clear.
	cmp	byte ptr cs:mouse_init_enabled,0
	jne	forward1
	jmp	forward2
forward1:
	; Expand the built-in pointer image before resetting the INT 33h driver.
	pushs	ds,si
	mov	si,offset default_pointer_bitmap
	movseg	ds,cs
	call	expand_cursor_bitmap_planes_
	pops	si,ds
	; Reset the mouse and set its horizontal and vertical ranges.
	mouse	0
	mov	ax,7
	xor	cx,cx
	mov	dx,27fh
	int	33h
	mov	ax,8
	xor	cx,cx
	mov	dx,0c7h
	int	33h
	; Position the pointer at the origin, then capture its current coordinates.
	mov	ax,4
	xor	cx,cx
	xor	dx,dx
	int	33h
	mouse	3
	shr	cx,1			; convert horizontal driver units to half-width units
	mov	word ptr cs:mouse_read_x,cx
	mov	word ptr cs:mouse_read_y,dx
	; Preserve segment and index registers while drawing the initial pointer.
	pushs	ds,es,di,si
	mov	ax,cs
	push	ax
	mov	ax,0ffffh		; force the cursor update routine to redraw
	mov	word ptr cs:mouse_drawn_y,ax
	call	update_mouse_cursor_
	pops	si,di,es,ds
	mov	byte ptr cs:mouse_present,1
	; Register the mouse callback with the INT 33h driver.
	pushs	es
	mov	ax,14h
	mov	bx,cs
	mov	es,bx
	mov	cx,0bh
	mov	dx,2b09h
	int	33h
	pops	es
forward2:
	pops	es
	mov	sp,bp
	pop	bp
	ret
mouse_init_ endp
codeseg	ends
	end
