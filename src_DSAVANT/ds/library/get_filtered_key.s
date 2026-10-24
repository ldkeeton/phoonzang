; returns the next key from key_queue (filtering by mode), else waits on
; play_drv_wait and reads DOS keyboard input
	include	lmacros.h
	include	hlmacros.h
	assume	cs:codeseg
	extrn	key_queue_:word
	extrn	play_drv_wait_:dword
	procdef	get_filtered_key,<<mode,word>>
	cld
	pushs	si,ds,es
	cld
	movseg	ds,cs	; key_queue lives in the code segment
	mov	es,ax
	lea	si,key_queue_
next_key:
	mov	bx,word ptr [si]	;[si] = queued count, keys from [si+2]
	or	bx,bx
	je	read_key	;queue empty: wait for a key
	mov	ax,mode	;mode 0: any key passes
	cmp	al,0
	je	take_key
	cmp	al,2
	je	digit_mode	;mode 2: digits only
	mov	al,byte ptr [si+2]	;oldest queued key; BS, cursor 8-11, ESC, CR pass
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
	cmp	al,96	;else only 32..95 (lower case was folded on entry)
	jae	drop_key
	jmp	near ptr take_key
digit_mode:
	mov	al,byte ptr [si+2]	;BS, ESC, CR or 0..9 pass
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
next_key_2:	;short-jump trampoline back to next_key
	jmp	short next_key
take_key:
	dec	word ptr [si]	;consume: count-- (queue is not shifted)
	mov	al,byte ptr [si+2]
	mov	ah,0
done:
	pops	es,ds,si
	mov	sp,bp
	pret
drop_key:	;discard oldest: count--, shift the queue left one byte
	dec	word ptr [si]
	pushs	si,di
	add	si,3
	mov	di,si
	dec	di
	mov	cx,20
	rep	movsb
	pops	di,si
	jmp	short next_key
read_key:
	xor	ax,ax
	push	ax
	call	dword ptr cs:play_drv_wait_	;play driver wait hook, arg 0
	pop	ax
	dos	7	; DOS 07h: unechoed key input, waits
	mov	ah,0
	cmp	mode,0	;mode 0: return the key unqueued
	je	done
	mov	bx,word ptr [si]	;append to key_queue
	mov	byte ptr [bx+si+2],al
	inc	word ptr [si]
	cmp	al,0	;0 = extended key; scan code follows
	je	extended_key
	cmp	al,97	;fold a..z to upper case
	jb	next_key_2
	cmp	al,123
	jae	next_key_2
	and	word ptr [bx+si+2],0dfh
	jmp	short next_key_2
extended_key:
	dos	7	; read the scan code
	mov	bx,word ptr [si]
	mov	byte ptr [bx+si+1],8
	cmp	al,75	;left -> 8
	je	ext_done
	mov	byte ptr [bx+si+1],9
	cmp	al,72	;up -> 9
	je	ext_done
	mov	byte ptr [bx+si+1],10
	cmp	al,77	;right -> 10
	je	ext_done
	mov	byte ptr [bx+si+1],11
	cmp	al,80	;down -> 11
	je	ext_done
	mov	byte ptr [bx+si+1],0	;other extended key: drop it, keep reading
	dec	word ptr [si]
	jmp	short read_key
ext_done:
	jmp	near ptr next_key	;re-filter from the queue
	pend	get_filtered_key
	finish
	end
