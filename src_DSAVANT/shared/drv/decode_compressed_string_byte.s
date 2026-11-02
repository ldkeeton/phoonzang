; Decode one byte from the file's bit-tree string stream.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg

file_handle	equ	0ch	; caller's DOS file handle at BP+0ch
bits_remaining	equ	-2	; caller's bit counter at BP-2

	public	decode_compressed_string_byte_
decode_compressed_string_byte_ proc near
	mov	cx,word ptr bits_remaining[bp]
	xor	bx,bx		; Start traversal at the root node.
decode_left_bit:
	shl	al,1		; Each stream bit selects one child.
	jb	short decode_right_bit
	; The high bit distinguishes an encoded leaf from a direct child link.
	test	word ptr [bx],8000h
	jne	short decode_left_leaf
	mov	bx,word ptr [bx]
	jmp	short decode_return
decode_left_leaf:
	mov	bx,word ptr [bx]
	neg	bx
	shl	bx,1
	shl	bx,1
decode_next_tree_bit:
	loop	decode_left_bit
	mov	cx,8
	lodsb
	cmp	si,1400h	; Refill after consuming the 4 KiB input window.
	jb	short decode_left_bit
	pushs	ax,di,bx,cx
	mov	dx,400h	; The stream buffer begins at DS:0400.
	mov	bx,word ptr file_handle[bp]
	mov	cx,1000h
	dos	3fh	; DOS reads the next 4 KiB into DS:0400.
	mov	si,400h
	pops	cx,bx,di,ax
	jmp	short decode_left_bit
decode_right_bit:
	; Apply the same high-bit test to the node's right child.
	test	word ptr [bx+2],8000h
	jne	short decode_right_leaf
	mov	bx,word ptr [bx+2]
	jmp	short decode_return
decode_right_leaf:
	mov	bx,word ptr [bx+2]
	neg	bx
	shl	bx,1
	shl	bx,1
	jmp	short decode_next_tree_bit
decode_return:
	dec	cx
	jne	short decode_store_count
	mov	cx,8
	lodsb
	cmp	si,1400h	; Keep the same buffered stream across returned bytes.
	jb	short decode_store_count
	pushs	ax,di,bx,cx
	mov	dx,400h	; Read the next 4 KiB into the same buffer window.
	mov	bx,word ptr file_handle[bp]
	mov	cx,1000h
	dos	3fh
	mov	si,400h
	pops	cx,bx,di,ax
decode_store_count:
	mov	word ptr bits_remaining[bp],cx
	ret
decode_compressed_string_byte_ endp

codeseg	ends
	end
