; Write text through INT 10h using the alternate text attribute.
	include lmacros.h

	dataseg segment para public 'data'
	extrn alt_text_attribute_:byte
	dataseg ends
	assume ds:dataseg

	procdef bios_put_text_alt_attr,<<text_ptr,word>>
	pushs di,si
	mov bx,text_ptr
.text_loop:
	mov al,byte ptr [bx]
	; A zero byte terminates the input string.
	or al,al
	je short .text_done
		push bx
		.if al == 10
		; Newline advances the row and resets the column.
			mov ah,3
			mov bh,0
			int 10h
			mov dl,0
			inc dh
			mov ah,3
			mov bh,0
			video	2
		.else short
		; Write one character, then advance the BIOS cursor column.
			mov ah,9
			mov bl,byte ptr alt_text_attribute_
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
	pend bios_put_text_alt_attr
	finish
	end
