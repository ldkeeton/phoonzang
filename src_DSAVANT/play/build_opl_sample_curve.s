; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	sample_level_center:word
	extrn	sample_output_table:byte
	extrn	opl_velocity_scale_table:byte
	extrn	sample_output_table_upper:byte
	extrn	play_device:byte

volume_arg	equ	12h	; caller-frame volume byte that scales the curve

; Fill both 128-byte halves of the sample output table from the caller's volume.
	procdef	build_opl_sample_curve
	pushs	di,si
	mov	di,offset sample_output_table
	mov	si,offset opl_velocity_scale_table
	xor	bh,bh
	mov	bl,byte ptr volume_arg[bp]
	mov	cx,bx
	add	cx,bx
	mov	ax,80h
	mul	cx
	mov	al,ah
	mov	ah,dl
	; Limit the derived midpoint to the 128-entry curve size.
	umin	ax,80h
build_opl_sample_curve_forward1:
	mov	word ptr cs:sample_level_center,ax
	mov	bx,0
build_opl_sample_curve_back1:
	; Scale each descending index, capped at 0x80 before subtracting it.
	mov	ax,7Fh
	sub	ax,bx
	mul	cx
	mov	al,ah
	mov	ah,dl
	; Cap the scaled descending index at 0x7f.
	cmp	ax,80h
	jb	build_opl_sample_curve_forward2
	mov	ax,7Fh
build_opl_sample_curve_forward2:
	neg	ax
	add	ax,word ptr cs:sample_level_center
	dec	ax
	cmp	byte ptr cs:play_device,4
	mov	si,ax
	mov	al,byte ptr cs:[si+opl_velocity_scale_table]
	mov	byte ptr cs:[bx+sample_output_table],al
	inc	bx
	cmp	bx,80h
	jb	build_opl_sample_curve_back1
	mov	bx,0
build_opl_sample_curve_back2:
	; Scale each ascending index, capped at 0x7f before adding the center.
	mov	ax,bx
	mul	cx
	mov	al,ah
	mov	ah,dl
	; Cap the scaled ascending index at 0x7f.
	cmp	ax,80h
	jb	build_opl_sample_curve_forward3
	mov	ax,7Fh
build_opl_sample_curve_forward3:
	add	ax,word ptr cs:sample_level_center
	cmp	byte ptr cs:play_device,4
	mov	si,ax
	mov	al,byte ptr cs:[si+opl_velocity_scale_table]
	mov	byte ptr cs:[bx+sample_output_table_upper],al
	inc	bx
	cmp	bx,80h
	jb	build_opl_sample_curve_back2
	pops	si,di
	ret
; Preserve the trailing byte that belongs to this recorded root span.
	db	0
	pend	build_opl_sample_curve
codeseg	ends
	end
