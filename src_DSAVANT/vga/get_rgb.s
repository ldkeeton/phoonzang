	include lmacros.h
codeseg	segment byte public 'code'
	assume cs:codeseg
	public get_rgb_
palette_index	equ 0ch
red_output	equ 0eh
green_output	equ 10h
blue_output	equ 12h
; Read a palette entry and store its RGB components through the output pointers.
get_rgb_	proc near
	push bp
	mov bp,sp
	pushs ds,es,si,di
	movseg es,ds
	mov bx,word ptr [bp+palette_index]
	videox	1015h	; BIOS returns red, green, and blue in DH, CH, and CL
	mov bx,word ptr [bp+red_output]
	xor ah,ah
	mov al,dh
	mov word ptr [bx],ax
	mov al,ch
	mov bx,word ptr [bp+green_output]
	mov word ptr [bx],ax
	mov al,cl
	mov bx,word ptr [bp+blue_output]
	mov word ptr [bx],ax
	pops di,si,es,ds
	mov sp,bp
	pop bp
	ret
get_rgb_	endp
codeseg	ends
	end
