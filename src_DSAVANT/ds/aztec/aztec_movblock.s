;Copyright (C) 1983, 1985 by Manx Software Systems
; :ts=8
	include	lmacros.h
	procdef aztec_movblock,<<src,dword>,<dest,dword>,<len,word>>
	pushs	di,si,ds,es
	pushf
	cld
	mov	cx,len
	les	di,dest
	lds	si,src
	cmp	cx,4
	jne	not_int
	cli
not_int:
	test	cx,cx
	jnz	not_mov_all
	mov	cx,8000H
	jmp	short movwords
not_mov_all:
	mov	dx,cx
	shr	cx,1
	jz	mv_skip
movwords:
rep	movsw
mv_skip:
	test	dl,1
	jz	done
	movsb
done:
	popf
	pops	es,ds,si,di
	pret
	pend	aztec_movblock
	finish
	end
