	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	text_pos_x:word
	extrn	text_pos_y:word
	extrn	text_opaque:word
	extrn	secondary_text_color:word
	extrn	primary_text_color:word
	extrn	screen_buf_seg:word

glyph_width	equ	-2	; stack slot: glyph width in pixels
glyph_row_count	equ	-4	; stack slot: glyph rows remaining
destination_row_offset	equ	-6	; stack slot: current screen row offset
row_pixels_remaining	equ	-8	; stack slot: pixels left in this row
source_row_skip	equ	-0ah	; stack slot: source bytes skipped after a row
glyph_byte_width	equ	-0ch	; stack slot: source bytes in each row

	public	draw_glyph
; Draw the selected glyph into the active screen buffer and advance text_pos_x.
draw_glyph proc near
	push	bp
	mov	bp,sp
	sub	sp,0ch
	pushs	ds,es,si,di
	mov	es,ax
	mov	ds,ax
	xor	bx,bx
	mov	ax,word ptr cs:text_pos_y
	mov	cx,140h	; screen rows are separated by 320 bytes
	mul	cx
	add	ax,word ptr cs:text_pos_x
	mov	di,ax
	mov	word ptr destination_row_offset[bp],ax
	xor	ax,ax
	mov	al,byte ptr [bx]
	mov	word ptr glyph_width[bp],ax
	mov	al,byte ptr 1[bx]
	mov	word ptr glyph_row_count[bp],ax
	mov	cx,word ptr 0ah[bx]
	add	bx,10h
	mov	ax,word ptr 0ch[bp]
	shl	ax,1
	add	bx,ax
	mov	al,byte ptr [bx]
	xor	ah,ah
	mov	word ptr source_row_skip[bp],ax
	mul	cx
	add	ax,110h	; advance past the glyph data header
	mov	si,ax
	xor	ah,ah
	mov	al,byte ptr 1[bx]
	add	word ptr cs:text_pos_x,ax
	mov	word ptr glyph_byte_width[bp],ax
	xor	bx,bx
	mov	al,byte ptr 7[bx]
	cbw
	add	word ptr cs:text_pos_x,ax
	mov	al,byte ptr 2[bx]
	test	al,1
	; Bit 0 selects the color bitmap rendering path.
	je	short .check_transparent_copy
	jmp	near ptr .check_bitmap_color
.check_transparent_copy:
	mov	ax,word ptr cs:text_opaque
	or	ax,ax
	; A nonzero opaque setting skips the glyph transparency flag check.
	jne	short .prepare_mono_glyph
	mov	al,byte ptr 6[bx]
	test	al,2
	; Bit 1 chooses the alternate bitmap source when set.
	jne	short .prepare_bitmap_color
.prepare_mono_glyph:
	xor	ax,ax
	mov	al,byte ptr 3[bx]
	mov	bx,word ptr glyph_byte_width[bp]
	add	bx,7
	mov	cl,3
	shr	bx,cl
	sub	ax,bx
	mov	word ptr source_row_skip[bp],ax
	mov	bx,word ptr cs:secondary_text_color
	mov	dx,word ptr cs:primary_text_color
	mov	dh,bl
	movseg	es,<word ptr cs:screen_buf_seg>
.mono_row_loop:
	; Render one glyph row, consuming its bytes in eight-pixel groups.
	mov	cx,word ptr glyph_byte_width[bp]
.mono_byte_loop:
	mov	word ptr row_pixels_remaining[bp],cx
	lodsb
	cmp	cx,9
	jb	short .mono_byte_count_ready
	mov	cx,8
.mono_byte_count_ready:
	sub	word ptr row_pixels_remaining[bp],cx
.mono_pixel_loop:
	; Carry from the shifted glyph bit selects the primary text color.
	shl	al,1
	jb	short .mono_foreground_pixel
	mov	byte ptr es:[di],dh
	inc	di
	jmp	short .mono_pixel_done
.mono_foreground_pixel:
	mov	byte ptr es:[di],dl
	inc	di
.mono_pixel_done:
	loop	.mono_pixel_loop
	mov	cx,word ptr row_pixels_remaining[bp]
	or	cx,cx
	jne	short .mono_byte_loop
	add	si,word ptr source_row_skip[bp]
	add	word ptr destination_row_offset[bp],140h	; next 320-byte screen row
	mov	di,word ptr destination_row_offset[bp]
	dec	word ptr glyph_row_count[bp]
	jne	short .mono_row_loop
	jmp	near ptr .done
.prepare_bitmap_color:
	mov	ax,word ptr source_row_skip[bp]
	mov	cx,word ptr 0eh[bx]
	mul	cx
	add	ax,word ptr 0ch[bx]
	mov	bx,ax
	mov	ax,word ptr cs:secondary_text_color
	mov	dx,word ptr cs:primary_text_color
	mov	dh,al
	movseg	es,<word ptr cs:screen_buf_seg>
.bitmap_row_loop:
	; Render one row using the glyph bitmap as a per-pixel mask.
	mov	cx,word ptr glyph_width[bp]
.bitmap_byte_loop:
	mov	word ptr row_pixels_remaining[bp],cx
	lodsb
	mov	ah,byte ptr [bx]
	inc	bx
	cmp	cx,9
	jb	short .bitmap_byte_count_ready
	mov	cx,8
.bitmap_byte_count_ready:
	sub	word ptr row_pixels_remaining[bp],cx
.bitmap_pixel_loop:
	; The mask bit controls whether this source pixel replaces the screen.
	shl	ah,1
	jae	short .bitmap_unmasked_pixel
	shl	al,1
	jb	short .bitmap_foreground_pixel
	mov	byte ptr es:[di],dh
	inc	di
	jmp	short .bitmap_pixel_done
.bitmap_foreground_pixel:
	mov	byte ptr es:[di],dl
	inc	di
	jmp	short .bitmap_pixel_done
.bitmap_unmasked_pixel:
	shl	al,1
	inc	di
.bitmap_pixel_done:
	loop	.bitmap_pixel_loop
	mov	cx,word ptr row_pixels_remaining[bp]
	or	cx,cx
	jne	short .bitmap_byte_loop
	add	word ptr destination_row_offset[bp],140h	; next 320-byte screen row
	mov	di,word ptr destination_row_offset[bp]
	dec	word ptr glyph_row_count[bp]
	jne	short .bitmap_row_loop
	jmp	near ptr .done
.check_bitmap_color:
	mov	al,byte ptr 6[bx]
	test	al,2
	; A set flag selects the 0xff-transparent copy loop below.
	jne	short .transparent_color_copy
	mov	ax,word ptr glyph_width[bp]
	sub	ax,word ptr glyph_byte_width[bp]
	mov	word ptr source_row_skip[bp],ax
	movseg	es,<word ptr cs:screen_buf_seg>
.opaque_row_loop:
	; Copy a full glyph row without testing individual source pixels.
	mov	cx,word ptr glyph_byte_width[bp]
	rep	movsb
	add	si,word ptr source_row_skip[bp]
	add	word ptr destination_row_offset[bp],140h	; next 320-byte screen row
	mov	di,word ptr destination_row_offset[bp]
	dec	word ptr glyph_row_count[bp]
	jne	short .opaque_row_loop
	jmp	near ptr .done
.transparent_color_copy:
	mov	ax,word ptr glyph_width[bp]
	sub	ax,word ptr glyph_byte_width[bp]
	mov	word ptr source_row_skip[bp],ax
	movseg	es,<word ptr cs:screen_buf_seg>
.transparent_row_loop:
	; The transparent path preserves destination pixels for 0xff source bytes.
	mov	cx,word ptr glyph_byte_width[bp]
.transparent_pixel_loop:
	mov	al,byte ptr [si]
	cmp	al,0ffh	; 0xff leaves the existing screen pixel untouched
	je	short .transparent_pixel_skipped
	mov	byte ptr es:[di],al
.transparent_pixel_skipped:
	inc	si
	inc	di
	loop	.transparent_pixel_loop
	add	si,word ptr source_row_skip[bp]
	add	word ptr destination_row_offset[bp],140h	; next 320-byte screen row
	mov	di,word ptr destination_row_offset[bp]
	dec	word ptr glyph_row_count[bp]
	jne	short .transparent_row_loop
.done:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
draw_glyph endp

codeseg	ends
	end
