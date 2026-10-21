/* mode 13h with the 256-colour palette; [bp-2] = 1, [bp-4] = "vga.drv" in the caller's frame */
#asm
	include	lmacros.h
	assume	cs:codeseg
	extrn	saved_equip_byte_:byte
	extrn	video_is_ega_:byte, video_is_vga_:byte
	extrn	video_is_cga_:byte, video_is_herc_:byte
	extrn	vga_palette_:byte, vga_drv_name_:byte
bios_data_0410	equ	410h	;0040:0010 equipment byte, read with es = 0
	public	select_vga_driver_
select_vga_driver_ proc near
	mov	byte ptr cs:video_is_cga_,0
	mov	byte ptr cs:video_is_herc_,0
	mov	byte ptr cs:video_is_ega_,0
	mov	byte ptr cs:video_is_vga_,1
	push	es
	sub	ax,ax
	mov	es,ax
	mov	dl,byte ptr es:[bios_data_0410]
	mov	byte ptr cs:saved_equip_byte_,dl
	and	dl,0cfh
	mov	byte ptr es:[bios_data_0410],dl
	pop	es
	mov	ax,13h
	int	10h
	mov	ax,cs
	mov	es,ax
	mov	dx,offset vga_palette_
	xor	bx,bx
	mov	cx,100h
	mov	ax,1012h
	int	10h
	mov	word ptr -2[bp],1
	mov	bx,offset vga_drv_name_
	mov	word ptr -4[bp],bx
	ret
select_vga_driver_ endp
	finish
	end
#endasm
