; load_font_file(handle, slot): reads the 16-byte font header from handle
; into the segment at font_header_seg, allocates a DOS block for the whole
; font, records its segment in font_seg_table[slot], copies the header in and
; reads the rest. A read error prints font_io_error_msg and exits (falls into
; the following DOS print/exit code); an allocation error jumps to
; font_memory_error.
	include	lmacros.h
	include	hlmacros.h
	assume	cs:codeseg
	extrn	font_header_seg_:word, font_seg_table_:word, font_io_error_msg_:byte
	extrn	font_memory_error_:near
font_size	equ	-2	;header + table + glyphs, bytes to read
alloc_size	equ	-4	;bytes to allocate (font_size + optional extra)
glyph_bytes	equ	-8	;glyph count * bytes per glyph
	procdef	load_font_file,<<handle,word>,<slot,word>>
	cld
	sub	sp,8
	pushs	si,di,ds,es
	movseg	es,ds
	mov	bx,word ptr cs:font_header_seg_	;ds = scratch segment for the header
	mov	ds,bx
	xor	dx,dx	;DOS 3Fh: read 16-byte header to ds:0
	mov	bx,handle
	mov	cx,10h
	dos	3fh
	.if	carry?
		jmp	l5
	.endif
	xor	bx,bx
	mov	ax,word ptr 0ah[bx]	;glyph count (hdr 0Ah) * bytes per glyph (hdr 5)
	xor	cx,cx
	mov	cl,byte ptr 5[bx]
	mul	cx
	mov	word ptr glyph_bytes[bp],ax
	add	ax,110h		;16-byte header + 256-byte table (shows as file_param_word)
	mov	word ptr font_size[bp],ax
	mov	word ptr alloc_size[bp],ax
	mov	al,byte ptr 2[bx]	;hdr byte 2 nonzero: no extra block
	.if	not al
		mov	dl,byte ptr 6[bx]	;flag bit 1: allocate an extra block
		.if	dl and 2
			mov	ax,word ptr 0eh[bx]	;extra count (hdr 0Eh) * bytes per glyph
			xor	ch,ch
			mov	cl,byte ptr 5[bx]
			mul	cx
			add	word ptr alloc_size[bp],ax
			mov	dl,byte ptr 6[bx]	;flag bit 2: the extra block is also in the file
			.if	dl and 4
				add	word ptr font_size[bp],ax
			.endif
		.endif
	.endif
	mov	dx,word ptr alloc_size[bp]	;bytes to paragraphs, rounded up
	add	dx,0fh
	mov	cl,4
	shr	dx,cl
	mov	bx,dx
	dos	48h	;allocate, ax = segment
	.if	carry?
		jmp	font_memory_error_
	.endif
	mov	bx,offset font_seg_table_	;font_seg_table[slot] = segment (word table in cs)
	mov	cx,slot
	shl	cx,1
	add	bx,cx
	mov	word ptr cs:[bx],ax
	mov	es,ax	;copy the header into the new block
	xor	di,di
	xor	si,si
	mov	cx,10h
	rep	movsb
	mov	ds,ax	;read the rest of the file after the header
	mov	dx,10h
	mov	bx,handle
	mov	cx,word ptr font_size[bp]
	sub	cx,dx
	dos	3fh
	jb	l5
	xor	bx,bx	;extra block allocated but not read (bit 1 set, bit 2 clear, byte 2 = 0):
	mov	al,byte ptr 6[bx]
	and	al,6
	.if	al == 2
		mov	al,byte ptr 2[bx]
		.if	not al
			movseg	es,ds	; fill it by copying the glyphs (at 110h) to hdr 0Ch
			mov	di,word ptr 0ch[bx]
			mov	si,110h
			mov	cx,word ptr glyph_bytes[bp]
			rep	movsb
		.endif
	.endif
	pops	es,ds,di,si
	mov	sp,bp
	pret
l5:	;read error: ds:dx = message for the DOS print that follows
	movseg	ds,cs
	mov	dx,offset font_io_error_msg_
	pend	load_font_file
	finish
	end
