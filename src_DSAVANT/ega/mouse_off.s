	; :ts=8
	include lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mouse_present:byte
	extrn	cursor_save_buffer:word
	extrn	restore_cursor_background_plane_:near
	public	mouse_off_

; Hide the mouse and restore its saved image to the EGA screen planes.
mouse_off_ proc near
	push	bp
	mov	bp,sp
	push	es
	movseg	es,ds
	cmp	byte ptr cs:mouse_present,0
	je	forward1
	mov	byte ptr cs:mouse_present,0
	mouse	0			; reset mouse driver state
	pushs	ds,es,di,si
	movseg	ds,cs
	movseg	es,0a000h
	mov	si,word ptr cs:cursor_save_buffer
	; Restore each saved EGA plane using its sequencer map-mask bit.
	outp	3c4h,2,1
	call	restore_cursor_background_plane_
	mov	si,word ptr cs:cursor_save_buffer
	add	si,120h
	outp	3c4h,2,2
	call	restore_cursor_background_plane_
	mov	si,word ptr cs:cursor_save_buffer
	add	si,240h
	outp	3c4h,2,4
	call	restore_cursor_background_plane_
	mov	si,word ptr cs:cursor_save_buffer
	add	si,360h
	outp	3c4h,2,8
	call	restore_cursor_background_plane_
	; Re-enable writes to all four planes after restoring the image.
	outp	3c4h,2,0fh
	pops	si,di,es,ds
forward1:
	pop	es
	mov	sp,bp
	pop	bp
	ret
mouse_off_ endp
codeseg	ends
	end
