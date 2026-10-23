; measure_text_width(text, font): adds the width byte of each character's
; entry in the font's 10h table and the signed byte at header offset 7, and
; returns the sum; 0ffffh when the font slot holds no segment
	include	lmacros.h
	include	hlmacros.h
	assume	cs:codeseg
	extrn	font_seg_table_:word
text		equ	4	;arg: NUL-terminated string
font		equ	6	;arg: index into font_seg_table
spacing		equ	-2	;local: signed per-character spacing from the font header
	public	measure_text_width_
measure_text_width_ proc near
	frame
	cld
	sub	sp,2		;reserve the spacing local
	pushs	es,si
	movseg	es,ds
	mov	cx,0ffffh	;font not loaded: -1
	mov	ax,word ptr font[bp]
	mov	bx,offset font_seg_table_
	shl	ax,1		;word per font slot
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	.if	ax		;font segment present
		mov	es,ax
		xor	bx,bx
		mov	al,byte ptr es:[bx+7]	;header +7: signed spacing byte
		cbw
		mov	word ptr spacing[bp],ax
		xor	cx,cx
		mov	si,word ptr text[bp]
next_char:
		mov	bx,10h		;10h table: word per character
		xor	ah,ah
		mov	al,byte ptr [si]
		.if	al	;NUL ends the string
			shl	ax,1
			add	bx,ax
			xor	ax,ax
			mov	al,byte ptr es:[bx+1]	;width byte of the entry
			add	cx,ax
			add	cx,word ptr spacing[bp]
			inc	si
			jmp	short next_char
		.endif
	.endif
	mov	ax,cx
	pops	si,es
	unframe
measure_text_width_ endp
	finish
	end
