; get_font_glyph(font, glyph, glyph_w, glyph_h): points ds at the segment loaded
; for font, copies the font header's first two bytes into the caller's words
; and returns dx:ax = that segment:offset of glyph's record.
	include	lmacros.h
	assume	cs:codeseg
	extrn	font_seg_table_:word
	procdef	get_font_glyph,<<font,word>,<glyph,byte>,<glyph_w,word>,<glyph_h,word>>
	cld
	sub	sp,8		;reserve 8 bytes of locals (not referenced here)
	pushs	si,di,ds,es
	movseg	es,ds		;es = caller's ds, the out words' segment
	movseg	ds,cs		;ds = cs to reach font_seg_table
	mov	ax,font
	mov	bx,offset font_seg_table_
	shl	ax,1		;font_seg_table entry is a word per font
	add	bx,ax
	movseg	ds,<word ptr [bx]>	;ds = segment allocated for this font
	xor	bx,bx
	mov	di,glyph_w
	xor	ax,ax
	mov	al,byte ptr [bx]	;header byte 0 -> width word
	mov	word ptr es:[di],ax
	mov	di,glyph_h
	mov	al,byte ptr 1[bx]	;header byte 1 -> height word (ah still 0)
	mov	word ptr es:[di],ax
	xor	ah,ah
	mov	al,glyph
	shl	al,1		;glyph map entry is a word at header offset 10h
	add	bx,10h
	add	bx,ax
	xor	ah,ah
	mov	al,byte ptr [bx]	;glyph index -> record number
	xor	bx,bx
	mov	cx,word ptr 0ah[bx]	;record stride (header word 0Ah)
	mul	cx
	add	ax,110h		;16-byte header + 256-byte map (file_param_word)
	mov	dx,ds		;dx:ax = glyph record in the font segment
	pops	es,ds,di,si
	mov	sp,bp
	pret
	pend	get_font_glyph
	finish
	end
