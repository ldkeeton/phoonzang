	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg

	extrn	music_patch_segment:word
	extrn	music_patch_offset:word
	extrn	opl_note_index:byte
	extrn	opl_channel_index:byte
	extrn	opl_register_shadow_b1_bc:byte
	extrn	opl_operator_map:word
	extrn	opl_write_:near

; Load the selected patch's operator registers for the current OPL channel.
	procdef	opl_load_patch
	pushs	bx,cx,dx,si,ds
	mov	bx,word ptr cs:music_patch_segment
	mov	ds,bx
	mov	si,word ptr cs:music_patch_offset
	mov	bl,byte ptr cs:opl_note_index
	shr	bl,1
	shr	bl,1
	xor	bh,bh
	mov	al,byte ptr [bx+si]	; patch number for this group of four notes
	xor	ah,ah
	mov	bl,0bh			; patch records are 11 bytes
	mul	bl
	add	ax,40h			; patch records follow the 40h-byte header
	add	si,ax
	mov	al,byte ptr cs:opl_note_index
	and	al,3
	xor	ah,ah
	mov	bl,0bh
	mul	bl
	add	ax,0
	add	si,ax
	mov	dx,si
	mov	bl,byte ptr cs:opl_channel_index
	mov	ah,bl
	xor	bh,bh
	mov	al,byte ptr cs:[bx+opl_register_shadow_b1_bc]
	add	ah,0b1h			; B1h is the channel's OPL key-off register
	and	al,0dfh
	call	opl_write_
	mov	bl,byte ptr cs:opl_channel_index
	inc	bl
	shl	bl,1
	xor	bh,bh
	mov	ch,byte ptr cs:[bx+opl_operator_map]
	mov	bx,offset opl_patch_register_map
; Apply each register/value pair using the channel's operator offset.
opl_load_patch_register_loop:
	mov	al,byte ptr cs:[bx]
	xor	ah,ah
	mov	si,dx
	add	si,ax
	lodsb
	mov	ah,byte ptr cs:[bx+1]
	add	ah,ch
	call	opl_write_
	add	bx,2
	cmp	word ptr cs:[bx],0ffh
	jne	opl_load_patch_register_loop
	mov	ax,0ah
	mov	si,dx
	add	si,ax
	lodsb
	mov	ah,0c1h
	add	ah,byte ptr cs:opl_channel_index
	call	opl_write_
	pops	ds,si,dx,cx,bx
	ret
; Data embedded after the return is part of the original fragment.
	db	1,40h,6,43h
opl_patch_register_map label byte
	db	0,20h,2,60h,3,80h,4,0e0h
	db	5,23h,7,63h,8,83h,9,0e3h,0ffh
	pend	opl_load_patch

codeseg	ends
	end
