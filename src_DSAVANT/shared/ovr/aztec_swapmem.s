; :ts=8
;Copyright (C) 1984 by Manx Software Systems
	include	lmacros.h
	procdef aztec_swapmem,<<str1,ptr>,<str2,ptr>,<len,word>>
	pushs	si,di
	pushds
ifndef LONGPTR
	mov	di,ds
	mov	es,di
endif
	ldptr	si,str1
	ldptr	di,str2
	mov	cx,len
	jcxz	done
ifdef LONGPTR
	mov	ax,ds
	mov	dx,es
	cmp	ax,dx
	jne	swaploop
endif
	cmp	di,si
	je	done
swaploop:
	mov	al,es:[di]
	xchg	al,ds:[si]
	stosb
	inc	si
	loop	swaploop
done:
	popds
	pops	di,si
	pret
	pend	aztec_swapmem
	finish
	end
