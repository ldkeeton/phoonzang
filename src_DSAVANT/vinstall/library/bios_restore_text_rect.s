	; :ts=8
	include lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	public	bios_restore_text_rect_

text_buffer_ptr	equ	4[bp]
rows_remaining	equ	-2[bp]

; Restore the saved character and attribute cells to their recorded screen positions.
bios_restore_text_rect_	proc	near
	push	bp
	mov	bp,sp
	sub	sp,2
	pushs	di,si
	mov	bx,word ptr text_buffer_ptr
	mov	dx,word ptr [bx]
	push	dx
	mov	word ptr text_buffer_ptr,dx
	add	bx,2
	mov	cx,word ptr [bx]
	mov	word ptr rows_remaining,cx
	add	bx,2
	mov	cx,word ptr [bx]
	add	bx,2
	push	cx
; Each row restores the saved cells and advances the BIOS cursor one row.
back1:
	mov	si,cx
	mov	di,bx
	mov	dx,word ptr text_buffer_ptr
	inc	word ptr text_buffer_ptr
	xor	bx,bx
	video	2
	mov	bx,di
	mov	ax,word ptr [bx]
	mov	bl,ah
	mov	bh,0
	mov	cx,1
	video	9
	mov	bx,di
	add	bx,2
	mov	cx,si
	loop	back1
	pops	cx,dx
	inc	dh
	dec	word ptr rows_remaining
	je	short forward1
; Continue with the next row at the incremented cursor position.
	pushs	dx,cx
	jmp	short back1
forward1:
	pops	si,di
	mov	sp,bp
	pop	bp
	ret
bios_restore_text_rect_	endp
codeseg	ends
	end
