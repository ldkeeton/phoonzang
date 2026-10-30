; Store the nearest palette entry for a requested RGB value.
; The first argument is the palette slot; the second is the packed lookup value.
; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	pixel_plane_lookup:byte
	extrn	rgb_intensity_lookup:byte
	public	set_rgb_
palette_index	equ	0ch		;stack arg: palette lookup slot
requested_rgb	equ	0eh		;stack arg: value searched in the table
set_rgb_	proc	near
	push	bp
	mov	bp,sp
	sub	sp,8		;reserve the original eight-byte local frame
	pushs	ds,es,si,di
	movseg	es,ds
	mov	bx,offset pixel_plane_lookup
	add	bx,word ptr palette_index[bp]
	mov	ax,word ptr requested_rgb[bp]
	cmp	ax,0ffffh		;the all-ones value clears this palette slot
	jne	short lookup_rgb
	mov	word ptr cs:[bx],0ffh
	jmp	short set_rgb_done
lookup_rgb:
	mov	si,offset rgb_intensity_lookup
	mov	ax,8
	shl	ax,1			;each of eight entries has a two-byte pair
	add	si,ax
	mov	ax,word ptr requested_rgb[bp]
	mov	cx,8
rgb_search_loop:
	cmp	byte ptr cs:[si],al
	jbe	short rgb_search_done	;stop at the first threshold not below the request
	sub	si,2
	loop	rgb_search_loop
rgb_search_done:
	mov	al,byte ptr cs:[si+1]
	mov	byte ptr cs:[bx],al
set_rgb_done:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
set_rgb_	endp
codeseg	ends
	end
