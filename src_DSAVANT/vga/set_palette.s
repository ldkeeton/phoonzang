	include lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	palette_ptr:dword	;far pointer to the saved 256-entry VGA palette
	extrn	rgb_to_palette:byte	;512-byte RGB-to-palette lookup map
	public	set_palette_
palette_source_offset	equ	0ch	;DS offset of the 768-byte palette source
lookup_source_offset	equ	0eh	;DS offset of the 512-byte lookup source

; Copy the supplied palette and RGB lookup map into the driver's buffers.
set_palette_	proc	near
	push	bp
	mov	bp,sp
	sub	sp,8
	pushs	ds,es,di,si
	movseg	es,ds
	les	di,dword ptr cs:palette_ptr
	mov	si,word ptr [bp+palette_source_offset]
	mov	cx,300h		;256 palette entries x 3 color components
	rep	movsb
	movseg	es,cs
	mov	di,offset rgb_to_palette
	mov	si,word ptr [bp+lookup_source_offset]
	mov	cx,200h		;512-byte RGB-to-palette map
	rep	movsb
	pops	si,di,es,ds
	mov	sp,bp
	pop	bp
	ret
set_palette_	endp
codeseg	ends
	end
