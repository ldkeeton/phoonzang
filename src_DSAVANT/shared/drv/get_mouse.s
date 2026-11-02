	; Read INT 33h mouse coordinates and button state when a mouse is present.
	include	lmacros.h
	codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mouse_present:byte

mouse_x_output	equ	word ptr 0ch[bp]
mouse_y_output	equ	word ptr 0eh[bp]
button_state	equ	word ptr -2[bp]

	public	get_mouse
get_mouse proc near
	; Preserve the caller frame and reserve the original local frame.
	push	bp
	mov	bp,sp
	sub	sp,6
	push	es
	movseg	es,ds
	cmp	byte ptr cs:mouse_present,0
	; Skip the BIOS call when mouse_init has not found a mouse.
	je	short no_mouse

	; INT 33h function 3 reports buttons in BX and position in CX:DX.
	mouse	3
	mov	button_state,bx
	mov	bx,mouse_x_output
	shr	cx,1	; Store X in the driver's half-column units.
	mov	word ptr [bx],cx
	mov	bx,mouse_y_output
	mov	word ptr [bx],dx
	mov	ax,button_state
no_mouse:
	pop	es
	mov	sp,bp
	pop	bp
	ret
get_mouse endp

	codeseg	ends
	end
