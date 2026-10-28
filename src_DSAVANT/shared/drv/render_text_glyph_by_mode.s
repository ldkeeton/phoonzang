	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	screen_buf_seg:word
	extrn	text_state_bytes:byte
	extrn	text_state_words:word
	extrn	intensity_limits:byte
					
; Apply the selected state masks while copying eight-pixel graphics cells.
graphics_mode	equ	1ah	; caller frame: mode selector
intensity_mode	equ	1eh	; caller frame: intensity selector
mode_one_x_origin equ -2ah
mode_two_y_origin equ -2ch
mode_row_limit equ -2eh
screen_row_correction equ -1eh
initial_source_offset	equ	-6
source_y_offset	equ	-28h
source_column_index	equ	-24h
source_cursor	equ	-0eh
row_count	equ	-4
column_count	equ	-2
state_bytes_ptr	equ	-36h
screen_x_adjust	equ	-3ch
screen_y_adjust	equ	-3eh
state_bytes_cursor	equ	-0ch
state_words_cursor	equ	-34h
row_limit	equ	-22h
column_mask	equ	-0ah
row_mask	equ	-38h
pixel_mask	equ	-32h
intensity_adjust	equ	-30h
row_mask_init	equ	-3ah

	public	render_text_glyph_by_mode_
render_text_glyph_by_mode_ proc near
	push	es
	movseg	es,<word ptr cs:screen_buf_seg>
	mov	ax,offset text_state_bytes
	mov	word ptr state_bytes_ptr[bp],ax	; text state starts at the table base
	xor	ax,ax
	mov	word ptr screen_x_adjust[bp],ax
	mov	word ptr screen_y_adjust[bp],ax
	mov	ax,graphics_mode[bp]
	cmp	al,2	; mode 2 branches to the neighboring renderer
	jne	short .dispatch_mode_three
	jmp	graphics_mode_two
.dispatch_mode_three:
	cmp	al,3	; mode 3 branches to the neighboring renderer
	jne	short .setup_default_mode
	jmp	graphics_mode_three
.setup_default_mode:
	mov	ax,word ptr initial_source_offset[bp]
	mov	word ptr source_cursor[bp],ax
	mov	si,word ptr [bx]
	add	si,bx
	mov	word ptr column_mask[bp],1	; rotate one cell bit at a time
	lea	ax,4[bx]
	mov	word ptr state_bytes_cursor[bp],ax
	mov	cx,word ptr row_count[bp]
	mov	byte ptr row_mask_init[bp],80h
	mov	ax,graphics_mode[bp]
	cmp	al,1	; mode 1 branches to the neighboring renderer
	jne	short .default_mode_row_start
	jmp	graphics_mode_one
.default_mode_row_start:
	mov	ax,word ptr source_y_offset[bp]
	add	word ptr source_cursor[bp],ax
	mov	ax,word ptr source_column_index[bp]
	mov	bx,140h
	mul	bx
	add	word ptr source_cursor[bp],ax
.default_mode_row_loop:
	mov	ax,word ptr row_limit[bp]
	mov	di,word ptr source_cursor[bp]
	cmp	di,ax
	jb	short .default_mode_row_in_bounds
	jmp	near ptr .done
.default_mode_row_in_bounds:
	push	cx
	call	sum_graphics_row_offsets_
	mov	ax,offset text_state_words
	mov	word ptr state_words_cursor[bp],ax
	mov	cx,word ptr column_count[bp]
.default_mode_cell_loop:
	push	cx
	call	count_graphics_mask_bits
	mov	bx,word ptr state_bytes_cursor[bp]
	mov	al,byte ptr [bx]
	and	al,byte ptr column_mask[bp]
	jne	short .default_mode_cell_enabled
	jmp	near ptr .advance_cell
.default_mode_cell_enabled:
	mov	bx,word ptr state_words_cursor[bp]
	mov	al,byte ptr cs:[bx]
	cmp	al,0ffh
	jne	short .default_mode_draw_cell
	add	si,40h
	jmp	near ptr .advance_cell
.default_mode_draw_cell:
	pushs	di,si
	mov	al,80h
	mov	byte ptr row_mask[bp],al
	mov	cx,8	; eight pixel rows per cell
.default_mode_pixel_row_loop:
	cmp	di,word ptr row_limit[bp]
	jb	short .default_mode_pixel_row_in_bounds
	jmp	near ptr .cell_pixel_rows_done
.default_mode_pixel_row_in_bounds:
	mov	bx,word ptr state_bytes_ptr[bp]
	mov	al,byte ptr cs:[bx]
	and	al,byte ptr row_mask[bp]
	je	short .default_mode_pixel_unmasked
	jmp	near ptr .skip_masked_row
.default_mode_pixel_unmasked:
	pushs	cx,di
	mov	al,80h
	mov	byte ptr pixel_mask[bp],al
	mov	cx,8	; eight pixels per row
.default_mode_pixel_loop:
	mov	bx,word ptr state_words_cursor[bp]
	mov	al,byte ptr cs:[bx]
	and	al,byte ptr pixel_mask[bp]
	jne	short .skip_masked_pixel
	xor	ah,ah
	mov	al,byte ptr [si]
	cmp	al,0ffh
	je	short .advance_source_pixel
	cmp	byte ptr intensity_mode[bp],2
	jne	short .normal_intensity_mode
	mov	al,byte ptr es:[di]
	mov	bx,offset intensity_limits
	add	bx,ax
	add	al,byte ptr [si]
	jb	short .intensity_saturated
	cmp	al,byte ptr cs:[bx]
	jb	short .write_pixel
.intensity_saturated:
	mov	al,byte ptr cs:[bx]
	jmp	short .write_pixel
.normal_intensity_mode:
	cmp	byte ptr intensity_adjust[bp],0
	je	short .write_pixel
	mov	bx,offset intensity_limits
	add	bx,ax
	add	al,byte ptr intensity_adjust[bp]
	jb	short .adjusted_intensity_saturated
	cmp	al,byte ptr cs:[bx]
	jb	short .write_pixel
.adjusted_intensity_saturated:
	mov	al,byte ptr cs:[bx]
.write_pixel:
	mov	byte ptr es:[di],al
.advance_source_pixel:
	inc	si
	inc	di
	ror	byte ptr pixel_mask[bp],1
	loop	.default_mode_pixel_loop
.pixel_row_loop_done:
	pops	di,cx
	add	di,140h
.next_masked_pixel_row:
	ror	byte ptr row_mask[bp],1
	loop	.default_mode_pixel_row_loop
	jmp	short .cell_pixel_rows_done
.skip_masked_pixel:
	inc	si
	ror	byte ptr pixel_mask[bp],1
	loop	.default_mode_pixel_loop
	jmp	short .pixel_row_loop_done
.skip_masked_row:
	add	si,8
	jmp	short .next_masked_pixel_row
.cell_pixel_rows_done:
	pop	si
	add	si,40h
	pop	di
.advance_cell:
	add	di,8
	sub	di,word ptr screen_x_adjust[bp]
	rol	byte ptr column_mask[bp],1
	cmp	byte ptr column_mask[bp],1
	jne	short .next_column
	inc	word ptr state_bytes_cursor[bp]
.next_column:
	inc	word ptr state_words_cursor[bp]
	pop	cx
	loop	.next_cell
	pop	cx
	add	word ptr source_cursor[bp],0a00h	; next 10-line source block
	mov	ax,word ptr screen_y_adjust[bp]
	sub	word ptr source_cursor[bp],ax
	inc	word ptr state_bytes_ptr[bp]
	mov	byte ptr row_mask_init[bp],80h
	loop	.next_source_row
.done:
	pop	es
	ret
.next_cell:
	jmp	near ptr .default_mode_cell_loop
.next_source_row:
	jmp	near ptr .default_mode_row_loop



; Internal helper and mode entries share the graphics-copy span.
sum_graphics_row_offsets_ label near
	mov	al, 80h
	mov	dl, al
	xor	ax, ax
	mov	word ptr screen_y_adjust[bp], ax
	mov	bx, word ptr state_bytes_ptr[bp]
	mov	cx, 8
sum_graphics_row_offsets_scan_mask_bits label near
	mov	al, byte ptr cs:[bx]
	and	al, dl
	je	short sum_graphics_row_offsets_advance_mask_bit
	add	word ptr screen_y_adjust[bp], 0140h
sum_graphics_row_offsets_advance_mask_bit label near
	ror	dl, 1
	loop	sum_graphics_row_offsets_scan_mask_bits
	ret
count_graphics_mask_bits label near
	xor	ax, ax
	mov	word ptr screen_x_adjust[bp], ax
	mov	dl, 80h
	mov	bx, word ptr state_words_cursor[bp]
	mov	cx, 8
count_graphics_mask_bits_scan_state_bits label near
	mov	al, byte ptr cs:[bx]
	and	al, dl
	je	short count_graphics_mask_bits_advance_state_bit
	inc	word ptr screen_x_adjust[bp]
count_graphics_mask_bits_advance_state_bit label near
	ror	dl, 1
	loop	count_graphics_mask_bits_scan_state_bits
	ret
graphics_mode_one label near
	mov	ax, word ptr mode_one_x_origin[bp]
	sub	word ptr source_cursor[bp], ax
	mov	ax, word ptr source_column_index[bp]
	mov	bx, 0140h
	mul	bx
	add	word ptr source_cursor[bp], ax
mode_one_row_loop label near
	mov	ax, word ptr row_limit[bp]
	mov	di, word ptr source_cursor[bp]
	add	di, word ptr screen_row_correction[bp]
	cmp	di, ax
	jb	short mode_one_row_in_bounds
	jmp	near ptr mode_one_done
mode_one_row_in_bounds label near
	push	cx
	call	sum_graphics_row_offsets_
	mov	ax, offset text_state_words
	mov	word ptr state_words_cursor[bp], ax
	mov	cx, word ptr column_count[bp]
mode_one_cell_loop label near
	push	cx
	call	count_graphics_mask_bits
	mov	bx, word ptr state_bytes_cursor[bp]
	mov	al, byte ptr [bx]
	and	al, byte ptr column_mask[bp]
	jne	short mode_one_cell_enabled
	jmp	near ptr mode_one_advance_cell
mode_one_cell_enabled label near
	mov	bx, word ptr state_words_cursor[bp]
	mov	al, byte ptr cs:[bx]
	cmp	al, 0ffh
	jne	short mode_one_draw_cell
	add	si, 40h
	jmp	near ptr mode_one_advance_cell
mode_one_draw_cell label near
	pushs	di,si
	mov	al, 80h
	mov	byte ptr row_mask[bp], al
	mov	cx, 8
mode_one_pixel_row_loop label near
	cmp	di, word ptr row_limit[bp]
	jb	short mode_one_pixel_row_in_bounds
	jmp	near ptr mode_one_pixel_rows_done
mode_one_pixel_row_in_bounds label near
	mov	bx, word ptr state_bytes_ptr[bp]
	mov	al, byte ptr cs:[bx]
	and	al, byte ptr row_mask[bp]
	je	short mode_one_pixel_unmasked
	jmp	near ptr mode_one_skip_masked_row
mode_one_pixel_unmasked label near
	pushs	cx,di
	mov	al, 80h
	mov	byte ptr pixel_mask[bp], al
	mov	cx, 8
mode_one_pixel_loop label near
	mov	bx, word ptr state_words_cursor[bp]
	mov	al, byte ptr cs:[bx]
	and	al, byte ptr pixel_mask[bp]
	jne	short mode_one_skip_masked_pixel
	mov	al, byte ptr [si]
	cmp	al, 0ffh
	je	short mode_one_advance_pixel
	cmp	byte ptr intensity_mode[bp], 2
	jne	short mode_one_normal_intensity_mode
	mov	al, byte ptr es:[di]
	mov	bx, offset intensity_limits
	add	bx, ax
	add	al, byte ptr [si]
	jb	short mode_one_saturate_intensity
	cmp	al, byte ptr cs:[bx]
	jb	short mode_one_write_pixel
mode_one_saturate_intensity label near
	mov	al, byte ptr cs:[bx]
	jmp	short mode_one_write_pixel
mode_one_normal_intensity_mode label near
	cmp	byte ptr intensity_adjust[bp], 0
	je	short mode_one_write_pixel
	mov	bx, offset intensity_limits
	add	bx, ax
	add	al, byte ptr intensity_adjust[bp]
	jb	short mode_one_saturate_adjusted_intensity
	cmp	al, byte ptr cs:[bx]
	jb	short mode_one_write_pixel
mode_one_saturate_adjusted_intensity label near
	mov	al, byte ptr cs:[bx]
mode_one_write_pixel label near
	mov	byte ptr es:[di], al
mode_one_advance_pixel label near
	inc	si
	dec	di
	ror	byte ptr pixel_mask[bp], 1
	loop	mode_one_pixel_loop
mode_one_next_scanline label near
	pops	di,cx
	add	di, 0140h
mode_one_next_pixel_row label near
	ror	byte ptr row_mask[bp], 1
	loop	mode_one_pixel_row_loop
	jmp	short mode_one_pixel_rows_done
mode_one_skip_masked_pixel label near
	inc	si
	ror	byte ptr pixel_mask[bp], 1
	loop	mode_one_pixel_loop
	jmp	short mode_one_next_scanline
mode_one_skip_masked_row label near
	add	si, 8
	jmp	short mode_one_next_pixel_row
mode_one_pixel_rows_done label near
	pop	si
	add	si, 40h
	pop	di
mode_one_advance_cell label near
	sub	di, 8
	add	di, word ptr screen_x_adjust[bp]
	rol	byte ptr column_mask[bp], 1
	cmp	byte ptr column_mask[bp], 1
	jne	short mode_one_next_column
	inc	word ptr state_bytes_cursor[bp]
mode_one_next_column label near
	inc	word ptr state_words_cursor[bp]
	pop	cx
	loop	mode_one_next_cell
	pop	cx
	add	word ptr source_cursor[bp], 0a00h
	mov	ax, word ptr screen_y_adjust[bp]
	sub	word ptr source_cursor[bp], ax
	inc	word ptr state_bytes_ptr[bp]
	mov	byte ptr row_mask_init[bp], 80h
	loop	mode_one_next_source_row
mode_one_done label near
	pop	es
	ret
mode_one_next_cell label near
	jmp	near ptr mode_one_cell_loop
mode_one_next_source_row label near
	jmp	near ptr mode_one_row_loop
graphics_mode_two label near
	mov	ax, word ptr row_count[bp]
	mov	cx, 0a00h
	mul	cx
	sub	ax, 0140h
	add	ax, word ptr initial_source_offset[bp]
	mov	word ptr source_cursor[bp], ax
	mov	si, word ptr [bx]
	add	si, bx
	mov	word ptr column_mask[bp], 1
	lea	ax, word ptr [bx + 4]
	mov	word ptr state_bytes_cursor[bp], ax
	mov	cx, word ptr row_count[bp]
	mov	byte ptr row_mask_init[bp], 80h
	mov	ax, word ptr source_y_offset[bp]
	add	word ptr source_cursor[bp], ax
	mov	ax, word ptr mode_two_y_origin[bp]
	mov	bx, 0140h
	mul	bx
	sub	word ptr source_cursor[bp], ax
mode_two_row_loop label near
	mov	ax, word ptr mode_row_limit[bp]
	mov	di, word ptr source_cursor[bp]
	cmp	ax, di
	jbe	short mode_two_row_in_bounds
	jmp	near ptr mode_two_done
mode_two_row_in_bounds label near
	push	cx
	call	sum_graphics_row_offsets_
	mov	ax, offset text_state_words
	mov	word ptr state_words_cursor[bp], ax
	mov	cx, word ptr column_count[bp]
mode_two_cell_loop label near
	push	cx
	call	count_graphics_mask_bits
	mov	bx, word ptr state_bytes_cursor[bp]
	mov	al, byte ptr [bx]
	and	al, byte ptr column_mask[bp]
	jne	short mode_two_cell_enabled
	jmp	near ptr mode_two_advance_cell
mode_two_cell_enabled label near
	mov	bx, word ptr state_words_cursor[bp]
	mov	al, byte ptr cs:[bx]
	cmp	al, 0ffh
	jne	short mode_two_draw_cell
	add	si, 40h
	jmp	near ptr mode_two_advance_cell
mode_two_draw_cell label near
	pushs	di,si
	mov	al, 80h
	mov	byte ptr row_mask[bp], al
	mov	cx, 8
mode_two_pixel_row_loop label near
	cmp	word ptr mode_row_limit[bp], di
	jbe	short mode_two_pixel_row_in_bounds
	jmp	near ptr mode_two_pixel_rows_done
mode_two_pixel_row_in_bounds label near
	mov	bx, word ptr state_bytes_ptr[bp]
	mov	al, byte ptr cs:[bx]
	and	al, byte ptr row_mask[bp]
	je	short mode_two_pixel_unmasked
	jmp	near ptr mode_two_skip_masked_row
mode_two_pixel_unmasked label near
	pushs	cx,di
	mov	al, 80h
	mov	byte ptr pixel_mask[bp], al
	mov	cx, 8
mode_two_pixel_loop label near
	mov	bx, word ptr state_words_cursor[bp]
	mov	al, byte ptr cs:[bx]
	and	al, byte ptr pixel_mask[bp]
	jne	short mode_two_skip_masked_pixel
	mov	al, byte ptr [si]
	cmp	al, 0ffh
	je	short mode_two_advance_pixel
	cmp	byte ptr intensity_mode[bp], 2
	jne	short mode_two_normal_intensity_mode
	mov	al, byte ptr es:[di]
	mov	bx, offset intensity_limits
	add	bx, ax
	add	al, byte ptr [si]
	jb	short mode_two_saturate_intensity
	cmp	al, byte ptr cs:[bx]
	jb	short mode_two_write_pixel
mode_two_saturate_intensity label near
	mov	al, byte ptr cs:[bx]
	jmp	short mode_two_write_pixel
mode_two_normal_intensity_mode label near
	cmp	byte ptr intensity_adjust[bp], 0
	je	short mode_two_write_pixel
	mov	bx, offset intensity_limits
	add	bx, ax
	add	al, byte ptr intensity_adjust[bp]
	jb	short mode_two_saturate_adjusted_intensity
	cmp	al, byte ptr cs:[bx]
	jb	short mode_two_write_pixel
mode_two_saturate_adjusted_intensity label near
	mov	al, byte ptr cs:[bx]
mode_two_write_pixel label near
	mov	byte ptr es:[di], al
mode_two_advance_pixel label near
	inc	si
	inc	di
	ror	byte ptr pixel_mask[bp], 1
	loop	mode_two_pixel_loop
mode_two_next_scanline label near
	pop	di
	sub	di, 0140h
	pop	cx
mode_two_next_pixel_row label near
	ror	byte ptr row_mask[bp], 1
	loop	mode_two_pixel_row_loop
	jmp	short mode_two_pixel_rows_done
mode_two_skip_masked_pixel label near
	inc	si
	ror	byte ptr pixel_mask[bp], 1
	loop	mode_two_pixel_loop
	jmp	short mode_two_next_scanline
mode_two_skip_masked_row label near
	add	si, 8
	jmp	short mode_two_next_pixel_row
mode_two_pixel_rows_done label near
	pop	si
	add	si, 40h
	pop	di
mode_two_advance_cell label near
	add	di, 8
	sub	di, word ptr screen_x_adjust[bp]
	rol	byte ptr column_mask[bp], 1
	cmp	byte ptr column_mask[bp], 1
	jne	short mode_two_next_column
	inc	word ptr state_bytes_cursor[bp]
mode_two_next_column label near
	inc	word ptr state_words_cursor[bp]
	pop	cx
	loop	mode_two_next_cell
	pop	cx
	sub	word ptr source_cursor[bp], 0a00h
	mov	ax, word ptr screen_y_adjust[bp]
	add	word ptr source_cursor[bp], ax
	inc	word ptr state_bytes_ptr[bp]
	mov	byte ptr row_mask_init[bp], 80h
	loop	mode_two_next_source_row
mode_two_done label near
	pop	es
	ret
mode_two_next_cell label near
	jmp	near ptr mode_two_cell_loop
mode_two_next_source_row label near
	jmp	near ptr mode_two_row_loop
graphics_mode_three label near
	mov	ax, word ptr row_count[bp]
	mov	cx, 0a00h
	mul	cx
	sub	ax, 0140h
	add	ax, word ptr initial_source_offset[bp]
	mov	word ptr source_cursor[bp], ax
	mov	si, word ptr [bx]
	add	si, bx
	mov	word ptr column_mask[bp], 1
	lea	ax, word ptr [bx + 4]
	mov	word ptr state_bytes_cursor[bp], ax
	mov	cx, word ptr row_count[bp]
	mov	byte ptr row_mask_init[bp], 80h
	mov	ax, word ptr mode_one_x_origin[bp]
	sub	word ptr source_cursor[bp], ax
	mov	ax, word ptr mode_two_y_origin[bp]
	mov	bx, 0140h
	mul	bx
	sub	word ptr source_cursor[bp], ax
mode_three_row_loop label near
	mov	ax, word ptr mode_row_limit[bp]
	mov	di, word ptr source_cursor[bp]
	add	di, word ptr screen_row_correction[bp]
	cmp	ax, di
	jb	short mode_three_row_in_bounds
	jmp	near ptr mode_three_done
mode_three_row_in_bounds label near
	push	cx
	call	sum_graphics_row_offsets_
	mov	ax, offset text_state_words
	mov	word ptr state_words_cursor[bp], ax
	mov	cx, word ptr column_count[bp]
mode_three_cell_loop label near
	push	cx
	call	count_graphics_mask_bits
	mov	bx, word ptr state_bytes_cursor[bp]
	mov	al, byte ptr [bx]
	and	al, byte ptr column_mask[bp]
	jne	short mode_three_cell_enabled
	jmp	near ptr mode_three_advance_cell
mode_three_cell_enabled label near
	mov	bx, word ptr state_words_cursor[bp]
	mov	al, byte ptr cs:[bx]
	cmp	al, 0ffh
	jne	short mode_three_draw_cell
	add	si, 40h
	jmp	near ptr mode_three_advance_cell
mode_three_draw_cell label near
	pushs	di,si
	mov	al, 80h
	mov	byte ptr row_mask[bp], al
	mov	cx, 8
mode_three_pixel_row_loop label near
	cmp	word ptr mode_row_limit[bp], di
	jbe	short mode_three_pixel_row_in_bounds
	jmp	near ptr mode_three_pixel_rows_done
mode_three_pixel_row_in_bounds label near
	mov	bx, word ptr state_bytes_ptr[bp]
	mov	al, byte ptr cs:[bx]
	and	al, byte ptr row_mask[bp]
	je	short mode_three_pixel_unmasked
	jmp	near ptr mode_three_skip_masked_row
mode_three_pixel_unmasked label near
	pushs	cx,di
	mov	al, 80h
	mov	byte ptr pixel_mask[bp], al
	mov	cx, 8
mode_three_pixel_loop label near
	mov	bx, word ptr state_words_cursor[bp]
	mov	al, byte ptr cs:[bx]
	and	al, byte ptr pixel_mask[bp]
	jne	short mode_three_skip_masked_pixel
	mov	al, byte ptr [si]
	cmp	al, 0ffh
	je	short mode_three_advance_pixel
	cmp	byte ptr intensity_mode[bp], 2
	jne	short mode_three_normal_intensity_mode
	mov	al, byte ptr es:[di]
	mov	bx, offset intensity_limits
	add	bx, ax
	add	al, byte ptr [si]
	jb	short mode_three_saturate_intensity
	cmp	al, byte ptr cs:[bx]
	jb	short mode_three_write_pixel
mode_three_saturate_intensity label near
	mov	al, byte ptr cs:[bx]
	jmp	short mode_three_write_pixel
mode_three_normal_intensity_mode label near
	cmp	byte ptr intensity_adjust[bp], 0
	je	short mode_three_write_pixel
	mov	bx, offset intensity_limits
	add	bx, ax
	add	al, byte ptr intensity_adjust[bp]
	jb	short mode_three_saturate_adjusted_intensity
	cmp	al, byte ptr cs:[bx]
	jb	short mode_three_write_pixel
mode_three_saturate_adjusted_intensity label near
	mov	al, byte ptr cs:[bx]
mode_three_write_pixel label near
	mov	byte ptr es:[di], al
mode_three_advance_pixel label near
	inc	si
	dec	di
	ror	byte ptr pixel_mask[bp], 1
	loop	mode_three_pixel_loop
mode_three_next_scanline label near
	pop	di
	sub	di, 0140h
	pop	cx
mode_three_next_pixel_row label near
	ror	byte ptr row_mask[bp], 1
	loop	mode_three_pixel_row_loop
	jmp	short mode_three_pixel_rows_done
mode_three_skip_masked_pixel label near
	inc	si
	ror	byte ptr pixel_mask[bp], 1
	loop	mode_three_pixel_loop
	jmp	short mode_three_next_scanline
mode_three_skip_masked_row label near
	add	si, 8
	jmp	short mode_three_next_pixel_row
mode_three_pixel_rows_done label near
	pop	si
	add	si, 40h
	pop	di
mode_three_advance_cell label near
	sub	di, 8
	add	di, word ptr screen_x_adjust[bp]
	rol	byte ptr column_mask[bp], 1
	cmp	byte ptr column_mask[bp], 1
	jne	short mode_three_next_column
	inc	word ptr state_bytes_cursor[bp]
mode_three_next_column label near
	inc	word ptr state_words_cursor[bp]
	pop	cx
	loop	mode_three_next_cell
	pop	cx
	sub	word ptr source_cursor[bp], 0a00h
	mov	ax, word ptr screen_y_adjust[bp]
	add	word ptr source_cursor[bp], ax
	inc	word ptr state_bytes_ptr[bp]
	mov	byte ptr row_mask_init[bp], 80h
	loop	mode_three_next_source_row
mode_three_done label near
	pop	es
	ret
mode_three_next_cell label near
	jmp	near ptr mode_three_cell_loop
mode_three_next_source_row label near
	jmp	near ptr mode_three_row_loop
	render_text_glyph_by_mode_ endp

codeseg	ends
	end
