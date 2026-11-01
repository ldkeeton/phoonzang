	include lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	palette_ptr:dword
	extrn	delay_hook:dword
	public	fade_in_
palette_segment	equ	-2
palette_changed	equ	-4
duration	equ	0ch
; Move the saved VGA palette toward the palette pointed to by palette_ptr.
fade_in_	proc	near
	push	bp
	mov	bp,sp
	sub	sp,0ah
	pushs	ds,es,si,di
	movseg	es,ds
	mov	ah,48h
	mov	bx,30h		;DOS allocation size: 48 paragraphs
	int	21h
	; Continue only when DOS returned a segment successfully.
	jae	palette_allocated
	jmp	no_memory_exit
palette_allocated:
	mov	word ptr [bp+palette_segment],ax
	mov	ax,1017h
	xor	bx,bx
	mov	cx,100h		;Read all 256 VGA palette entries.
	mov	dx,word ptr [bp+palette_segment]
	mov	es,dx
	xor	dx,dx
	int	10h		;BIOS: save the current DAC palette.
	movseg	ds,<word ptr [bp+palette_segment]>
fade_pass:
	mov	word ptr [bp+palette_changed],0
	movseg	ds,<word ptr [bp+palette_segment]>
	xor	si,si
	les	di,dword ptr cs:palette_ptr
	mov	cx,100h		;Compare every palette entry.
fade_entry:
	push	cx
	mov	cx,3		;Each VGA entry has red, green, and blue components.
fade_component:
	mov	al,byte ptr [si]
	cmp	al,byte ptr es:[di]
	je	fade_component_done
	mov	word ptr [bp+palette_changed],1
	cmp	al,byte ptr es:[di]
	; Increase a component below its target; otherwise decrease it.
	jb	fade_component_up
	dec	byte ptr [si]
	jmp	short fade_component_done
fade_component_up:
	inc	byte ptr [si]
fade_component_done:
	inc	si
	inc	di
	loop	fade_component
	pop	cx
	loop	fade_entry
	mov	ax,word ptr [bp+palette_changed]
	or	ax,ax
	je	palette_done
	movseg	ds,<word ptr [bp+palette_segment]>
	xor	si,si
	mov	cx,300h		;Send all 768 RGB components to the VGA DAC.
	outp	3c8h,0		;Select DAC entry zero.
wait_retrace_off:
	mov	dx,3dah
	in	al,dx
	test	al,1
	jne	wait_retrace_off
wait_retrace_on:
	mov	dx,3dah
	in	al,dx
	test	al,1
	je	wait_retrace_on
	lodsb
	mov	dx,3c9h
	out	dx,al
	loop	wait_retrace_off
	mov	ax,word ptr [bp+duration]
	or	ax,ax
	; A zero duration skips the optional delay call.
	je	repeat_fade
	push	ax
	call	dword ptr cs:delay_hook
	pop	ax
repeat_fade:
	jmp	short fade_pass
palette_done:
	mov	bx,word ptr [bp+palette_segment]
	mov	es,bx
	dos	49h		;Release the temporary palette buffer.
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
fade_in_	endp
; Report allocation failure and exit with status 1.
no_memory_exit:
	; This branch is reached before the main routine restores its saved registers.
	; The process exits immediately after printing the allocation error.
	movseg	ds,cs
	mov	dx,offset no_memory_msg
	dos	9
	dosx	4c01h
no_memory_msg	db	0dh,0ah,7,'Memory unavailable in fade_in().',0,0ah,'$'
codeseg	ends
	end
