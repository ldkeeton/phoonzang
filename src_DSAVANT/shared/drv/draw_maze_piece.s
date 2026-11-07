	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	maze_map_slots:word
	extrn	maze_blocks:word
	extrn	screen_buf_seg:word
	extrn	maze_mem_seg:word
	extrn	maze_piece_table:word
	extrn	maze_piece_descriptors:word

; Stack arguments and scratch slots used while selecting and drawing a maze piece.
map_slot_id	equ	0ch	; selected MAZE map slot
maze_row_index	equ	0eh	; row or piece index supplied by the caller
draw_mode	equ	10h	; pixel composition mode supplied by the caller
piece_index	equ	12h	; piece index supplied by the caller
maze_block_paragraph	equ	-2	; paragraph offset of the selected block
map_slot_offset	equ	-4	; byte offset of the selected map slot
row_width_bytes	equ	-6	; source row stride used by the draw loops

	public	draw_maze_piece_
; Draw the selected maze piece using the caller-selected composition mode.
draw_maze_piece_ proc near
	push bp
	mov bp, sp
	sub sp, 0Eh
	pushs	ds,es,di,si
	movseg	es,ds
	cld
	mov ax, word ptr map_slot_id[bp]
	; Each entry in the map-slot table is a word.
	shl ax, 1
	mov word ptr map_slot_offset[bp], ax
	mov bx, offset maze_map_slots
	add bx, ax
	mov bx, word ptr cs:[bx]
	or bx, bx
	; A zero slot falls into the adjacent DOS error path; nonzero skips it.
	jne short draw_maze_piece_forward1
loc_14fb:
	fatal	cseg_150b	; DOS string output; DOS function dispatcher
cseg_150b label byte
	db	0Dh, 0Ah, 07h
	db	'MAZE SET ERROR.', 0
	db	0Ah, 24h
draw_maze_piece_forward1:
	dec bx
	; Maze block entries occupy four bytes each.
	mov cl, 2
	shl bx, cl
	add bx, offset maze_blocks
	mov ax, word ptr cs:[bx]
	mov word ptr maze_block_paragraph[bp], ax
	mov ax, word ptr piece_index[bp]
	; 0xffff is the special piece index handled by the first lookup path.
	cmp ax, 0FFFFh
	je short draw_maze_piece_forward2
	jmp near ptr draw_maze_piece_forward8
draw_maze_piece_forward2:
	mov bx, word ptr maze_row_index[bp]
	; The indexed table entries use a five-byte stride.
	mov ax, 5
	mul bx
	mov bx, word ptr map_slot_offset[bp]
	; 0x27d is the fixed base offset used for indexed maze data.
	add bx, offset maze_piece_descriptors	; piece id * 6 -> its descriptor
	add ax, word ptr cs:[bx]
	mov si, ax
	movseg	es,<word ptr cs:screen_buf_seg>
	mov ax, word ptr cs:maze_mem_seg
	add ax, word ptr maze_block_paragraph[bp]
	mov ds, ax
	xor ah, ah
	mov al, byte ptr [si + 4]
	or ax, ax
	jne short draw_maze_piece_forward3
	jmp near ptr draw_maze_piece_forward13
draw_maze_piece_forward3:
	; Convert the loaded row count from eight-pixel units to bytes.
	mov cl, 3
	shl ax, cl
	mov word ptr map_slot_offset[bp], ax
	mov al, byte ptr [si + 1]
	cbw
	mov bl, byte ptr [si + 3]
	xor bh, bh
	add ax, bx
	mov cl, 3
	shl ax, cl
	mov di, ax
	mov al, byte ptr [si + 2]
	; Screen rows are 0x140 bytes apart.
	mov cx, 140h
	mul cx
	add di, ax
	mov al, byte ptr [si]
	; Maze-piece table records occupy six bytes each.
	mov bl, 6
	mul bl
	add ax, word ptr cs:maze_piece_table
	mov bx, ax
	xor ax, ax
	mov al, byte ptr [bx + 4]
	mov cl, 3
	shl ax, cl
	mov word ptr row_width_bytes[bp], ax
	mov ax, word ptr [bx + 2]
	mov dl, byte ptr [si + 3]
	xor dh, dh
	shl dx, 1
	shl dx, 1
	shl dx, 1
	add ax, dx
	xor cx, cx
	mov cl, byte ptr [bx + 5]
	mov dx, ds
	add dx, word ptr [bx]
	mov ds, dx
draw_maze_piece_back1:
	; Draw each source row using the selected composition mode.
	push cx
	mov cx, word ptr map_slot_offset[bp]
	pushs	si,ax,di
	xchg si, ax
	xor ah, ah
	; Modes 0, 2, and 3 select specialized row loops below.
	cmp word ptr draw_mode[bp], 0
	je short draw_maze_piece_forward6
	cmp word ptr draw_mode[bp], 2
	je short draw_maze_piece_back4
	cmp word ptr draw_mode[bp], 3
	je short draw_maze_piece_back3
draw_maze_piece_back2:
	; Mode 1 combines source and screen bytes with OR.
	lodsb
	or al, byte ptr es:[di]
	stosb
	loop draw_maze_piece_back2
	jmp short draw_maze_piece_forward7
draw_maze_piece_back3:
	; A 0xff source byte leaves the destination unchanged in mode 3.
	lodsb
	cmp al, 0FFh
	je short draw_maze_piece_forward4
	mov byte ptr es:[di], ah
draw_maze_piece_forward4:
	inc di
	loop draw_maze_piece_back3
	jmp short draw_maze_piece_forward7
draw_maze_piece_back4:
	; A 0xff source byte leaves the destination unchanged in mode 2.
	lodsb
	cmp al, 0FFh
	je short draw_maze_piece_forward5
	mov byte ptr es:[di], al
draw_maze_piece_forward5:
	inc di
	loop draw_maze_piece_back4
	jmp short draw_maze_piece_forward7
draw_maze_piece_forward6:
	rep movsb
draw_maze_piece_forward7:
	pop di
	; Advance the destination to the next screen row.
	add di, 140h
	pop ax
	mov dx, word ptr row_width_bytes[bp]
	add ax, dx
	pops	si,cx
	loop draw_maze_piece_back1
	jmp near ptr draw_maze_piece_forward13
draw_maze_piece_forward8:
	mov bx, word ptr maze_row_index[bp]
	; The indexed table entries use a five-byte stride.
	mov ax, 5
	mul bx
	mov bx, word ptr map_slot_offset[bp]
	; Use the same fixed base offset for the indexed maze data.
	add bx, offset maze_piece_descriptors	; piece id * 6 -> its descriptor
	add ax, word ptr cs:[bx]
	mov si, ax
	movseg	es,<word ptr cs:screen_buf_seg>
	mov ax, word ptr cs:maze_mem_seg
	add ax, word ptr maze_block_paragraph[bp]
	mov ds, ax
	mov al, byte ptr [si]
	mov bl, 6
	mul bl
	add ax, word ptr cs:maze_piece_table
	mov word ptr maze_block_paragraph[bp], ax
	mov ax, word ptr piece_index[bp]
	; The indexed table entries use a five-byte stride.
	mov bx, 5
	mul bx
	mov bx, word ptr map_slot_offset[bp]
	add bx, offset maze_piece_descriptors	; piece id * 6 -> its descriptor
	add ax, word ptr cs:[bx]
	mov si, ax
	xor ah, ah
	mov al, byte ptr [si + 4]
	or ax, ax
	jne short draw_maze_piece_forward9
	jmp near ptr draw_maze_piece_forward13
draw_maze_piece_forward9:
	; Convert the loaded row count from eight-pixel units to bytes.
	mov cl, 3
	shl ax, cl
	mov word ptr map_slot_offset[bp], ax
	mov al, byte ptr [si + 1]
	cbw
	mov bl, byte ptr [si + 3]
	xor bh, bh
	add ax, bx
	mov cl, 3
	shl ax, cl
	mov di, ax
	mov al, byte ptr [si + 2]
	; Screen rows are 0x140 bytes apart.
	mov cx, 140h
	mul cx
	add di, ax
	mov bx, word ptr maze_block_paragraph[bp]
	xor ax, ax
	mov al, byte ptr [bx + 4]
	mov cl, 3
	shl ax, cl
	mov word ptr row_width_bytes[bp], ax
	mov cl, 3
	mov ax, word ptr [bx + 2]
	xor dh, dh
	mov dl, byte ptr [bx + 4]
	shl dx, cl
	dec dx
	add ax, dx
	xor dx, dx
	mov dl, byte ptr [si + 3]
	shl dx, cl
	sub ax, dx
	xor cx, cx
	mov cl, byte ptr [bx + 5]
	mov dx, ds
	add dx, word ptr [bx]
	mov ds, dx
draw_maze_piece_back5:
	; Draw each source row in reverse order for the alternate piece path.
	push cx
	mov cx, word ptr map_slot_offset[bp]
	pushs	si,ax,di
	xchg si, ax
	xor ah, ah
	; Modes 0, 2, and 3 select specialized reverse row loops below.
	cmp word ptr draw_mode[bp], 0
	je short draw_maze_piece_back9
	cmp word ptr draw_mode[bp], 2
	je short draw_maze_piece_back8
	cmp word ptr draw_mode[bp], 3
	je short draw_maze_piece_back7
draw_maze_piece_back6:
	; Mode 1 combines source and screen bytes with OR.
	mov al, byte ptr [si]
	dec si
	or al, byte ptr es:[di]
	stosb
	loop draw_maze_piece_back6
	jmp short draw_maze_piece_forward12
draw_maze_piece_back7:
	; A 0xff source byte leaves the destination unchanged in mode 3.
	mov al, byte ptr [si]
	dec si
	cmp al, 0FFh
	je short draw_maze_piece_forward10
	mov byte ptr es:[di], ah
draw_maze_piece_forward10:
	inc di
	loop draw_maze_piece_back7
	jmp short draw_maze_piece_forward12
draw_maze_piece_back8:
	; A 0xff source byte leaves the destination unchanged in mode 2.
	mov al, byte ptr [si]
	dec si
	cmp al, 0FFh
	je short draw_maze_piece_forward11
	mov byte ptr es:[di], al
draw_maze_piece_forward11:
	inc di
	loop draw_maze_piece_back8
	jmp short draw_maze_piece_forward12
draw_maze_piece_back9:
	mov al, byte ptr [si]
	dec si
	stosb
	loop draw_maze_piece_back9
draw_maze_piece_forward12:
	pop di
	; Advance the destination to the next screen row.
	add di, 140h
	pop ax
	mov dx, word ptr row_width_bytes[bp]
	add ax, dx
	pops	si,cx
	loop draw_maze_piece_back5
draw_maze_piece_forward13:
	pops	si,di,es,ds
	mov sp, bp
	pop bp
	ret
draw_maze_piece_ endp
codeseg ends
	end
