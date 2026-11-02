	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	decode_compressed_string_byte_:near

compressed_bit_count	equ	-2	; stack slot: bits remaining in the decoder tree
output_bytes_remaining	equ	-4	; stack slot: bytes left to write

	public	expand_compressed_string_
; Expand the requested number of bytes from the compressed string stream.
expand_compressed_string_ proc near
	mov	word ptr compressed_bit_count[bp],8
	lodsb
	.while	output_bytes_remaining[bp] ne 0
		call	decode_compressed_string_byte_
		mov	byte ptr es:[di],bl
		inc	di
		dec	word ptr output_bytes_remaining[bp]
	.endw
	ret
expand_compressed_string_ endp
codeseg	ends
	end
