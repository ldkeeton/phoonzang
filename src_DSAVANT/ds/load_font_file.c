/*
 * load_font_file(handle, slot): reads the 16-byte font header from handle
 * into the segment at font_header_seg, allocates a DOS block for the whole
 * font, records its segment in font_seg_table[slot], copies the header in and
 * reads the rest. A read error prints font_io_error_msg and exits (falls into
 * the following DOS print/exit code); an allocation error jumps to
 * font_memory_error.
 */
#asm
	include	lmacros.h
	assume	cs:codeseg
	extrn	font_header_seg_:word, font_seg_table_:word, font_io_error_msg_:byte
	extrn	font_memory_error_:near
handle		equ	4	;arg: DOS file handle
slot		equ	6	;arg: index into font_seg_table
font_size	equ	-2	;header + table + glyphs, bytes to read
alloc_size	equ	-4	;bytes to allocate (font_size + optional extra)
glyph_bytes	equ	-8	;glyph count * bytes per glyph
	public	load_font_file_
load_font_file_ proc near
	push	bp
	mov	bp,sp
	cld
	sub	sp,8
	push	si
	push	di
	push	ds
	push	es
	mov	ax,ds
	mov	es,ax
	mov	bx,word ptr cs:font_header_seg_
	mov	ds,bx
	xor	dx,dx
	mov	bx,word ptr handle[bp]
	mov	cx,10h
	mov	ah,3fh
	int	21h
	jae	l1
	jmp	l5
l1:
	xor	bx,bx
	mov	ax,word ptr 0ah[bx]
	xor	cx,cx
	mov	cl,byte ptr 5[bx]
	mul	cx
	mov	word ptr glyph_bytes[bp],ax
	add	ax,110h		;16-byte header + 256-byte table (shows as file_param_word)
	mov	word ptr font_size[bp],ax
	mov	word ptr alloc_size[bp],ax
	mov	al,byte ptr 2[bx]
	or	al,al
	jne	l2
	mov	dl,byte ptr 6[bx]
	test	dl,2
	je	l2
	mov	ax,word ptr 0eh[bx]
	xor	ch,ch
	mov	cl,byte ptr 5[bx]
	mul	cx
	add	word ptr alloc_size[bp],ax
	mov	dl,byte ptr 6[bx]
	test	dl,4
	je	l2
	add	word ptr font_size[bp],ax
l2:
	mov	dx,word ptr alloc_size[bp]
	add	dx,0fh
	mov	cl,4
	shr	dx,cl
	mov	bx,dx
	mov	ah,48h
	int	21h
	jae	l3
	jmp	font_memory_error_
l3:
	mov	bx,offset font_seg_table_
	mov	cx,word ptr slot[bp]
	shl	cx,1
	add	bx,cx
	mov	word ptr cs:[bx],ax
	mov	es,ax
	xor	di,di
	xor	si,si
	mov	cx,10h
	rep	movsb
	mov	ds,ax
	mov	dx,10h
	mov	bx,word ptr handle[bp]
	mov	cx,word ptr font_size[bp]
	sub	cx,dx
	mov	ah,3fh
	int	21h
	jb	l5
	xor	bx,bx
	mov	al,byte ptr 6[bx]
	and	al,6
	cmp	al,2
	jne	l4
	mov	al,byte ptr 2[bx]
	or	al,al
	jne	l4
	mov	ax,ds
	mov	es,ax
	mov	di,word ptr 0ch[bx]
	mov	si,110h
	mov	cx,word ptr glyph_bytes[bp]
	rep	movsb
l4:
	pop	es
	pop	ds
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret
l5:
	mov	ax,cs
	mov	ds,ax
	mov	dx,offset font_io_error_msg_
load_font_file_ endp
	finish
	end
#endasm
