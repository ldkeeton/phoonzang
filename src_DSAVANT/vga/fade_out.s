	include lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	delay_hook:dword
	public	fade_out_,dos_mem_loc_QHMQ_
palette_seg	equ	-2
changed	equ	-4
target_rgb	equ	-10
duration	equ	12h
; Step the saved VGA palette toward the requested components on each pass.
fade_out_	proc	near
	push	bp
	mov	bp,sp
	sub	sp,10
	pushs	ds,es,si,di
	movseg	es,ds
	lea	di,[bp+target_rgb]
	mov	ax,word ptr [bp+0ch]
	mov	word ptr ss:[di],ax
	add	di,2
	mov	ax,word ptr [bp+0eh]
	mov	word ptr ss:[di],ax
	add	di,2
	mov	ax,word ptr [bp+10h]
	mov	word ptr ss:[di],ax
	mov	ah,48h
	mov	bx,30h		;DOS allocate 48 paragraphs
	int	21h
	jnear	c,dos_mem_loc_QHMQ_
	mov	word ptr [bp+palette_seg],ax
	mov	ax,1017h
	xor	bx,bx
	mov	cx,100h
	mov	dx,word ptr [bp+palette_seg]
	mov	es,dx
	xor	dx,dx
	int	10h		;BIOS read 256 DAC entries
fade_loop:
	mov	word ptr [bp+changed],0
	movseg	ds,<word ptr [bp+palette_seg]>
	xor	si,si
	mov	cx,100h
fade_entry:
	push	cx
	mov	cx,3
	lea	di,word ptr [bp+target_rgb]
fade_component:
	xor	ax,ax
	mov	al,byte ptr [si]
	cmp	ax,word ptr ss:[di]
	je	fade_component_done
	mov	word ptr [bp+changed],1
	cmp	ax,word ptr ss:[di]
	jb	fade_component_up
	dec	byte ptr [si]
	jmp	short fade_component_done
fade_component_up:
	inc	byte ptr [si]
fade_component_done:
	inc	di
	inc	di
	inc	si
	loop	fade_component
	pop	cx
	loop	fade_entry
	mov	ax,word ptr [bp+changed]
	or	ax,ax
	je	palette_done
	movseg	ds,<word ptr [bp+palette_seg]>
	xor	si,si
	mov	cx,300h
	outp	3c8h,0		;DAC write index 0
palette_wait_off:
	mov	dx,3dah
	in	al,dx
	test	al,1
	jne	palette_wait_off
palette_wait_on:
	mov	dx,3dah
	in	al,dx
	test	al,1
	je	palette_wait_on
	lodsb
	mov	dx,3c9h
	out	dx,al
	loop	palette_wait_off
	mov	ax,word ptr [bp+duration]
	or	ax,ax
	je	fade_loop
	push	ax
	call	dword ptr cs:delay_hook
	pop	ax
	jmp	short fade_loop
palette_done:
	mov	bx,word ptr [bp+palette_seg]
	mov	es,bx
	dos	49h		;DOS free memory
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
fade_out_	endp
; Report allocation failure and exit with status 1.
dos_mem_loc_QHMQ_	proc	near
	movseg	ds,cs
	mov	dx,offset no_memory_msg
	dos	9
	dosx	4c01h
dos_mem_loc_QHMQ_	endp
no_memory_msg	db	0dh,0ah,7,'Memory unavailable in fade_out().',0,0ah,'$'
codeseg	ends
	end
