; Return the byte offset of a character in a string, or 0FFFFh if absent.
	include	lmacros.h
	assume	cs:codeseg
	string_start	equ	4	;first word argument
	search_char	equ	6	;second word argument

strpos proc near
	push	bp
	mov	bp,sp
	cld
	pushs	es,di
	movseg	es,ds
	cld
	mov	di,word ptr string_start[bp]
	mov	bx,di
	mov	al,0
	mov	cx,0ffffh
	repne scasb	;find the terminator to count candidate characters
	mov	cx,di
	sub	cx,bx
	dec	cx	;exclude the terminator from the scan count
	mov	di,bx
	mov	al,byte ptr search_char[bp]
	repne scasb	;scan the string for the requested character
	dec	di
	cmp	al,byte ptr es:[di]
	jne	short .not_found
	mov	ax,di
	sub	ax,bx	;return the match's offset from the string start
	jmp	near ptr .finish
.not_found:
	mov	ax,0ffffh
.finish:
	pops	di,es
	mov	sp,bp
	pop	bp
	ret
strpos endp
	finish
	end
