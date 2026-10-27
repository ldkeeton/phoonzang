; :ts=8
;Copyright (C) 1983 by Manx Software Systems
	include	lmacros.h
	public loc_OSRT_, loc_PGTO_
	procdef	aztec_strncmp,<<str1,ptr>,<str2,ptr>,<len,word>>
	mov	cx,len
	mov	dx,cx
	shr	cx,1		;# of times through word loop
	cld
	pushs	si,di
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
	jne	loc_OSRT_
	test	al,al
	jz	loc_PGTO_
	test	ah,ah
	loopnz	ncmploop
	jz	loc_PGTO_
words_equal:
	test	dl,1
	jz	loc_PGTO_
	cmpsb
	jne	notequal
loc_PGTO_:
	sub	ax,ax
done:
	popds
	pops	di,si
	pret
loc_OSRT_:
	sub	di,2		;back up to first byte in word
	scasb			;and redo the compare a byte at a time
	jne	notequal
	test	al,al		;if end of string, this was a false mismatch
	jz	loc_PGTO_
	mov	al,ah		;get second byte
	scasb		;this must be not equal, since the words aren't equal
notequal:
	sbb	ax,ax
	js	done		;if -1 then s1<s2 and we are done
	inc	ax		;else, ==0 and s1>s2
	jmp	done
	pend aztec_strncmp
	finish
	end
