	; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
extrn	mouse_drawn_height:word
extrn	mouse_drawn_row_bytes:word
extrn	old_cursor_restore_mask:byte
extrn	mouse_drawn_video_offset:word
	public	restore_old_background_plane_

mouse_row_stride	equ	-2[bp]	; caller's row stride for old_cursor_restore_mask

; Restore saved background bytes whose restore-mask bit is set on one selected EGA plane.
restore_old_background_plane_ proc near
	; Select the sequencer map mask and enable the requested plane.
	outp	3c4h,2
	inc	dx
	mov	al,ah
	out	dx,al
	mov	bx,offset old_cursor_restore_mask
	mov	di,word ptr cs:mouse_drawn_video_offset
	mov	cx,word ptr cs:mouse_drawn_height
back1:
	; Process each row, preserving row pointers and the remaining height.
	pushs	cx,si,bx,di
	mov	cx,word ptr cs:mouse_drawn_row_bytes
back2:
	; Test successive bitmap bits and copy the corresponding source pixel.
	mov	ah,byte ptr [bx]
	inc	bx
	mov	al,9			; eight bits plus the terminating count
back3:
	dec	al
	je	back2
	shl	ah,1
	jae	forward1
	mov	dl,byte ptr [si]
	mov	byte ptr es:[di],dl
forward1:
	inc	di
	inc	si
	loop	back3
	pops	di
	add	di,50h			; advance one 80-byte screen row
	pops	bx
	add	bx,word ptr mouse_row_stride
	pops	si
	add	si,word ptr cs:mouse_drawn_row_bytes
	pops	cx
	loop	back1
	ret
restore_old_background_plane_ endp
codeseg	ends
	end
