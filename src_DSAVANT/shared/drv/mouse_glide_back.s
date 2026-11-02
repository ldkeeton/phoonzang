	; Move the drawn pointer one step at a time back to the requested point.
	include	lmacros.h
	codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mouse_present:byte
	extrn	mouse_drawn_x:word
	extrn	mouse_drawn_y:word
	extrn	mouse_glide_active:byte
	extrn	draw_mouse_pointer_at_:near
	extrn	delay_hook:dword

target_x		equ	word ptr 0ch[bp]
target_y		equ	word ptr 0eh[bp]
delay_enabled	equ	word ptr 10h[bp]
target_x_scaled	equ	word ptr -2[bp]	; target X in INT 33h half-column units
target_y_value	equ	word ptr -4[bp]	; requested Y coordinate
current_x_scaled	equ	word ptr -6[bp]	; current X in half-column units
current_y_value	equ	word ptr -8[bp]	; current Y coordinate
	procdef	mouse_glide_back
	; Preserve the caller frame and the registers used by the pointer routines.
	push	bp
	mov	bp,sp
	sub	sp,0ah
	pushs	ds,es,si,di
	movseg	es,ds
	cmp	byte ptr cs:mouse_present,1
	; Only animate when mouse_init found the INT 33h driver.
	je	short mouse_glide_back_enabled
	jmp	near ptr mouse_glide_back_done

mouse_glide_back_enabled:
	mov	ax,target_x
	shl	ax,1
	mov	target_x_scaled,ax
	mov	ax,target_y
	mov	target_y_value,ax
	mov	cx,word ptr cs:mouse_drawn_x
	shl	cx,1
	mov	dx,word ptr cs:mouse_drawn_y
	mov	current_x_scaled,cx
	mov	current_y_value,dx

mouse_glide_back_step:
	; Stop once both current coordinates have reached the requested point.
	mov	cx,current_x_scaled
	mov	dx,current_y_value
	cmp	cx,target_x_scaled
	jne	short mouse_glide_back_move
	cmp	dx,target_y_value
	jne	short mouse_glide_back_move
	jmp	short mouse_glide_back_arrived

mouse_glide_back_move:
	; Advance X by two half-columns toward its target.
	cmp	cx,target_x_scaled
	je	short mouse_glide_back_x_done
	js	short mouse_glide_back_x_up
	sub	current_x_scaled,2
	jmp	short mouse_glide_back_x_done
mouse_glide_back_x_up:
	add	current_x_scaled,2

mouse_glide_back_x_done:
	; Advance Y by one row toward its target.
	mov	cx,current_x_scaled
	cmp	dx,target_y_value
	je	short mouse_glide_back_y_done
	js	short mouse_glide_back_y_up
	sub	current_y_value,1
	jmp	short mouse_glide_back_y_done
mouse_glide_back_y_up:
	add	current_y_value,1

mouse_glide_back_y_done:
	mov	dx,current_y_value
	; Redraw the pointer at this intermediate position.
	mov	ax,cs
	push	ax
	mov	ax,0
	call	draw_mouse_pointer_at_
	mov	cx,current_x_scaled
	mov	dx,current_y_value
	; INT 33h function 4 positions the hardware pointer.
	mouse	4
	mov	ax,delay_enabled
	or	ax,ax
	je	short mouse_glide_back_step
	; Invoke the configured far delay hook between movement steps.
	push	ax
	call	far ptr cs:delay_hook
	pop	ax
	jmp	short mouse_glide_back_step

mouse_glide_back_arrived:
	mov	cx,target_x_scaled
	mov	dx,target_y_value
	; Leave the hardware pointer at the exact requested position.
	mouse	4
	mov	byte ptr cs:mouse_glide_active,0

mouse_glide_back_done:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
	pend	mouse_glide_back

	codeseg	ends
	end
