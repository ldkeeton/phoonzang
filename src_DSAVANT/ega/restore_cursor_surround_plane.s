; Repaint saved background around the cursor on one EGA plane, row by row.
; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	cursor_background_buffer:word
	extrn	cursor_video_offset:word
	extrn	cursor_bitmap_base:byte
	extrn	cursor_bitmap_stride:word
	extrn	cursor_height_rows:word
	extrn	cursor_mask_width_bytes:word
	extrn	cursor_save_row_bytes:word
	extrn	cursor_x_shift:word
	extrn	cursor_final_shift:word
	extrn	cursor_clipped_right:word
	public	restore_cursor_surround_plane_

; Draw the already-clipped cursor at DS:SI to ES:DI using EGA write masks.
restore_cursor_surround_plane_ proc near
		outp	3c4h,2			; select the sequencer map mask register
	inc	dx
	mov	al,ah
	out	dx,al			; enable the plane selected by the caller
	add	si,word ptr cs:cursor_background_buffer
	mov	di,word ptr cs:cursor_video_offset
	mov	bx,offset cursor_bitmap_base
	mov	cx,word ptr cs:cursor_height_rows
	outp	3ceh,8			; select the graphics-controller bit mask register
	inc	dx
	cmp	word ptr cs:cursor_x_shift,0
	je	back1
	jmp	short back3
back1:
	; Copy each unshifted cursor mask byte and preserve the screen bytes.
	pushs	cx,di,si,bx
	mov	cx,word ptr cs:cursor_mask_width_bytes
back2:
	mov	al,byte ptr [bx]
	not	al
	out	dx,al
	mov	al,byte ptr cs:[si]
	mov	ah,byte ptr es:[di]
	mov	byte ptr es:[di],al
	inc	si
	inc	bx
	inc	di
	loop	back2
	pops	bx
	add	bx,word ptr cs:cursor_bitmap_stride
	pops	si
	add	si,word ptr cs:cursor_save_row_bytes
	pops	di
	add	di,50h			; advance one 80-byte screen row
	pops	cx
	loop	back1
	ret
back3:
	; Shift mask bytes across screen-byte boundaries when x is unaligned.
	pushs	cx,di,si,bx
	mov	cx,word ptr cs:cursor_x_shift
	mov	al,byte ptr [bx]
	not	al
	mov	ah,0ffh
	shr	ax,cl
	out	dx,al
	mov	al,byte ptr [si]
	mov	ah,byte ptr es:[di]
	mov	byte ptr es:[di],al
	inc	di
	inc	si
	mov	ax,word ptr cs:cursor_mask_width_bytes
	dec	ax
	je	forward1
back4:
	push	ax
	mov	ah,byte ptr [bx]
	mov	al,byte ptr [bx+1]
	not	ax
	shr	ax,cl
	out	dx,al
	mov	al,byte ptr cs:[si]
	mov	ah,byte ptr es:[di]
	mov	byte ptr es:[di],al
	inc	si
	inc	bx
	inc	di
	pop	ax
	dec	ax
	jne	back4
forward1:
	cmp	word ptr cs:cursor_clipped_right,0
	jne	forward2
	mov	ah,byte ptr [bx]
	xor	al,al
	not	ax
	shr	ax,cl
	out	dx,al
	mov	al,byte ptr cs:[si]
	mov	ah,byte ptr es:[di]
	mov	byte ptr es:[di],al
forward2:
	pops	bx
	add	bx,word ptr cs:cursor_bitmap_stride
	pops	si
	add	si,word ptr cs:cursor_save_row_bytes
	pops	di
	add	di,50h			; advance one 80-byte screen row
	pops	cx
	loop	back3
	ret
restore_cursor_surround_plane_ endp
codeseg	ends
	end
