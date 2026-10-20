/* auto-generated */
#asm
; :ts=8
;Copyright (C) 1983 by Manx Software Systems
	include	lmacros.h
	procdef strcmp,<<s1,ptr>,<s2,ptr>>
	cld
	push	si
	push	di
	pushds
	ldptr	si,s1
ifndef LONGPTR
	mov	di,ds
	mov	es,di
endif
	ldptr	di,s2
cmploop:
	lodsw
	scasw
	jne	word_notequal
	test	al,al
	jz	equal
	test	ah,ah
	jnz	cmploop
	jmp	short equal
	pend	strcmp

	procdef	strncmp,<<str1,ptr>,<str2,ptr>,<len,word>>
	mov	cx,len
	mov	dx,cx
	shr	cx,1		;# of times through word loop
	cld
	push	si
	push	di
	pushds
	ldptr	si,str1
ifndef LONGPTR
	mov	di,ds
	mov	es,di
endif
	ldptr	di,str2
	jcxz	words_equal
ncmploop:
	lodsw
	scasw
	jne	word_notequal
	test	al,al
	jz	equal
	test	ah,ah
	loopnz	ncmploop
	jz	equal
words_equal:
	test	dl,1
	jz	equal
	cmpsb
	jne	notequal
equal:
	sub	ax,ax
done:
	popds
	pop	di
	pop	si
	pret
word_notequal:
	sub	di,2		;back up to first byte in word
	scasb			;and redo the compare a byte at a time
	jne	notequal
	test	al,al		;if end of string, this was a false mismatch
	jz	equal
	mov	al,ah		;get second byte
	scasb		;this must be not equal, since the words aren't equal
notequal:
	sbb	ax,ax
	js	done		;if -1 then s1<s2 and we are done
	inc	ax		;else, ==0 and s1>s2
	jmp	done

	pend	strncmp
	finish
	end
#endasm
