/* stirs the random seeds, then returns 1 if a key allowed by mode is waiting in key_queue or the BIOS buffer, moving a BIOS key into the queue when mode is nonzero */
#asm
	include	lmacros.h
	assume	cs:codeseg
	extrn	key_queue_:word
	extrn	stir_random_seeds_:near
mode		equ	4	;arg: 0 any key, 2 digits, else printable/control
	public	poll_filtered_key_
poll_filtered_key_ proc near
	push	bp
	mov	bp,sp
	cld
	push	ds
	push	es
	push	si
	cld
	mov	ax,cs
	mov	ds,ax
	mov	es,ax
	call	stir_random_seeds_
	lea	si,key_queue_
next_key:
	mov	bx,word ptr [si]
	or	bx,bx
	je	poll_key
	mov	ax,word ptr [bp+mode]
	cmp	al,0
	je	have_key
	cmp	al,2
	je	digit_mode
	mov	al,byte ptr [si+2]
	cmp	al,8
	je	have_key
	cmp	al,9
	je	have_key
	cmp	al,10
	je	have_key
	cmp	al,11
	je	have_key
	cmp	al,27
	je	have_key
	cmp	al,13
	je	have_key
	cmp	al,32
	jb	drop_key
	cmp	al,96
	jae	drop_key
	jmp	near ptr have_key
digit_mode:
	mov	al,byte ptr [si+2]
	cmp	al,8
	je	have_key
	cmp	al,27
	je	have_key
	cmp	al,13
	je	have_key
	cmp	al,48
	jb	drop_key
	cmp	al,58
	jae	drop_key
	jmp	short have_key
next_key_2:
	jmp	short next_key
have_key:
	mov	ax,1
done:
	pop	si
	pop	es
	pop	ds
	mov	sp,bp
	pop	bp
	ret
drop_key:
	dec	word ptr [si]
	push	si
	push	di
	add	si,3
	mov	di,si
	dec	di
	mov	cx,20
	rep	movsb
	pop	di
	pop	si
	jmp	short next_key
poll_key:
	mov	ah,1
	int	16h
	mov	ax,0
	je	done
	mov	ax,1
	cmp	word ptr [bp+mode],0
	je	done
	mov	ah,7
	int	21h
	mov	bx,word ptr [si]
	mov	byte ptr [bx+si+2],al
	inc	word ptr [si]
	cmp	al,0
	je	extended_key
	cmp	al,97
	jb	next_key_2
	cmp	al,123
	jae	next_key_2
	and	word ptr [bx+si+2],0dfh
	jmp	short next_key_2
extended_key:
	mov	ah,7
	int	21h
	mov	bx,word ptr [si]
	mov	byte ptr [bx+si+1],8
	cmp	al,75
	je	next_key_2
	mov	byte ptr [bx+si+1],9
	cmp	al,72
	je	next_key_2
	mov	byte ptr [bx+si+1],10
	cmp	al,77
	je	next_key_2
	mov	byte ptr [bx+si+1],11
	cmp	al,80
	je	next_key_2
	mov	byte ptr [bx+si+1],0
	dec	word ptr [si]
	jmp	short poll_key
poll_filtered_key_ endp
	finish
	end
#endasm
