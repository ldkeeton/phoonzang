	; :ts=8
	include lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	dos_con_in_noecho_:near
	extrn	aztec_toupper_:near
	public	normalize_input_key_

; Read a key when requested and map cursor scan codes to input control codes.
normalize_input_key_ proc near
input_key	equ	word ptr 4[bp]
read_key	equ	word ptr -2[bp]
	push	bp
	mov	bp,sp
	add	sp,-2
	cmp	input_key,0
	; A zero argument requests a fresh key; a nonzero one is uppercased.
	jne	short input_is_supplied
	call	dos_con_in_noecho_
	mov	read_key,ax
	jmp	short map_cursor_scan_code
return_left:
	; The left scan code maps to 8.
	mov	ax,8
return_key:
	mov	sp,bp
	pop	bp
	ret
return_up:
	; The up scan code maps to 9.
	mov	ax,9
	jmp	short return_key
return_right:
	; The right scan code maps to 10.
	mov	ax,0ah
	jmp	short return_key
return_down:
	; The down scan code maps to 11.
	mov	ax,0bh
	jmp	short return_key
map_cursor_scan_code:
	; Translate BIOS cursor scan codes; other values pass through.
	cmp	ax,48h
	je	short return_up
	cmp	ax,4bh
	je	short return_left
	cmp	ax,4dh
	je	short return_right
	cmp	ax,50h
	je	short return_down
	jmp	short fallback_return
input_is_supplied:
	push	input_key
	call	aztec_toupper_
	pop	cx
	jmp	short return_key
fallback_return:
	; Keep the recorded fall-through path pointed at the shared return.
	jmp	short return_key
normalize_input_key_ endp
codeseg	ends
	end
