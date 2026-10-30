; Set the mouse position when a mouse driver is present.
	include	lmacros.h
	assume	cs:codeseg
	extrn	mouse_button_count:byte
	procdef	mouse_set_pos,<<x,word>,<y,word>>
	cld
	pushs	ds,es,si,di
	movseg	es,ds
	cmp	byte ptr cs:mouse_button_count,0
	je	no_mouse	; Skip the mouse call when no driver is present.
	mov	cx,x
	shl	cx,1
	mov	dx,y
	mouse	4	; Mouse driver function 4 sets the cursor position.
no_mouse:
	pops	di,si,es,ds
	mov	sp,bp
	pret
	pend	mouse_set_pos
	finish
	end
