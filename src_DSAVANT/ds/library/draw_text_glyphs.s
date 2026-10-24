; draws every byte of text with draw_font_glyph until NUL, advancing the
; saved text pointer past each character
	include	lmacros.h
	assume	cs:codeseg
	extrn	draw_font_glyph_:near
cursor		equ	-2	;local: next character to draw
	procdef	draw_text_glyphs,<<text,word>,<font,word>>
	cld
	sub	sp,4
	pushs	si,es,ds
	movseg	es,ds	; es = ds for the string ops below
	mov	si,text
	mov	word ptr [bp+cursor],si
next_char:
	mov	si,word ptr [bp+cursor]
	add	word ptr [bp+cursor],1
	xor	ax,ax
	lodsb		;al = *text++, ah = 0
	or	al,al
	je	done	;NUL terminates the string
	push	font
	push	ax
	call	draw_font_glyph_
	add	sp,4
	jmp	short next_char
done:
	pops	ds,es,si
	mov	sp,bp
	pret
	pend	draw_text_glyphs
	finish
	end
