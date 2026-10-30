	; :ts=8
	include lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
extrn	cursor_bitmap_base:byte
extrn	cursor_plane_buffers:byte
extrn	pixel_plane_lookup:byte
extrn	cursor_plane_buffer_2:byte
extrn	cursor_plane_buffer_3:byte
extrn	cursor_plane_buffer_4:byte
extrn	mouse_pointer_height:word
extrn	mouse_pointer_width:word
extrn	expand_transparent_px_to_planes_:near
	public	expand_cursor_bitmap_planes_

bitmap_bytes_remaining	equ	-4[bp]
bitmap_row_bytes_remaining	equ	-2[bp]

; Clear the cursor buffers, then expand each source pixel into its plane bytes.
expand_cursor_bitmap_planes_	proc	near
	pushs	es,di
	movseg	es,cs		; buffers are stored in the code segment
	mov	cx,100h		; clear the 256-byte cursor mask
	mov	di,offset cursor_bitmap_base
	xor	al,al
	rep stosb
	mov	cx,400h		; clear four 256-byte cursor plane buffers
	mov	di,offset cursor_plane_buffers
	xor	al,al
	rep stosb
	xor	di,di
	mov	bx,offset pixel_plane_lookup
	mov	cx,word ptr cs:mouse_pointer_height
; Convert each row of source pixels into the cursor mask and four planes.
cursor_row_loop:
	push	cx
	mov	cx,word ptr cs:mouse_pointer_width
	mov	word ptr bitmap_row_bytes_remaining,cx
	mov	al,6			; start with the highest two-bit pixel position
	mov	byte ptr bitmap_bytes_remaining,al
; Pack each transparent color group into one byte per output plane.
cursor_pixel_loop:
	lodsb
	mov	ah,byte ptr bitmap_bytes_remaining
	call	expand_transparent_px_to_planes_
	or	byte ptr cs:[di+offset cursor_bitmap_base],ch
	or	byte ptr cs:[di+offset cursor_plane_buffers],dl
	or	byte ptr cs:[di+offset cursor_plane_buffer_2],dh
	or	byte ptr cs:[di+offset cursor_plane_buffer_3],al
	or	byte ptr cs:[di+offset cursor_plane_buffer_4],ah
	sub	byte ptr bitmap_bytes_remaining,2
	jae	short cursor_pixel_next
	inc	di
	mov	byte ptr bitmap_bytes_remaining,6
cursor_pixel_next:
	dec	word ptr bitmap_row_bytes_remaining
	jne	cursor_pixel_loop
	cmp	byte ptr bitmap_bytes_remaining,6
	je	short cursor_row_done
	inc	di
cursor_row_done:
	pop	cx
	loop	cursor_row_loop
	pops	di,es
	ret
expand_cursor_bitmap_planes_	endp
codeseg	ends
	end
