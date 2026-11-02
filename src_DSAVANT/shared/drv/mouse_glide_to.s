	; Move the mouse pointer one step at a time toward the requested point.
	include	lmacros.h
	codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mouse_present:byte
	extrn	mouse_glide_active:byte
	extrn	draw_mouse_pointer_at:near
	extrn	delay_hook:dword

target_x		equ	word ptr 0ch[bp]
target_y		equ	word ptr 0eh[bp]
delay_enabled	equ	word ptr 10h[bp]
target_x_scaled	equ	word ptr -2[bp]	; target X in INT 33h half-column units
target_y_value	equ	word ptr -4[bp]	; requested Y coordinate
current_x_scaled	equ	word ptr -6[bp]	; current X in half-column units
current_y_value	equ	word ptr -8[bp]	; current Y coordinate

	public	mouse_glide_to
mouse_glide_to proc near
	; Preserve the caller frame and registers used by the pointer routines.
	push	bp
	mov	bp,sp
	sub	sp,0ah
	pushs	ds,es,si,di
	movseg	es,ds
	cmp	byte ptr cs:mouse_present,1
	; Skip the glide when mouse_init has not found the INT 33h driver.
	je	short mouse_glide_to_enabled
	jmp	near ptr mouse_glide_to_done

mouse_glide_to_enabled:
	mov	byte ptr cs:mouse_glide_active,1
	mov	ax,target_x
	shl	ax,1
	mov	target_x_scaled,ax
	mov	ax,target_y
	mov	target_y_value,ax
	; INT 33h function 3 reports buttons in BX and position in CX:DX.
	mouse	3
	and	cx,0fffeh	; Keep the hardware X coordinate in half-column units.
	mov	current_x_scaled,cx
	mov	current_y_value,dx

mouse_glide_to_step:
	; Stop when both current coordinates reach the requested point.
	mov	cx,current_x_scaled
	mov	dx,current_y_value
	cmp	cx,target_x_scaled
	jne	short mouse_glide_to_move
	cmp	dx,target_y_value
	jne	short mouse_glide_to_move
	jmp	short mouse_glide_to_done

mouse_glide_to_move:
	; Move X by two half-columns toward its target.
	cmp	cx,target_x_scaled
	je	short mouse_glide_to_x_done
	js	short mouse_glide_to_x_up
	sub	current_x_scaled,2
	jmp	short mouse_glide_to_x_done
mouse_glide_to_x_up:
	add	current_x_scaled,2

mouse_glide_to_x_done:
	; Move Y by one row toward its target.
	mov	cx,current_x_scaled
	cmp	dx,target_y_value
	je	short mouse_glide_to_y_done
	js	short mouse_glide_to_y_up
	sub	current_y_value,1
	jmp	short mouse_glide_to_y_done
mouse_glide_to_y_up:
	add	current_y_value,1

mouse_glide_to_y_done:
	mov	dx,current_y_value
	; Redraw the pointer at this intermediate position.
	mov	ax,cs
	push	ax
	mov	ax,0
	call	draw_mouse_pointer_at
	mov	cx,current_x_scaled
	mov	dx,current_y_value
	; INT 33h function 4 positions the hardware pointer.
	mouse	4
	mov	ax,delay_enabled
	or	ax,ax
	je	short mouse_glide_to_step
	; Invoke the configured far delay hook between movement steps.
	push	ax
	call	far ptr cs:delay_hook
	pop	ax
	jmp	short mouse_glide_to_step

mouse_glide_to_done:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
mouse_glide_to endp

	codeseg	ends
	end
