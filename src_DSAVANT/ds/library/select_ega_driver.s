; EGA present: mode 0eh with the 16-colour palette; [bp-2] = 2, [bp-4] =
; "ega.drv" in the caller's frame, else [bp-2] = 0
	include	lmacros.h
	assume	cs:codeseg
bios_data_0410	equ	410h	;0040:0010 equipment byte, read with es = 0
	extrn	saved_equip_byte_:byte
	extrn	video_is_ega_:byte, video_is_vga_:byte
	extrn	video_is_cga_:byte, video_is_herc_:byte
	public	select_ega_driver_, ega_palette_
	public	vga_drv_name_, ega_drv_name_, drv_file_handle_
select_ega_driver_ proc near
	mov	ax,0
	push	ds
	mov	ds,ax
	mov	bx,487h
	mov	al,byte ptr [bx]
	pop	ds
	or	al,al
	jz	no_ega
	jmp	set_ega
no_ega:
	mov	word ptr -2[bp],0
	ret
set_ega:
	mov	byte ptr cs:video_is_cga_,0
	mov	byte ptr cs:video_is_herc_,0
	mov	byte ptr cs:video_is_ega_,1
	mov	byte ptr cs:video_is_vga_,0
	push	es
	sub	ax,ax
	mov	es,ax
	mov	dl,byte ptr es:[bios_data_0410]
	mov	byte ptr cs:saved_equip_byte_,dl
	and	dl,0cfh
	mov	byte ptr es:[bios_data_0410],dl
	pop	es
	mov	ax,0eh
	int	10h
	mov	ax,cs
	mov	es,ax
	mov	dx,offset ega_palette_
	mov	ax,1002h
	int	10h
	mov	word ptr -2[bp],2
	mov	bx,offset ega_drv_name_
	mov	word ptr -4[bp],bx
	ret
select_ega_driver_ endp

ega_palette_	db	000h,017h,011h,015h,014h,016h,012h,013h,010h,007h,001h,005h,004h,006h,002h,003h
	db	000h

vga_drv_name_	db	'vga.drv',0
ega_drv_name_	db	'ega.drv',0
	db	'cga.drv',0
	db	'herc.drv',0
	db	'tandy.drv',0
drv_file_handle_ dw	0
	finish
	end
