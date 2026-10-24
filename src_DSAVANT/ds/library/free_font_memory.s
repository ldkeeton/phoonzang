; frees every font segment listed in font_seg_table up to its 0xffff end marker
	include	lmacros.h
	assume	cs:codeseg
	extrn	font_seg_table_:word
	public	free_font_memory_
free_font_memory_ proc near
	pushs	es		;the caller's es must survive the frees
	mov	si,offset font_seg_table_
next_seg:
	mov	bx,word ptr cs:[si]
	cmp	bx,-1		;0xffff ends the table
	je	table_end
	mov	es,bx
	mov	ah,49h		;DOS 49h: free the block at es
	pushs	si		;keep the table cursor across the interrupt
	int	21h
	pops	si
	add	si,2		;segments are word entries
	jmp	short next_seg
table_end:
	pops	es
	ret
free_font_memory_ endp
	finish
	end
