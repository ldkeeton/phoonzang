	include lmacros.h
codeseg	segment byte public 'code'
	assume cs:codeseg
	extrn	palette_ptr:dword	;far pointer to the saved 256-entry RGB palette
	public	set_rgb_
palette_index	equ	0ch	;palette entry to select
red_component	equ	0eh	;red value, or -1 to load the saved entry
green_component	equ	10h	;green value
blue_component	equ	12h	;blue value

; Set one VGA DAC entry from RGB values or the saved palette.
set_rgb_	proc	near
	push	bp
	mov	bp,sp
	pushs	ds,es,si,di
	movseg	es,ds
	mov	ax,word ptr [bp+red_component]
	cmp	ax,0ffffh
	jne	short use_supplied_rgb
	les	di,dword ptr cs:palette_ptr
	mov	ax,word ptr [bp+palette_index]
	mov	bx,ax
	shl	ax,1
	add	bx,ax
	mov	al,byte ptr es:[di+bx]
	mov	dh,al
	mov	al,byte ptr es:[di+bx+1]
	mov	ch,al
	mov	al,byte ptr es:[di+bx+2]
	mov	cl,al
	jmp	short program_dac_entry
; Copy the supplied components into the BIOS register convention.
use_supplied_rgb:
	mov	cx,word ptr [bp+blue_component]
	mov	bx,word ptr [bp+green_component]
	mov	ch,bl
	mov	bx,word ptr [bp+red_component]
	mov	dh,bl
; Program the selected DAC entry through VGA BIOS function 1010h.
program_dac_entry:
	mov	bx,word ptr [bp+palette_index]
	videox	1010h
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
set_rgb_	endp
codeseg	ends
	end
