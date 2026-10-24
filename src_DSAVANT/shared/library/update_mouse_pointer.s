; redraws the mouse pointer when the INT 33h position differs from the one
; last drawn, unless a glide is moving it; then clears mouse_redraw_pending
	include	lmacros.h
	assume	cs:codeseg
	extrn	mouse_glide_active_:byte, mouse_present_:byte
	extrn	mouse_redraw_pending_:byte
	extrn	mouse_drawn_x_:word, mouse_drawn_y_:word
	extrn	draw_mouse_pointer_at_:near
	public	update_mouse_pointer_
update_mouse_pointer_ proc near
	pushs	ds,es,si,di
	cmp	byte ptr cs:mouse_glide_active_,1	;a glide owns the pointer
	je	skip
	cmp	byte ptr cs:mouse_present_,1
	je	poll
skip:
	jmp	done
poll:
	mouse	3	; int 33h/3: position in cx,dx, buttons in bx
	shr	cx,1	;drawn X is kept at half the driver's column
	cmp	word ptr cs:mouse_drawn_x_,cx
	jne	moved
	cmp	word ptr cs:mouse_drawn_y_,dx
	je	done	;unchanged: no redraw
moved:
	shl	cx,1
	mov	ax,cs	;draw_mouse_pointer_at returns with retf
	push	ax
	call	draw_mouse_pointer_at_
done:
	mov	byte ptr cs:mouse_redraw_pending_,0
	pops	di,si,es,ds
	ret
update_mouse_pointer_ endp
	finish
	end
