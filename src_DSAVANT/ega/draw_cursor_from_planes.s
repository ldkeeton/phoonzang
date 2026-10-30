	; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	cursor_video_offset:word
	extrn	cursor_bitmap_base:byte
	extrn	cursor_bitmap_stride:word
	extrn	cursor_height_rows:word
	extrn	cursor_mask_width_bytes:word
	extrn	cursor_x_shift:word
	extrn	cursor_clipped_right:word
	extrn	cursor_plane_buffers:byte
	public	draw_cursor_from_planes_

; Draw the cursor from the plane buffer, shifting mask bytes when x is unaligned.
draw_cursor_from_planes_ proc near
	; Select the EGA map mask and point to the saved cursor planes and bitmap.
	outp	3c4h,2
	inc	dx
	mov	al,ah
	out	dx,al
	add	si,offset cursor_plane_buffers
	mov	cx,word ptr cs:cursor_height_rows
	mov	di,word ptr cs:cursor_video_offset
	mov	bx,offset cursor_bitmap_base
	; Select the graphics-controller bit mask register.
	outp	3ceh,8
	inc	dx
	cmp	word ptr cs:cursor_x_shift,0
	je	back1
	jmp	short back3
back1:
	; Copy each unshifted mask byte for every cursor row.
	pushs	cx,di,si,bx
	mov	cx,word ptr cs:cursor_mask_width_bytes
back2:
	mov	al,byte ptr [bx]
	out	dx,al
	mov	al,byte ptr [si]
	mov	ah,byte ptr es:[di]
	mov	byte ptr es:[di],al
	inc	si
	inc	bx
	inc	di
	loop	back2
	pops	bx
	add	bx,word ptr cs:cursor_bitmap_stride
	pops	si
	add	si,word ptr cs:cursor_bitmap_stride
	pops	di
	add	di,50h			; advance one 80-byte screen row
	pops	cx
	loop	back1
	ret
back3:
	; Shift mask and source bytes across screen-byte boundaries.
	pushs	cx,di,si,bx
	mov	cx,word ptr cs:cursor_x_shift
	mov	al,byte ptr [bx]
	shr	al,cl
	out	dx,al
	mov	al,byte ptr [si]
	shr	al,cl
	mov	ah,byte ptr es:[di]
	mov	byte ptr es:[di],al
	inc	di
	mov	ax,word ptr cs:cursor_mask_width_bytes
	dec	ax
	je	forward1
back4:
	push	ax
	mov	ah,byte ptr [bx]
	mov	al,byte ptr [bx+1]
	shr	ax,cl
	out	dx,al
	mov	ah,byte ptr [si]
	mov	al,byte ptr [si+1]
	shr	ax,cl
	mov	ah,byte ptr es:[di]
	mov	byte ptr es:[di],al
	inc	si
	inc	bx
	inc	di
	pop	ax
	dec	ax
	jne	back4
forward1:
	; Emit a final shifted byte only when the cursor has no tail mask.
	cmp	word ptr cs:cursor_clipped_right,0
	jne	forward2
	mov	ah,byte ptr [bx]
	xor	al,al
	shr	ax,cl
	out	dx,al
	mov	ah,byte ptr [si]
	xor	al,al
	shr	ax,cl
	mov	ah,byte ptr es:[di]
	mov	byte ptr es:[di],al
forward2:
	pops	bx
	add	bx,word ptr cs:cursor_bitmap_stride
	pops	si
	add	si,word ptr cs:cursor_bitmap_stride
	pops	di
	add	di,50h			; advance one 80-byte screen row
	pops	cx
	loop	back3
	ret
draw_cursor_from_planes_ endp
codeseg	ends
	end
