/* returns the next key from key_queue (filtering by mode), else waits on play_drv_wait and reads DOS keyboard input */
#asm
	include	lmacros.h
	assume	cs:codeseg
	extrn	key_queue_:word
	extrn	play_drv_wait_:dword
mode		equ	4	;arg: 0 any key, 2 digits, else printable/control
	public	get_filtered_key_
get_filtered_key_ proc near
	push	bp
	mov	bp,sp
	cld
	push	si
	push	ds
	push	es
	cld
	mov	ax,cs
	mov	ds,ax
	mov	es,ax
	lea	si,key_queue_
next_key:
	mov	bx,word ptr [si]
	or	bx,bx
	je	read_key
	mov	ax,word ptr [bp+mode]
	cmp	al,0
	je	take_key
	cmp	al,2
	je	digit_mode
	mov	al,byte ptr [si+2]
	cmp	al,8
	je	take_key
	cmp	al,9
	je	take_key
	cmp	al,10
	je	take_key
	cmp	al,11
	je	take_key
	cmp	al,27
	je	take_key
	cmp	al,13
	je	take_key
	cmp	al,32
	jb	drop_key
	cmp	al,96
	jae	drop_key
	jmp	near ptr take_key
digit_mode:
	mov	al,byte ptr [si+2]
	cmp	al,8
	je	take_key
	cmp	al,27
	je	take_key
	cmp	al,13
	je	take_key
	cmp	al,48
	jb	drop_key
	cmp	al,58
	jae	drop_key
	jmp	short take_key
next_key_2:
	jmp	short next_key
take_key:
	dec	word ptr [si]
	mov	al,byte ptr [si+2]
	mov	ah,0
done:
	pop	es
	pop	ds
	pop	si
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
read_key:
	xor	ax,ax
	push	ax
	call	dword ptr cs:play_drv_wait_
	pop	ax
	mov	ah,7
	int	21h
	mov	ah,0
	cmp	word ptr [bp+mode],0
	je	done
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
	je	ext_done
	mov	byte ptr [bx+si+1],9
	cmp	al,72
	je	ext_done
	mov	byte ptr [bx+si+1],10
	cmp	al,77
	je	ext_done
	mov	byte ptr [bx+si+1],11
	cmp	al,80
	je	ext_done
	mov	byte ptr [bx+si+1],0
	dec	word ptr [si]
	jmp	short read_key
ext_done:
	jmp	near ptr next_key
get_filtered_key_ endp
	finish
	end
#endasm
