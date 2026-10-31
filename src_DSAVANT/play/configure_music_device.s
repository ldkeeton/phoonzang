; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	clamp_device_:near
	extrn	music_device:byte
	extrn	device_file_extensions:byte

output_name_offset	equ	8	;offset of the caller's output buffer
output_name_segment	equ	0ah	;segment of the caller's output buffer
requested_device	equ	0ch	;device number to clamp and configure

; Set the music device and append its filename extension to the output name.
	procdef	configure_music_device
	push	bp
	mov	bp,sp
	pushs	es,di,bx,cx
	cld
	mov	di,word ptr output_name_offset[bp]
	mov	es,word ptr output_name_segment[bp]
	xor	al,al
	mov	cx,8			;the caller's name field is eight bytes wide
	repne	scasb
	mov	word ptr es:[di-1],2eh	;replace the field terminator with a dot
	mov	al,byte ptr requested_device[bp]
	call	clamp_device_
	mov	bl,al
	mov	byte ptr cs:music_device,al
	mov	bh,bl
	shl	bl,1
	add	bl,bh			;each extension occupies three bytes
	xor	bh,bh
	add	bx,offset device_file_extensions
	mov	ax,word ptr cs:[bx]
	stosw
	mov	al,byte ptr cs:[bx+2]
	mov	ah,0
	stosw
	pops	cx,bx,di,es
	pop	bp
	ret
	pend	configure_music_device

codeseg	ends
	end
