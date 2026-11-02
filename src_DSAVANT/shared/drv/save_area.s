	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	screen_buf_seg:word

; Stack arguments and locals used while saving the selected screen rectangle.
left_column		equ	0ch	; stack argument: left edge of the rectangle
top_row			equ	0eh	; stack argument: top edge of the rectangle
right_column		equ	10h	; stack argument: right edge of the rectangle
bottom_row		equ	12h	; stack argument: bottom edge of the rectangle
screen_row_offset	equ	-2	; next source row in the screen buffer
rectangle_height	equ	-4	; number of rows to save
rectangle_width	equ	-6	; bytes copied from each row
size_low_word		equ	-8	; low word of the rectangle byte count
size_high_word		equ	-0ah	; high word of the rectangle byte count

	public	save_area_
save_area_ proc near
	push	bp
	mov	bp,sp
	sub	sp,0ah
	pushs	es,ds,di,si
	movseg	es,ds
	mov	ax,word ptr right_column[bp]
	sub	ax,word ptr left_column[bp]
	inc	ax
	mov	word ptr rectangle_width[bp],ax
	mov	bx,word ptr bottom_row[bp]
	sub	bx,word ptr top_row[bp]
	inc	bx
	mov	word ptr rectangle_height[bp],bx
	mul	bx
	mov	word ptr size_low_word[bp],ax
	mov	word ptr size_high_word[bp],dx
	; Add the six-word header, then round the allocation up to paragraphs.
	add	ax,0ch
	add	ax,0fh
	mov	cl,4
	shr	ax,cl
	mov	bx,ax
	dos	48h
	jae	short save_area_memory_allocated
	jmp	near ptr save_area_out_of_memory
save_area_memory_allocated:
	mov	es,ax
	xor	di,di
	movseg	ds,<word ptr cs:screen_buf_seg>
	mov	ax,word ptr top_row[bp]
	mov	bx,140h	; Screen rows are separated by 320 bytes.
	mul	bx
	add	ax,word ptr left_column[bp]
	mov	word ptr screen_row_offset[bp],ax
	stosw
	xor	ax,ax
	stosw
	mov	ax,word ptr rectangle_height[bp]
	stosw
	mov	ax,word ptr rectangle_width[bp]
	stosw
	mov	ax,word ptr size_low_word[bp]
	stosw
	mov	ax,word ptr size_high_word[bp]
	stosw
save_area_copy_row:
	; Copy the requested width, then advance to the next screen row.
	mov	si,word ptr screen_row_offset[bp]
	add	word ptr screen_row_offset[bp],140h
	mov	cx,word ptr rectangle_width[bp]
	rep	movsb
	dec	word ptr rectangle_height[bp]
	jne	short save_area_copy_row
	mov	dx,es
	xor	ax,ax
	jmp	short area_restore_and_return
save_area_ endp

; Report the allocation failure and terminate with DOS error status 1.
save_area_out_of_memory:
	fatal	save_area_error_message

; DOS function 09h reads this dollar-terminated message.
save_area_error_message:
	db	0dh,0ah,07h
	db	'SAVEAREA out of memory.',0
	db	0ah,24h

; Clear the returned segment and status for the caller's failure result.
save_area_clear_result:
	xor	dx,dx
	mov	ax,dx

; Restore saved registers and return the allocated segment and offset.
area_restore_and_return:
	pops	si,di,ds,es
	mov	sp,bp
	pop	bp
	ret
codeseg	ends
	end
