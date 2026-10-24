; read_font_glyph(handle, font, source, glyph): seeks the font file to
; source * bytes_per_glyph, then reads one glyph record into the font segment
; at file_param_word + glyph_map[glyph] * bytes_per_glyph.
	include	lmacros.h
	assume	cs:codeseg
	extrn	font_seg_table_:word
	procdef	read_font_glyph,<<handle,word>,<font,word>,<source,byte>,<glyph,byte>>
	cld
	sub	sp,8		;reserve 8 bytes of locals (not referenced here)
	pushs	si,di,ds,es
	movseg	es,ds
	movseg	ds,cs	; ds = cs to reach font_seg_table
	mov	ax,font
	mov	bx,offset font_seg_table_
	shl	ax,1
	add	bx,ax
	movseg	ds,<word ptr [bx]>	; ds = segment allocated for this font
	xor	bx,bx
	xor	ah,ah
	mov	al,source
	mov	cx,word ptr 0ah[bx]	;bytes per glyph (header offset 0Ah)
	mul	cx
	mov	cx,dx		;cx:dx = 32-bit file offset
	mov	dx,ax
	mov	ah,42h		;DOS 42h: seek from start (AL = 0)
	mov	al,0
	mov	bx,handle
	int	21h
	xor	bx,bx
	xor	ah,ah
	mov	al,glyph
	shl	al,1		;glyph map entry is a word at header offset 10h
	add	bx,10h
	add	bx,ax
	xor	ah,ah
	mov	al,byte ptr [bx]	;glyph index -> record number
	xor	bx,bx
	mov	cx,word ptr 0ah[bx]
	mul	cx
	add	ax,110h		;16-byte header + 256-byte map (file_param_word)
	mov	dx,ax		;ds:dx = glyph record in the font segment
	mov	cx,word ptr 0ah[bx]
	mov	bx,handle
	dos	3fh	; DOS 3Fh: read file
	xor	bx,bx
	pops	es,ds,di,si
	mov	sp,bp
	pret
	pend	read_font_glyph
	finish
	end
