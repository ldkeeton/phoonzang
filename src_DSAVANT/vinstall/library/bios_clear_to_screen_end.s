; Clear the text cells from the supplied cursor position to the end of the screen.
	include lmacros.h
	dataseg segment para public 'data'
	extrn clear_attribute_:byte
	dataseg ends
	assume ds:dataseg
	procdef bios_clear_to_screen_end,<<row,word>,<column,word>>
	pushs	di,si
	mov bx,row
	mov dx,column
	pushs	bx,dx
	mov dh,bl
	mov bh,0
	video	2	; Set the BIOS cursor to row and column.
	mov ax,50h		; Screen width in text cells.
	pop bx
	sub ax,bx		; Cells remaining on the starting row.
	mov si,ax
	mov ax,18h		; Last screen row index.
	pop bx
	sub ax,bx		; Rows below the starting row.
	mov bl,50h		; Screen width in text cells.
	imul bl
	add ax,si
	mov cx,ax
	mov ax,920h		; BIOS AH=09h writes a space with an attribute.
	mov bl,clear_attribute_
	mov bh,0
	int 10h			; Fill CX cells with the selected attribute.
	pops	si,di
	mov sp,bp		; Restore the stack pointer to the frame.
	pret
	pend bios_clear_to_screen_end
	finish
	end
