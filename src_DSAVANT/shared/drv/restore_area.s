; Restore a saved rectangular area into the screen buffer.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	screen_buf_seg:word

saved_area_pointer	equ	word ptr 0ch[bp]
saved_area_segment	equ	word ptr 0eh[bp]
release_segment_flag	equ	word ptr 10h[bp]
screen_row_offset	equ	-2	; stack slot: destination offset for the current row
rows_remaining	equ	-4	; stack slot: rows left to restore
row_byte_count	equ	-6	; stack slot: bytes copied per row

	public	restore_area_
restore_area_ proc near
	push	bp
	mov	bp,sp
	sub	sp,8
	pushs	es,ds,di,si
	movseg	es,ds
	movseg	ds,saved_area_segment
	mov	si,saved_area_pointer
	or	ax,si
	je	short restore_area_null_pointer
	movseg	es,<word ptr cs:screen_buf_seg>
	; The saved header supplies destination offset, row count, and row width.
	lodsw
	mov	word ptr screen_row_offset[bp],ax
	add	si,2
	lodsw
	mov	word ptr rows_remaining[bp],ax
	lodsw
	mov	word ptr row_byte_count[bp],ax
	add	si,4
restore_area_copy_row:
	mov	di,word ptr screen_row_offset[bp]
	; 0x140 is the screen's 320-byte row stride.
	add	word ptr screen_row_offset[bp],140h
	mov	cx,word ptr row_byte_count[bp]
	rep	movsb
	dec	word ptr rows_remaining[bp]
	jne	short restore_area_copy_row
	; Free the saved segment only when requested and the segment is nonzero.
	mov	ax,release_segment_flag
	or	ax,ax
	je	short restore_area_done
	mov	ax,ds
	or	ax,ax
	je	short restore_area_done
	mov	es,ax
	dos	49h
	jmp	short restore_area_done
restore_area_null_pointer:
	movseg	ds,cs
	mov	dx,offset restore_area_null_message
	dos	9
	dosx	4c01h
restore_area_null_message:
	db	0dh,0ah,07h
	db	'RESTOREAREA called with NULL pointer.',0
	db	0ah,24h
restore_area_done:
	pops	si,di,ds,es
	mov	sp,bp
	pop	bp
	ret
restore_area_ endp
	codeseg	ends
	end
