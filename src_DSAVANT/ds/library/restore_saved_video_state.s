; restores the startup video equipment byte and video mode through the BIOS
	include	lmacros.h
	include	hlmacros.h
	assume	cs:codeseg
	extrn	saved_equip_byte_:byte
	extrn	saved_video_mode_:byte
bios_data_0410	equ	410h	;0040:0010 equipment byte, read with es = 0
	public	restore_saved_video_state
restore_saved_video_state proc near
	push	es
	sub	ax,ax
	mov	es,ax
	mov	dl,byte ptr cs:saved_equip_byte_
	mov	byte ptr es:[bios_data_0410],dl	;put the equipment byte back
	pop	es
	mov	al,byte ptr cs:saved_video_mode_
	xor	ah,ah
	int	10h	;int 10h/00h: set the saved video mode
	ret
restore_saved_video_state endp
	finish
	end
