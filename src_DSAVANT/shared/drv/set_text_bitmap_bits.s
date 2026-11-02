	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; Add the selected scaled positions to a packed text bitmap row.
; The caller's frame holds the stride, bit limit, row width, and accumulator.
bit_stride	equ	-30h
bit_limit	equ	-32h
row_width	equ	-34h
row_accumulator	equ	-3ch

	public	set_text_bitmap_bits_
set_text_bitmap_bits_ proc near
	; The first position starts at the current index; later positions advance
	; by bit_stride before returning to the accumulator update.
	jmp short bitmap_loop
bitmap_step:
	add	si, word ptr bit_stride[bp]
bitmap_loop:
	add	word ptr row_accumulator[bp], dx
	mov	bx, word ptr row_accumulator[bp]
	.if	bx ge <word ptr row_width[bp]>
		sub	bx, word ptr row_width[bp]
		mov	word ptr row_accumulator[bp], bx
		inc	si
	.endif
	; Stop when the index reaches the requested count.
	.if	si ge <word ptr bit_limit[bp]>
	bitmap_return:
		ret
	.endif
	; A negative index is also the routine's early-exit condition.
	test	si, 8000h
	jne	bitmap_return
	; Divide the bit index into a byte offset and a high-to-low bit mask.
	mov	cl, 3
	mov	ax, si
	shr	ax, cl
	mov	bx, ax
	mov	ax, si
	and	al, 7
	mov	cl, al
	mov	al, 80h
	shr	al, cl
	or	byte ptr cs:[bx+di], al
	jmp short bitmap_step
set_text_bitmap_bits_ endp
	codeseg	ends
	end
