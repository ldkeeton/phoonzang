	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	picture_slots:word
	extrn	maze_blocks:word
	extrn	maze_mem_seg:word
	extrn	text_state_words:word
	extrn	text_state_bytes:byte
	extrn	check_frame_index_:near
	extrn	render_text_glyph_by_mode_:near
	extrn	set_text_bitmap_bits_:near

picture_index	equ	0ch	; caller-selected picture record
screen_x	equ	0eh	; glyph origin on screen
screen_y	equ	10h	; glyph origin on screen
clip_x_start	equ	12h	; inclusive left clipping boundary
clip_x_end	equ	14h	; inclusive right clipping boundary
clip_y_start	equ	16h	; inclusive top clipping boundary
clip_y_end	equ	18h	; inclusive bottom clipping boundary
render_flags	equ	1ah	; glyph rendering and mask flags
text_offset	equ	1ch	; current byte offset in the text stream
text_speed_percent	equ	20h	; percentage used to build text masks
glyph_width	equ	-02h	; glyph width in eight-pixel units
glyph_height	equ	-04h	; glyph height in eight-row units
destination_row_offset	equ	-06h	; current destination row offset
text_data_segment	equ	-08h	; paragraph holding text glyph data
scratch_source_skip	equ	-0ah	; temporary source-row displacement
scratch_saved_word	equ	-12h	; word read from the start of the data segment
glyph_width_minus_one	equ	-1eh	; glyph row width minus one
clip_bottom_offset	equ	-22h	; bottom clipping boundary times screen pitch
clip_top_rows	equ	-24h	; rows clipped from the glyph top
clip_visible_columns	equ	-26h	; glyph columns remaining after clipping
clip_left_skip	equ	-28h	; glyph columns clipped on the left
clip_right_skip	equ	-2ah	; glyph columns clipped on the right
clip_visible_rows	equ	-2ch	; glyph rows remaining after clipping
clip_top_offset	equ	-2eh	; top clipping boundary times screen pitch
scratch_count	equ	-30h	; set bits or units counted by helper loops
scratch_source_offset	equ	-32h	; current source bitmap byte offset
scratch_remaining	equ	-34h	; temporary count threshold
saved_es	equ	-38h	; original extra segment register
saved_bx	equ	-3ah	; glyph descriptor pointer
scratch_word	equ	-3ch	; temporary word used in mask setup
scratch_width	equ	-3eh	; full glyph row width in pixels
scratch_total	equ	-40h	; accumulated clipped bitmap count

	public	draw_text
; Draw clipped text glyphs into the selected screen region.
draw_text proc near
	push bp
	mov bp, sp
	sub sp, 40h
	pushs	ds,es,si,di
	; Preserve the caller's data segment for string offsets and screen position.
	movseg	es,ds
	; Reject an inverted clipping rectangle before reading glyph data.
	mov ax, word ptr clip_x_end[bp]
	sub ax, word ptr clip_x_start[bp]
	jb short draw_text_back1
	mov ax, word ptr clip_y_end[bp]
	sub ax, word ptr clip_y_start[bp]
	jb short draw_text_back1
	mov ax, word ptr screen_y[bp]
	mov bx, 140h	; screen rows are 320 bytes apart
	mul bx
	add ax, word ptr screen_x[bp]
	mov word ptr destination_row_offset[bp], ax
	mov ax, word ptr picture_index[bp]
	shl ax, 1
	; Picture slots are words; maze block entries occupy four bytes.
	mov bx, offset picture_slots
	add bx, ax
	mov ax, word ptr cs:[bx]
	dec ax
	mov cl, 2
	shl ax, cl
	mov bx, offset maze_blocks
	add bx, ax
	mov ax, word ptr cs:[bx]
	add ax, word ptr cs:maze_mem_seg
	mov word ptr text_data_segment[bp], ax
	mov ds, ax
	xor bx, bx
	mov ax, word ptr [bx]
	mov word ptr scratch_saved_word[bp], ax
	mov si, word ptr text_offset[bp]
	mov bx, word ptr text_data_segment[bp]
	mov ds, bx
	xor ah, ah
	mov al, byte ptr ss:[si]
	or al, al
	; A NUL at the current text offset ends rendering.
	je short draw_text_back1
	call check_frame_index_
	xor ah, ah
	mov al, byte ptr [bx + 2]
	mov word ptr glyph_width[bp], ax
	mov cx, ax
	mov al, byte ptr [bx + 3]
	mov word ptr glyph_height[bp], ax
	or ax, cx
	; Zero glyph dimensions skip the drawing path.
	jne short draw_text_forward1
draw_text_back1:
	jmp near ptr draw_text_forward46
draw_text_forward1:
	mov word ptr saved_bx[bp], bx
	mov ax, es
	mov word ptr saved_es[bp], ax
	movseg	es,cs
	lea di, word ptr [text_state_words]
	xor ax, ax
	mov cx, 14h	; clear 20 words of prior text state
	rep stosw
	lea di, word ptr [text_state_bytes]
	mov cx, 19h	; clear 25 bytes of prior text state
	rep stosb
	mov bx, word ptr text_speed_percent[bp]
	or bx, bx
	jne short draw_text_forward2
	jmp near ptr draw_text_forward6
draw_text_forward2:
	; A zero speed value leaves the precomputed text masks empty.
	cmp bx, 64h
	jae short draw_text_back1
	mov ax, word ptr glyph_width[bp]
	mov cl, 3
	shl ax, cl
	mov cx, ax
	mov bx, word ptr text_speed_percent[bp]
	mul bx
	mov bx, 64h
	div bx
	; Round a fractional percentage up when its remainder reaches one half.
	cmp dx, 32h
	jb short draw_text_forward3
	inc ax
draw_text_forward3:
	or ax, ax
	je short draw_text_forward4
	xor dx, dx
	mov bx, ax
	mov word ptr scratch_remaining[bp], ax
	mov ax, cx
	div bx
	mov di, offset text_state_words
	mov bx, word ptr scratch_remaining[bp]
	shr bx, 1
	mov word ptr scratch_word[bp], bx
	mov si, ax
	dec si
	mov word ptr scratch_count[bp], ax
	mov word ptr scratch_source_offset[bp], cx
	call set_text_bitmap_bits_
draw_text_forward4:
	mov ax, word ptr glyph_height[bp]
	mov cl, 3
	shl ax, cl
	mov cx, ax
	mov bx, word ptr text_speed_percent[bp]
	mul bx
	mov bx, 64h
	div bx
	; Apply the same half-up rounding to the glyph height percentage.
	cmp dx, 32h
	jb short draw_text_forward5
	inc ax
draw_text_forward5:
	or ax, ax
	je short draw_text_forward6
	xor dx, dx
	mov bx, ax
	mov word ptr scratch_remaining[bp], ax
	mov ax, cx
	div bx
	mov di, offset text_state_bytes
	mov bx, word ptr scratch_remaining[bp]
	shr bx, 1
	mov word ptr scratch_word[bp], bx
	mov si, ax
	dec si
	mov word ptr scratch_count[bp], ax
	mov word ptr scratch_source_offset[bp], cx
	call set_text_bitmap_bits_
draw_text_forward6:
	mov bx, word ptr saved_bx[bp]
	movseg	es,<word ptr saved_es[bp]>
	; Convert the inclusive rectangle edges to clipped pixel counts.
	mov ax, word ptr clip_x_start[bp]
	sub ax, word ptr screen_x[bp]
	jge short draw_text_forward7
	xor ax, ax
draw_text_forward7:
	mov word ptr clip_left_skip[bp], ax
	mov ax, word ptr screen_x[bp]
	mov bx, word ptr glyph_width[bp]
	mov cl, 3
	shl bx, cl
	mov cx, bx
	dec bx
	mov word ptr glyph_width_minus_one[bp], bx
	add ax, bx
	inc ax
	sub ax, word ptr clip_x_end[bp]
	jge short draw_text_forward8
	xor ax, ax
draw_text_forward8:
	mov word ptr clip_right_skip[bp], ax
	add ax, word ptr clip_left_skip[bp]
	sub cx, ax
	ja short draw_text_forward9
	jmp near ptr draw_text_forward46
draw_text_forward9:
	; Compute the visible vertical span in glyph row units.
	mov word ptr clip_visible_columns[bp], cx
	mov ax, word ptr clip_y_start[bp]
	sub ax, word ptr screen_y[bp]
	jge short draw_text_forward10
	xor ax, ax
draw_text_forward10:
	mov word ptr clip_top_rows[bp], ax
	mov ax, word ptr screen_y[bp]
	mov bx, word ptr glyph_height[bp]
	mov cl, 3
	shl bx, cl
	mov cx, bx
	dec bx
	add ax, bx
	sub ax, word ptr clip_y_end[bp]
	jge short draw_text_forward11
	xor ax, ax
draw_text_forward11:
	mov word ptr clip_visible_rows[bp], ax
	add ax, word ptr clip_top_rows[bp]
	sub cx, ax
	ja short draw_text_forward12
	jmp near ptr draw_text_forward46
draw_text_forward12:
	mov ax, word ptr clip_y_end[bp]
	inc ax
	mov cx, 140h
	mul cx
	mov word ptr clip_bottom_offset[bp], ax
	mov ax, word ptr clip_y_start[bp]
	mov cx, 140h
	mul cx
	mov word ptr clip_top_offset[bp], ax
	; Flag bit 0 selects which horizontal edge mask is adjusted.
	mov ax, word ptr render_flags[bp]
	and al, 1
	je short draw_text_forward13
	jmp near ptr draw_text_forward24
draw_text_forward13:
	mov bx, word ptr glyph_width_minus_one[bp]
	inc bx
	mov word ptr scratch_width[bp], bx
	mov bx, offset text_state_words
	mov dl, 80h	; scan each mask byte from its high bit
	xor ax, ax
	mov word ptr scratch_count[bp], ax
	mov word ptr scratch_total[bp], ax
	mov cx, word ptr clip_left_skip[bp]
	or cx, cx
	je short draw_text_forward17
draw_text_back2:
	; Count existing bits in the clipped left portion.
	mov al, byte ptr cs:[bx]
	and al, dl
	jne short draw_text_forward14
	or byte ptr cs:[bx], dl
	jmp short draw_text_forward15
draw_text_forward14:
	inc word ptr scratch_count[bp]
	inc cx
draw_text_forward15:
	ror dl, 1
	cmp dl, 80h
	jne short draw_text_forward16
	inc bx
draw_text_forward16:
	loop draw_text_back2
draw_text_forward17:
	mov word ptr scratch_source_offset[bp], bx
	mov ax, word ptr scratch_count[bp]
	mov word ptr scratch_total[bp], ax
	add ax, word ptr clip_left_skip[bp]
	mov bx, word ptr scratch_width[bp]
	cmp bx, ax
	ja short draw_text_forward18
	jmp near ptr draw_text_forward46
draw_text_forward18:
	sub bx, ax
	xor ax, ax
	mov word ptr scratch_count[bp], ax
	sub bx, word ptr clip_visible_columns[bp]
	jbe short draw_text_forward23
	mov word ptr scratch_remaining[bp], bx
	mov cx, word ptr clip_visible_columns[bp]
	mov bx, word ptr scratch_source_offset[bp]
draw_text_back3:
	; Scan visible columns and count existing mask bits.
	mov al, byte ptr cs:[bx]
	and al, dl
	je short draw_text_forward19
	inc word ptr scratch_count[bp]
	mov ax, word ptr scratch_count[bp]
	cmp ax, word ptr scratch_remaining[bp]
	je short draw_text_forward21
	inc cx
draw_text_forward19:
	ror dl, 1
	cmp dl, 80h
	jne short draw_text_forward20
	inc bx
draw_text_forward20:
	loop draw_text_back3
draw_text_forward21:
	mov word ptr scratch_source_offset[bp], bx
	mov ax, word ptr scratch_count[bp]
	add ax, word ptr scratch_total[bp]
	add ax, word ptr clip_left_skip[bp]
	add ax, word ptr clip_visible_columns[bp]
	mov cx, word ptr scratch_width[bp]
	sub cx, ax
	jbe short draw_text_forward23
	mov bx, word ptr scratch_source_offset[bp]
draw_text_back4:
	; Set remaining mask bits after the visible columns.
	or byte ptr cs:[bx], dl
	ror dl, 1
	cmp dl, 80h
	jne short draw_text_forward22
	inc bx
draw_text_forward22:
	loop draw_text_back4
draw_text_forward23:
	jmp near ptr draw_text_forward34
draw_text_forward24:
	mov bx, word ptr glyph_width_minus_one[bp]
	inc bx
	mov word ptr scratch_width[bp], bx
	mov bx, offset text_state_words
	mov dl, 80h	; scan each mask byte from its high bit
	xor ax, ax
	mov word ptr scratch_count[bp], ax
	mov word ptr scratch_total[bp], ax
	mov cx, word ptr clip_right_skip[bp]
	or cx, cx
	je short draw_text_forward28
draw_text_back5:
	; Set mask bits in the clipped right portion before visible columns.
	mov al, byte ptr cs:[bx]
	and al, dl
	jne short draw_text_forward25
	or byte ptr cs:[bx], dl
	jmp short draw_text_forward26
draw_text_forward25:
	inc word ptr scratch_count[bp]
	inc cx
draw_text_forward26:
	ror dl, 1
	cmp dl, 80h
	jne short draw_text_forward27
	inc bx
draw_text_forward27:
	loop draw_text_back5
draw_text_forward28:
	mov word ptr scratch_source_offset[bp], bx
	mov ax, word ptr scratch_count[bp]
	mov word ptr scratch_total[bp], ax
	add ax, word ptr clip_right_skip[bp]
	mov bx, word ptr scratch_width[bp]
	cmp bx, ax
	ja short draw_text_forward29
	jmp near ptr draw_text_forward46
draw_text_forward29:
	sub bx, ax
	xor ax, ax
	mov word ptr scratch_count[bp], ax
	sub bx, word ptr clip_visible_columns[bp]
	jbe short draw_text_forward34
	mov word ptr scratch_remaining[bp], bx
	mov cx, word ptr clip_visible_columns[bp]
	mov bx, word ptr scratch_source_offset[bp]
draw_text_back6:
	; Scan visible columns and count existing mask bits.
	mov al, byte ptr cs:[bx]
	and al, dl
	je short draw_text_forward30
	inc word ptr scratch_count[bp]
	mov ax, word ptr scratch_count[bp]
	cmp ax, word ptr scratch_remaining[bp]
	je short draw_text_forward32
	inc cx
draw_text_forward30:
	ror dl, 1
	cmp dl, 80h
	jne short draw_text_forward31
	inc bx
draw_text_forward31:
	loop draw_text_back6
draw_text_forward32:
	mov word ptr scratch_source_offset[bp], bx
	mov ax, word ptr scratch_count[bp]
	add ax, word ptr scratch_total[bp]
	add ax, word ptr clip_right_skip[bp]
	add ax, word ptr clip_visible_columns[bp]
	mov cx, word ptr scratch_width[bp]
	sub cx, ax
	jbe short draw_text_forward34
	mov bx, word ptr scratch_source_offset[bp]
draw_text_back7:
	; Set remaining mask bits after the visible columns.
	or byte ptr cs:[bx], dl
	ror dl, 1
	cmp dl, 80h
	jne short draw_text_forward33
	inc bx
draw_text_forward33:
	loop draw_text_back7
draw_text_forward34:
	; Flag bit 1 selects which vertical edge mask is adjusted.
	mov ax, word ptr render_flags[bp]
	and al, 2
	jne short draw_text_forward40
	mov bx, offset text_state_bytes
	mov dl, 80h
	xor ax, ax
	mov word ptr scratch_count[bp], ax
	mov word ptr scratch_total[bp], ax
	mov cx, word ptr clip_top_rows[bp]
	or cx, cx
	je short draw_text_forward38
draw_text_back8:
	; Count existing bits in the clipped top rows.
	mov al, byte ptr cs:[bx]
	and al, dl
	jne short draw_text_forward35
	or byte ptr cs:[bx], dl
	jmp short draw_text_forward36
draw_text_forward35:
	inc word ptr scratch_count[bp]
	inc cx
draw_text_forward36:
	ror dl, 1
	cmp dl, 80h
	jne short draw_text_forward37
	inc bx
draw_text_forward37:
	loop draw_text_back8
draw_text_forward38:
	mov ax, word ptr scratch_count[bp]
	mov word ptr scratch_total[bp], ax
	add ax, word ptr clip_top_rows[bp]
	mov bx, word ptr glyph_height[bp]
	mov cl, 3
	shl bx, cl
	cmp bx, ax
	ja short draw_text_forward39
	jmp near ptr draw_text_forward46
draw_text_forward39:
	jmp short draw_text_forward45
draw_text_forward40:
	mov bx, offset text_state_bytes
	mov dl, 80h
	xor ax, ax
	mov word ptr scratch_count[bp], ax
	mov word ptr scratch_total[bp], ax
	mov cx, word ptr clip_visible_rows[bp]
	or cx, cx
	je short draw_text_forward44
draw_text_back9:
	; Set mask bits in the clipped bottom rows.
	mov al, byte ptr cs:[bx]
	and al, dl
	jne short draw_text_forward41
	or byte ptr cs:[bx], dl
	jmp short draw_text_forward42
draw_text_forward41:
	inc word ptr scratch_count[bp]
	inc cx
draw_text_forward42:
	ror dl, 1
	cmp dl, 80h
	jne short draw_text_forward43
	inc bx
draw_text_forward43:
	loop draw_text_back9
draw_text_forward44:
	mov ax, word ptr scratch_count[bp]
	add ax, word ptr clip_visible_rows[bp]
	mov bx, word ptr glyph_height[bp]
	mov cl, 3
	shl bx, cl
	cmp bx, ax
	jbe short draw_text_forward46
draw_text_forward45:
	mov ax, word ptr text_speed_percent[bp]
	mov bl, 0ch	; derive the character delay from twelve speed steps
	div bl
	xor ah, ah
	mov word ptr scratch_count[bp], ax
draw_text_back10:
	mov si, word ptr text_offset[bp]
	mov bx, word ptr text_data_segment[bp]
	mov ds, bx
	xor ah, ah
	mov al, byte ptr ss:[si]
	or al, al
	je short draw_text_forward46
	call check_frame_index_
	call render_text_glyph_by_mode_
	inc word ptr text_offset[bp]
	jmp short draw_text_back10
draw_text_forward46:
	pops	di,si,es,ds
	mov sp, bp
	pop bp
	ret
draw_text endp
codeseg ends
	end
