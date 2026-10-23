; reads the video mode, then picks the VGA or EGA driver; shares the caller's
; frame
	include	lmacros.h
	include	hlmacros.h
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

vga_palette_:	;256 RGB triples, 6-bit DAC values
	db	000h,000h,000h,03fh,03fh,03fh,038h,038h,038h,033h,033h,033h,02eh,02eh,02eh,029h
	db	029h,029h,024h,024h,024h,020h,020h,020h,01ch,01ch,01ch,018h,018h,018h,014h,014h
	db	014h,010h,010h,010h,00dh,00dh,00dh,00ah,00ah,00ah,007h,007h,007h,004h,004h,004h
	db	03fh,03ah,03ah,03dh,034h,034h,03fh,02eh,02eh,03fh,022h,022h,03fh,016h,016h,03fh
	db	010h,010h,03fh,000h,000h,03ah,000h,000h,035h,000h,000h,030h,000h,000h,02bh,000h
	db	000h,026h,000h,000h,021h,000h,000h,01ch,000h,000h,017h,000h,000h,012h,000h,000h
	db	00eh,000h,000h,00ah,000h,000h,006h,000h,000h,002h,000h,000h,03fh,030h,022h,03fh
	db	02ah,017h,03fh,025h,00ch,03fh,01eh,000h,036h,019h,000h,02eh,015h,000h,025h,011h
	db	000h,01dh,00eh,000h,03fh,02dh,00bh,03bh,029h,009h,037h,025h,007h,033h,022h,006h
	db	028h,03fh,028h,01ch,03fh,01ch,000h,03fh,000h,000h,038h,000h,000h,030h,000h,000h
	db	028h,000h,000h,020h,000h,000h,018h,000h,000h,012h,000h,000h,00ch,000h,000h,008h
	db	000h,02fh,01fh,005h,029h,01bh,007h,023h,018h,009h,01eh,015h,009h,018h,011h,009h
	db	035h,03bh,018h,02ah,038h,000h,024h,030h,000h,01eh,028h,000h,018h,020h,000h,012h
	db	018h,000h,00dh,012h,000h,009h,00ch,000h,006h,008h,000h,004h,005h,000h,002h,002h
	db	000h,00ch,034h,032h,005h,02ah,027h,000h,020h,01eh,000h,019h,018h,000h,012h,012h
	db	03fh,03dh,034h,03fh,03dh,02eh,03fh,03dh,028h,03fh,03dh,01ch,03fh,03dh,015h,03fh
	db	03dh,000h,038h,036h,000h,030h,02eh,000h,028h,026h,000h,020h,01eh,000h,018h,016h
	db	000h,012h,010h,000h,00ch,00ah,000h,008h,006h,000h,000h,020h,03fh,000h,018h,030h
	db	036h,036h,03ah,034h,034h,037h,031h,031h,035h,02fh,02fh,032h,02dh,02dh,030h,02bh
	db	02bh,02dh,029h,029h,02bh,026h,026h,028h,024h,024h,026h,022h,022h,023h,020h,020h
	db	021h,01dh,01eh,01fh,01bh,01bh,01ch,019h,019h,01ah,016h,016h,017h,014h,014h,015h
	db	011h,011h,012h,00eh,00eh,010h,00bh,00bh,00eh,008h,008h,00ah,005h,006h,008h,004h
	db	004h,006h,002h,002h,004h,001h,001h,002h,017h,01ah,01eh,014h,016h,01bh,011h,013h
	db	018h,00fh,010h,015h,00ch,00eh,012h,00ah,00bh,010h,008h,008h,00dh,006h,006h,00ah
	db	02eh,03ah,03fh,028h,037h,03fh,022h,034h,03fh,01ch,031h,03fh,015h,02eh,03fh,00fh
	db	02bh,03fh,000h,028h,03fh,000h,023h,038h,000h,01eh,030h,000h,019h,028h,000h,014h
	db	020h,000h,010h,020h,000h,00fh,018h,000h,00bh,012h,000h,008h,00ch,000h,005h,008h
	db	03ah,024h,01ch,034h,01eh,01ah,02eh,018h,014h,028h,014h,010h,03fh,028h,034h,03fh
	db	022h,030h,03fh,015h,028h,01ch,01ch,03fh,012h,012h,03fh,000h,000h,03fh,000h,000h
	db	030h,000h,000h,020h,000h,000h,018h,000h,000h,012h,000h,000h,00ch,000h,000h,008h
	db	022h,010h,00eh,01eh,00eh,00dh,018h,00ah,00ah,014h,008h,008h,03fh,000h,020h,032h
	db	000h,019h,026h,000h,013h,03fh,028h,03fh,03fh,019h,03fh,03fh,000h,03fh,036h,000h
	db	037h,02dh,000h,02eh,024h,000h,025h,01bh,000h,01ch,012h,000h,013h,00ah,000h,00bh
	db	03fh,03ch,018h,03eh,039h,014h,03dh,037h,011h,03ch,035h,00eh,03bh,033h,00bh,03ah
	db	031h,008h,038h,02fh,007h,035h,02ch,006h,02bh,02dh,038h,027h,028h,035h,022h,024h
	db	033h,01fh,020h,031h,019h,01ah,02dh,014h,015h,029h,00fh,010h,025h,00bh,00ch,022h
	db	032h,029h,005h,02fh,026h,004h,02ch,023h,003h,029h,020h,002h,026h,01dh,002h,023h
	db	019h,001h,020h,014h,000h,01dh,010h,000h,01ah,00ch,000h,016h,009h,000h,013h,008h
	db	000h,010h,006h,000h,00dh,004h,000h,00ah,002h,000h,007h,002h,000h,006h,001h,000h
	db	034h,02dh,018h,034h,02ah,014h,030h,026h,012h,02ch,022h,011h,028h,01eh,00eh,022h
	db	01ah,00eh,01ch,016h,00dh,03fh,036h,029h,03eh,033h,026h,03dh,030h,023h,03ch,02eh
	db	021h,03bh,02ch,01fh,03ah,02ah,01dh,039h,027h,01ah,038h,024h,018h,033h,020h,016h
	db	018h,013h,00eh,014h,010h,00bh,010h,00ch,009h,03ah,031h,026h,032h,029h,01eh,02ah
	db	021h,017h,023h,019h,011h,02eh,01eh,013h,029h,01ah,011h,024h,017h,00fh,020h,014h
	db	00dh,01bh,011h,00bh,016h,00eh,009h,010h,00ah,006h,00ah,006h,003h,004h,002h,001h
	db	036h,01ch,01ch,030h,015h,015h,02ah,010h,010h,024h,00bh,00bh,01eh,007h,007h,018h
	db	004h,004h,030h,029h,03fh,029h,019h,03fh,020h,000h,03fh,01ch,000h,038h,018h,000h
	db	030h,014h,000h,028h,010h,000h,020h,00ch,000h,018h,008h,000h,010h,018h,018h,020h
	finish
	end
