; stirs the random seeds, then returns 1 if a key allowed by mode is waiting in
; key_queue or the BIOS buffer, moving a BIOS key into the queue when mode is
; nonzero
	include	lmacros.h
	include	hlmacros.h
	assume	cs:codeseg
	extrn	key_queue_:word
	extrn	stir_random_seeds_:near
mode		equ	4	;arg: 0 any key, 2 digits, else printable/control
	public	poll_filtered_key_
poll_filtered_key_ proc near
	frame
	cld
	pushs	ds,es,si
	cld
	movseg	ds,cs	; key_queue lives in the code segment
	mov	es,ax
	call	stir_random_seeds_	;stir the RNG on every poll
	lea	si,key_queue_
next_key:
	mov	bx,word ptr [si]	;[si] = queued count, keys from [si+2]
	or	bx,bx
	je	poll_key	;queue empty: ask the BIOS
	mov	ax,word ptr [bp+mode]	;mode 0: any key passes
	cmp	al,0
	je	have_key
	cmp	al,2
	je	digit_mode	;mode 2: digits only
	mov	al,byte ptr [si+2]	;oldest queued key; BS, cursor 8-11, ESC, CR pass
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
	cmp	al,96	;else only 32..95 (lower case was folded on entry)
	jae	drop_key
	jmp	near ptr have_key
digit_mode:
	mov	al,byte ptr [si+2]	;BS, ESC, CR or 0..9 pass
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
next_key_2:	;short-jump trampoline back to next_key
	jmp	short next_key
have_key:
	mov	ax,1	;return 1; the key stays queued
done:
	pops	si,es,ds
	unframe
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
poll_key:
	kbd	1	; int 16h/1: key waiting? (ZF set = none)
	mov	ax,0	;mov keeps ZF: return 0 if none
	je	done
	mov	ax,1
	cmp	word ptr [bp+mode],0	;mode 0: report it without consuming
	je	done
	dos	7	; DOS 07h: move it into key_queue
	mov	bx,word ptr [si]
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
	je	next_key_2
	mov	byte ptr [bx+si+1],9
	cmp	al,72	;up -> 9
	je	next_key_2
	mov	byte ptr [bx+si+1],10
	cmp	al,77	;right -> 10
	je	next_key_2
	mov	byte ptr [bx+si+1],11
	cmp	al,80	;down -> 11
	je	next_key_2
	mov	byte ptr [bx+si+1],0	;other extended key: drop it, keep reading
	dec	word ptr [si]
	jmp	short poll_key
poll_filtered_key_ endp
	finish
	end
