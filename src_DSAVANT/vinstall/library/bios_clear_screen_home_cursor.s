; Clear the BIOS text display and reset its cursor to the upper-left corner.
	include lmacros.h
	dataseg segment para public 'data'
	extrn clear_attribute_:byte
	dataseg ends
	assume ds:dataseg

	public bios_clear_screen_home_cursor_
bios_clear_screen_home_cursor_ proc near
	push bp
	mov bp,sp
	pushs di,si
	mov ax,0600h	; Scroll the selected full-screen region upward by zero lines.
	mov bh,clear_attribute_
	xor cx,cx	; Clear from row 0, column 0.
	mov dx,184fh	; The bottom-right cell is row 24, column 79.
	push bp		; Preserve the caller frame across the BIOS call.
	int 10h
	pop bp
	mov ah,2	; Select the BIOS cursor-position service.
	xor dx,dx
	mov bx,dx
	int 10h
	pops si,di
	mov sp,bp	; Restore the caller's stack frame.
	pop bp
	ret
	pend bios_clear_screen_home_cursor
	finish
	end
