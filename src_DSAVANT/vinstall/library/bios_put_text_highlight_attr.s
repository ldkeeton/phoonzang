; Write a zero-terminated string using BIOS text output and cursor services.
include lmacros.h

dataseg segment para public 'data'
	extrn highlight_text_attribute:byte
dataseg ends
	assume ds:dataseg

procdef bios_put_text_highlight_attr,<<text_ptr,word>>
	pushs	di,si
	mov bx,text_ptr
.loop:
	mov al,byte ptr [bx]
	or al,al
	je short .done	; Stop at the string terminator.
	push bx
	cmp al,0ah
	jne short .write_char	; Ordinary characters use the current attribute.
	mov ah,3
	mov bh,0
	int 10h	; Read the current cursor position.
	mov dl,0	; Newline returns to column zero.
	inc dh	; Move to the next row.
	mov ah,3
	mov bh,0
	video	2	; Set the updated cursor position.
	jmp short .next_char
.write_char:
	mov ah,9
	mov bl,byte ptr highlight_text_attribute
	mov bh,0
	mov cx,1
	int 10h	; Write one character with the selected attribute.
	mov ah,3
	mov bh,0
	int 10h	; Read the cursor after writing the character.
	inc dl	; Advance one column.
	mov ah,3
	mov bh,0
	video	2	; Set the updated cursor position.
.next_char:
	pop bx
	inc bx
	jmp short .loop	; Process the next character.
.done:
	pops	si,di
	mov sp,bp
	pret
pend bios_put_text_highlight_attr
finish
end
