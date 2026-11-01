	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	screen_buf_seg:word	;segment of the off-screen screen buffer
	public	fill_screen_buffer_

fill_byte	equ	0ch		;byte value supplied by the caller
buffer_size	equ	0fa00h		;64000 bytes in the screen buffer

; Fill the off-screen screen buffer with the caller's byte value.
fill_screen_buffer_	proc	near
	push	bp
	mov	bp,sp
	pushs	es,di
	movseg	es,ds
	movseg	es,<word ptr cs:screen_buf_seg>
	xor	di,di			;begin at buffer offset zero
	mov	ax,word ptr fill_byte[bp]
	mov	cx,buffer_size
	rep stosb			;repeat the byte store across the buffer
	pops	di,es
	mov	sp,bp
	pop	bp
	ret
fill_screen_buffer_	endp
codeseg	ends
	end
