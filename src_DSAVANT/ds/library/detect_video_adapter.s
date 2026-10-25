; reads the video mode, then picks the VGA or EGA driver; shares the caller's
; frame
	include	lmacros.h
	assume	cs:codeseg
	extrn	select_vga_driver_:near, select_ega_driver_:near
	extrn	saved_video_mode_:byte
	public	detect_video_adapter_, vga_palette_
detect_video_adapter_ proc near
	video	0fh	; int 10h/0Fh: get current video mode
	mov	byte ptr cs:saved_video_mode_,al	;remember the mode in effect at startup
	mov	ax,word ptr 4[bp]	;caller arg bit 0 set: VGA may be used
	and	ax,1
	jnz	try_vga
	jmp	select_ega_driver_
try_vga:
	mov	ax,0	;0040:0087 EGA info byte; 0 = no EGA/VGA BIOS
	push	ds
	mov	ds,ax
	mov	bx,487h
	mov	al,byte ptr [bx]
	pop	ds
	or	al,al
	jz	no_vga
	xor	bx,bx
	videox	1a00h	; int 10h/1A00h: read display combination code
	cmp	bl,7	;7 = VGA mono, 8 = VGA colour, active (bl) or alternate (bh)
	je	is_vga
	cmp	bh,7
	je	is_vga
	cmp	bl,8
	je	is_vga
	cmp	bh,8
	jne	no_vga
is_vga:
	jmp	select_vga_driver_
no_vga:
	mov	word ptr -2[bp],0	;[bp-2] = 0: no supported adapter
	ret
detect_video_adapter_ endp
 
	finish
	end
