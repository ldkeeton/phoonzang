; Write a zero-terminated string through INT 10h using the current text attribute.
	include lmacros.h

	dataseg segment para public 'data'
	extrn put_text_attribute:byte
	dataseg ends
	assume ds:dataseg

	procdef bios_put_text,<<text_ptr,word>>
	pushs di,si
	mov bx,text_ptr
.text_loop:
	mov al,byte ptr [bx]
	; A zero byte terminates the input string.
	or al,al
	je short .text_done
		push bx
		.if al == 10
		; Newline resets the column and advances the row.
			mov ah,3
			mov bh,0
			int 10h
			mov dl,0
			inc dh
			mov ah,3
			mov bh,0
			video	2
		.else short
		; Write one character with the current attribute, then advance the column.
			mov ah,9
			mov bl,byte ptr put_text_attribute
			mov bh,0
			mov cx,1
			int 10h
			mov ah,3
			mov bh,0
			int 10h
			inc dl
			mov ah,3
			mov bh,0
			video	2
		.endif
		pop bx
		inc bx
	jmp short .text_loop
.text_done:
	pops si,di
	mov sp,bp
	pret
	pend bios_put_text
	finish
	end
