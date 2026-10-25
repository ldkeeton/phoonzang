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
	mov	ax,0	;0040:0087 EGA info byte; 0 = no EGA
	push	ds
	mov	ds,ax
	mov	bx,487h
	mov	al,byte ptr [bx]
	pop	ds
	or	al,al
	jz	no_ega
	jmp	set_ega
no_ega:
	mov	word ptr -2[bp],0	;[bp-2] = 0: no EGA
	ret
set_ega:
	mov	byte ptr cs:video_is_cga_,0	;record the adapter type
	mov	byte ptr cs:video_is_herc_,0
	mov	byte ptr cs:video_is_ega_,1
	mov	byte ptr cs:video_is_vga_,0
	push	es
	sub	ax,ax
	mov	es,ax
	mov	dl,byte ptr es:[bios_data_0410]	;save the equipment byte, then clear bits 4-5
	mov	byte ptr cs:saved_equip_byte_,dl
	and	dl,0cfh	;bits 4-5 = 00: EGA/VGA in the equipment list
	mov	byte ptr es:[bios_data_0410],dl
	pop	es
	videox	0eh	; mode 0Eh: 640x200, 16 colours
	movseg	es,cs
	mov	dx,offset ega_palette_	;int 10h/1002h: set 16 palette regs + overscan from es:dx
	videox	1002h
	mov	word ptr -2[bp],2	;[bp-2] = 2: EGA
	mov	bx,offset ega_drv_name_	;[bp-4] = driver file name
	mov	word ptr -4[bp],bx
	ret
select_ega_driver_ endp
 
	finish
	end
