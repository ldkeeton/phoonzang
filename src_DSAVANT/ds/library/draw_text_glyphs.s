; draws every byte of text with draw_font_glyph until NUL, advancing the
; saved text pointer past each character
	include	lmacros.h
	assume	cs:codeseg
	extrn	draw_font_glyph_:near
text		equ	4	;arg: NUL-terminated string
font		equ	6	;arg: font index passed to each glyph
cursor		equ	-2	;local: next character to draw
	public	draw_text_glyphs_
draw_text_glyphs_ proc near
	push	bp
	mov	bp,sp
	cld
	sub	sp,4
	push	si
	push	es
	push	ds
	mov	ax,ds	;es = ds for the string ops below
	mov	es,ax
	mov	si,word ptr [bp+text]
	mov	word ptr [bp+cursor],si
next_char:
	mov	si,word ptr [bp+cursor]
	add	word ptr [bp+cursor],1
	xor	ax,ax
	lodsb		;al = *text++, ah = 0
	or	al,al
	je	done	;NUL terminates the string
	push	word ptr [bp+font]
	push	ax
	call	draw_font_glyph_
	add	sp,4
	jmp	short next_char
done:
	pop	ds
	pop	es
	pop	si
	mov	sp,bp
	pop	bp
	ret
draw_text_glyphs_ endp
	finish
	end
