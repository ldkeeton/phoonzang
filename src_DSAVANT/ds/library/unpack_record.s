; Expand a packed record into bytes and append a zero word.
	include	lmacros.h
	assume	cs:codeseg
	extrn	misc_table_seg_:word, decode_packed_tree_leaf_:near
	record_length equ -4	;characters remaining to decode
	bits_remaining equ -2	;bits left in the current packed byte
	procdef	unpack_record,<<record_buffer,word>,<output_buffer,word>>	;source and destination buffers
	cld
	sub	sp,4
	pushs	ds,es,si,di
	movseg	es,ds
	mov	si,record_buffer
	mov	di,output_buffer
	movseg	es,<word ptr cs:misc_table_seg_>
	lodsb		;record's character count
	xor	ah,ah
	mov	word ptr record_length[bp],ax
	mov	word ptr bits_remaining[bp],8	;the first byte has eight bits
	lodsb		;prime the packed bit stream
	.while	<word ptr record_length[bp]> ne 0	;decode until the recorded character count is exhausted
		call	decode_packed_tree_leaf_
		mov	byte ptr [di],bl
		inc	di
		dec	word ptr record_length[bp]
	.endw
	mov	word ptr [di],0	;terminate the decoded record
	pops	di,si,es,ds
	mov	sp,bp
	pret
	pend	unpack_record
	finish
	end
