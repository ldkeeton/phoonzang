; Return the byte offset of the needle in the haystack, or 0FFFFh if absent.
	include	lmacros.h
	assume	cs:codeseg
	haystack	equ	4	;first word argument
	needle		equ	6	;second word argument
	haystack_length equ -2	;bytes before the haystack terminator
	strstr proc near
	push	bp
	mov	bp,sp
	cld
	sub	sp,6	;reserve the original six-byte local frame
	pushs	ds,es,si,di
	movseg	es,ds
	cld
	mov	di,word ptr haystack[bp]
	mov	si,word ptr needle[bp]
	mov	bx,di
	mov	al,0
	mov	cx,0ffffh
	repne scasb	;scan the haystack terminator to set its candidate count
	mov	cx,di
	sub	cx,bx
	dec	cx
	mov	word ptr haystack_length[bp],cx
	mov	di,bx
.search_candidate:
	mov	al,byte ptr [si]
	repne scasb	;seek the next haystack occurrence of the needle's first byte
	dec	di
	cmp	al,byte ptr es:[di]
	jne	short .not_match
	mov	dx,di
	sub	dx,bx	;save candidate offset from the haystack start
	pushs	si,di
.compare_remainder:
	inc	si
	inc	di
	mov	al,byte ptr [si]
	cmp	al,0
	je	short .match
	cmp	byte ptr es:[di],0
	je	short .candidate_done
	cmp	al,byte ptr es:[di]
	je	short .compare_remainder
.candidate_done:
	pops	di,si
	inc	di
	mov	cx,word ptr haystack_length[bp]
	sub	cx,dx
	dec	cx
	je	short .not_match
	jmp	short .search_candidate
.match:
	pops	si,di
	mov	ax,dx
	jmp	short .finish
.not_match:
	mov	ax,0ffffh
.finish:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
	strstr endp
	finish
	end
