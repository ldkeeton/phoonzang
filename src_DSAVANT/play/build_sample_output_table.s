; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume cs:codeseg
	extrn	play_device:byte
	extrn	build_opl_sample_curve_:near
	extrn	sample_output_table:byte
	extrn	sample_count_limit:byte
	extrn	sample_count_bias:byte

volume_arg	equ	12h	;caller volume byte used to build all 256 entries

; Fill the sample output table for the selected playback device.
	procdef	build_sample_output_table
	mov	bl,byte ptr cs:play_device
	shl	bl,1
	xor	bh,bh
	jmp	word ptr cs:[bx+sample_count_dispatch]
sample_count_dispatch label word
	dw	offset sample_count_formula_case
	dw	offset build_opl_sample_curve_
	dw	offset sample_count_direct_case
	dw	offset sample_count_direct_case
	dw	offset build_opl_sample_curve_

sample_count_formula_case:
	mov	ah,0
	mov	al,byte ptr volume_arg[bp]
	cmp	al,49h		;values below 73 use a zero scale
	jb	short sample_count_bias_ready
	sub	al,49h		;subtract the observed 73-byte threshold
	shr	al,1		;halve the excess to form the scale
	mov	ah,al
sample_count_bias_ready:
	mov	byte ptr cs:sample_count_bias,ah
	mov	bx,offset sample_output_table
	xor	cl,cl
	mov	al,byte ptr volume_arg[bp]
	mov	byte ptr cs:sample_count_limit,al

	; Scale each index, floor below zero, and cap at the input byte.
sample_count_formula_loop:
	mov	al,byte ptr volume_arg[bp]
	mul	cl
	sub	ah,byte ptr cs:sample_count_bias
	js	short sample_count_floor_zero
	cmp	ah,byte ptr cs:sample_count_limit
	jb	short sample_count_write
	mov	ah,byte ptr cs:sample_count_limit
	jmp	near ptr sample_count_write
sample_count_floor_zero:
	mov	ah,0
sample_count_write:
	inc	ah		;store a one-based count
	mov	byte ptr cs:[bx],ah
	inc	bx
	inc	cl
	jne	short sample_count_formula_loop	;byte wrap completes all 256 entries
	ret

sample_count_direct_case:
	mov	bx,offset sample_output_table
	xor	cl,cl
	mov	al,byte ptr volume_arg[bp]
	mov	dl,al
	shr	al,1
	shr	al,1
	; The direct devices store the high product byte for each index.
sample_count_direct_loop:
	mov	al,dl
	mul	cl
	mov	byte ptr cs:[bx],ah
	inc	bx
	inc	cl
	jne	short sample_count_direct_loop	;byte wrap completes all 256 entries
	ret
	pend	build_sample_output_table
codeseg	ends
	end
