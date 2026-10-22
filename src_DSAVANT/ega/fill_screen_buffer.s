; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	screen_buf_seg:word
	public	fill_screen_buffer_
fill_byte	equ	0ch		;stack arg: byte written to the buffer
buffer_size	equ	0fa00h		;64000 bytes, one EGA screen plane
; fill the 64000-byte screen buffer at screen_buf_seg with one byte
fill_screen_buffer_ proc near
	push	bp
	mov	bp,sp
	push	es
	push	di
	mov	ax,word ptr cs:screen_buf_seg	;segment of the off-screen buffer
	mov	es,ax
	xor	di,di			;start at offset 0
	mov	ax,word ptr fill_byte[bp]
	mov	cx,buffer_size
	rep stosb			;fill the whole plane
	pop	di
	pop	es
	mov	sp,bp
	pop	bp
	ret
fill_screen_buffer_ endp
codeseg	ends
	end
