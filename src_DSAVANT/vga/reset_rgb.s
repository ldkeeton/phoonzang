	include lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	palette_ptr:dword	;far pointer to the 256-entry 3-byte palette
	public	reset_rgb_, reset_rgb_no_memory_
red		equ	0ch		;red component, or -1 to reload the palette
green		equ	0eh		;green component
blue		equ	10h		;blue component
fill_seg	equ	-2		;segment of the allocated fill palette
; Load the VGA DAC from the palette, or set all 256 entries to one colour.
reset_rgb_	proc	near
	push	bp
	mov	bp,sp
	sub	sp,10
	pushs	ds,es,si,di
	movseg	es,ds
	mov	ax,word ptr [bp+red]
	.if	ax == 0ffffh		;-1: reload the saved palette
		lds	si,cs:dword ptr palette_ptr
		mov	cx,300h		;256 entries x 3 components
		outp	3c8h,0		;DAC write index 0
		.repeat
			.repeat
				mov	dx,3dah	;input status 1
				in	al,dx
			.until	not al and 1	;wait while bit 0 (blanking) is set
			.repeat
				mov	dx,3dah
				in	al,dx
			.until	al and 1	;then until the next blanking starts
			lodsb
			mov	dx,3c9h	;DAC data
			out	dx,al
		.untilcxz
	.else	short
		mov	ah,48h
		mov	bx,30h		;48 paragraphs = 768 bytes
		int	21h		;DOS allocate memory
		jnear	c,reset_rgb_no_memory_
		mov	word ptr [bp+fill_seg],ax
		mov	ds,ax
		xor	di,di
		mov	ax,word ptr [bp+red]
		mov	bx,word ptr [bp+green]
		mov	dx,word ptr [bp+blue]
		mov	cx,100h		;256 entries
		.repeat
			mov	byte ptr [di],al
			mov	byte ptr [di+1],bl
			mov	byte ptr [di+2],dl
			add	di,3
		.untilcxz
		movseg	ds,<word ptr [bp+fill_seg]>
		xor	si,si
		mov	cx,300h		;256 entries x 3 components
		outp	3c8h,0		;DAC write index 0
		.repeat
			.repeat
				mov	dx,3dah	;input status 1
				in	al,dx
			.until	not al and 1	;wait while bit 0 (blanking) is set
			.repeat
				mov	dx,3dah
				in	al,dx
			.until	al and 1	;then until the next blanking starts
			lodsb
			mov	dx,3c9h	;DAC data
			out	dx,al
		.untilcxz
		mov	bx,word ptr [bp+fill_seg]
		mov	es,bx
		dos	49h		;DOS free memory
	.endif
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
; Report the failed allocation and exit with status 1.
reset_rgb_no_memory_ label near
	fatal	reset_rgb_no_memory_msg
reset_rgb_no_memory_msg db 0dh,0ah,7,'Memory unavailable in RESET_RGB().',0,0ah,'$'
reset_rgb_	endp
codeseg	ends
	end
