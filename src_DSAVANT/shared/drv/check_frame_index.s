	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; Divide frame and slot indices into decimal digits before reporting overflow.
slot_number	equ	0ch	; caller frame: current slot index
frame_limit	equ	-12h	; caller frame: largest accepted frame index

	public	check_frame_index_
check_frame_index_ proc near
	dec	ax
	cmp	ax,word ptr frame_limit[bp]
	jb	short table_entry_ptr	; below the limit: return the table entry
	mov	bl,0ah
	div	bl
	or	byte ptr cs:frame_digit_tens,al
	or	byte ptr cs:frame_digit_ones,dl
	mov	ax,word ptr slot_number[bp]
	mov	bl,0ah
	div	bl
	or	byte ptr cs:slot_digit_tens,al
	or	byte ptr cs:slot_digit_ones,dl
	mov	bx,cs
	mov	ds,bx
	mov	dx,offset frame_too_big_message
	dos	9	; DOS string output
	dosx	4c01h	; DOS function dispatcher
check_frame_index_ endp

frame_too_big_message db 0dh,0ah,07h
	db	'Frame '
frame_digit_tens db 30h
frame_digit_ones label byte
	db	'0 too big in slot '
slot_digit_tens db 30h
slot_digit_ones db 30h,2eh,0,0ah,'$'

table_entry_ptr label near
	mov	cl,2
	shl	al,cl
	mov	bx,2
	add	bx,ax
	mov	ax,word ptr [bx]
	mov	dx,word ptr 2[bx]
	mov	bx,ds
	add	bx,dx
	mov	ds,bx
	mov	bx,ax
	ret
	finish
	end
