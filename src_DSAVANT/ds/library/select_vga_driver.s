; mode 13h with the 256-colour palette; [bp-2] = 1, [bp-4] = "vga.drv" in the
; caller's frame
	include	lmacros.h
	assume	cs:codeseg
	extrn	saved_equip_byte_:byte
	extrn	video_is_ega_:byte, video_is_vga_:byte
	extrn	video_is_cga_:byte, video_is_herc_:byte
	extrn	vga_palette_:byte, vga_drv_name_:byte
bios_data_0410	equ	410h	;0040:0010 equipment byte, read with es = 0
	public	select_vga_driver_
select_vga_driver_ proc near
	mov	byte ptr cs:video_is_cga_,0	;record the adapter type
	mov	byte ptr cs:video_is_herc_,0
	mov	byte ptr cs:video_is_ega_,0
	mov	byte ptr cs:video_is_vga_,1
	push	es
	sub	ax,ax
	mov	es,ax
	mov	dl,byte ptr es:[bios_data_0410]	;save the equipment byte, then clear bits 4-5
	mov	byte ptr cs:saved_equip_byte_,dl
	and	dl,0cfh	;bits 4-5 = 00: EGA/VGA in the equipment list
	mov	byte ptr es:[bios_data_0410],dl
	pop	es
	videox	13h	; mode 13h: 320x200, 256 colours
	movseg	es,cs
	mov	dx,offset vga_palette_	;int 10h/1012h: set DAC regs 0..255 from es:dx
	xor	bx,bx
	mov	cx,100h
	videox	1012h
	mov	word ptr -2[bp],1	;[bp-2] = 1: VGA
	mov	bx,offset vga_drv_name_	;[bp-4] = driver file name
	mov	word ptr -4[bp],bx
	ret
select_vga_driver_ endp
	finish
	end
