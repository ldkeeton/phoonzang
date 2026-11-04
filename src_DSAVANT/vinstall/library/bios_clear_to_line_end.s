; Move the BIOS cursor to the supplied row and column, then fill to column 80.
	include lmacros.h
	dataseg segment para public 'data'
	extrn clear_attribute:byte
	dataseg ends
	assume ds:dataseg

	procdef bios_clear_to_line_end,<<row,word>,<column,word>>
	pushs	di,si
	mov bx,row
	mov dx,column
	push dx		; Preserve the column across the cursor-position BIOS call.
	mov dh,bl		; The BIOS cursor call takes the row in DH.
	mov bh,0
	video	2	; Set the cursor to the supplied row and column.
	mov ax,50h		; There are 80 text columns per row.
	pop bx		; Recover the starting column.
	sub ax,bx		; Number of cells remaining through column 79.
	mov cx,ax
	mov ax,920h		; BIOS AH=09h writes a space with an attribute.
	mov bl,clear_attribute
	mov bh,0
	int 10h		; Fill CX cells using the selected text attribute.
	pops	si,di
	mov sp,bp		; Restore the stack pointer to the frame.
	pret
	pend bios_clear_to_line_end
	finish
	end
