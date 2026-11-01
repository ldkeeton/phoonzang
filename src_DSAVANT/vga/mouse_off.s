	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mouse_present:byte
	extrn	mouse_saved_background_offset:word
	extrn	mouse_screen_offset:word
	extrn	mouse_drawn_height:word
	extrn	mouse_drawn_width:word
	extrn	mouse_image_stride:word
	public	mouse_off_

; Hide the mouse and copy its saved background rows back to VGA memory.
mouse_off_ proc near
	push	bp
	mov	bp,sp
	push	es
	movseg	es,ds
	; Skip the reset and screen restore when the mouse is already inactive.
	.if	<byte ptr cs:mouse_present> ne 0
		mov	byte ptr cs:mouse_present,0
		mouse	0		; Reset the BIOS mouse driver.
		pushs	ds,es,di,si
		mov	si,word ptr cs:mouse_saved_background_offset
		movseg	ds,cs
		movseg	es,0a000h
		mov	di,word ptr cs:mouse_screen_offset
		mov	si,word ptr cs:mouse_saved_background_offset
		mov	cx,word ptr cs:mouse_drawn_height
		; Restore one saved row per iteration, advancing through both buffers.
		.repeat
			pushs	cx,si,di
			mov	cx,word ptr cs:mouse_drawn_width
			rep	movsb
			pop	di
			add	di,140h	; The next VGA row is 320 bytes later.
			pop	si
			add	si,word ptr cs:mouse_image_stride
			pop	cx
		.untilcxz
		pops	si,di,es,ds
	.endif
	pop	es
	mov	sp,bp
	pop	bp
	ret
mouse_off_ endp
codeseg	ends
	end
