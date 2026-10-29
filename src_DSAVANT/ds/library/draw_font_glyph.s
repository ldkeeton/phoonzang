; draw_font_glyph(glyph, font): looks up the loaded segment for font and, if
; present, passes it in AX to the graphics driver's draw-glyph entry; the
; caller's glyph argument is left on the stack for the driver to read.
	include	lmacros.h
	assume	cs:codeseg
	extrn	font_seg_table_:word
	extrn	drv_slot_draw_glyph_:dword
	procdef	draw_font_glyph,<<glyph,word>,<font,word>>
	cld
	mov	ax,font
	mov	bx,offset font_seg_table_
	shl	ax,1		;font_seg_table entry is a word per font
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	or	ax,ax
	je	no_font		;font not loaded: nothing to draw
	call	dword ptr cs:drv_slot_draw_glyph_
no_font:
	mov	sp,bp
	pret
	pend	draw_font_glyph
	finish
	end
