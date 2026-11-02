; Remove one MAZE block and compact the following blocks over it.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	maze_blocks:byte
	extrn	maze_paras_used:word
	extrn	maze_mem_seg:word

block_table_entry	equ	-4
released_paras		equ	-6

	public	release_maze_block_
; AX selects the block; BP addresses the caller's scratch slots.
release_maze_block_ proc near
	dec	ax
	mov	cl,2
	shl	ax,cl
	mov	bx,offset maze_blocks
	add	bx,ax
	mov	block_table_entry[bp],bx
	mov	ax,word ptr cs:2[bx]
	sub	word ptr cs:maze_paras_used,ax
	mov	released_paras[bp],ax
compact_next_block:
		mov	bx,block_table_entry[bp]
		mov	dx,word ptr cs:[bx]
		add	dx,word ptr cs:maze_mem_seg
		mov	es,dx
		mov	dx,word ptr cs:4[bx]
		add	dx,word ptr cs:maze_mem_seg
		mov	ds,dx
		mov	cx,word ptr cs:6[bx]
		; A zero-sized next entry ends the compaction pass.
		or	cx,cx
		je	short clear_final_entry
		.repeat
			; Move one 256-byte paragraph group from the next block.
			push	cx
			mov	cx,10h
			xor	si,si
			xor	di,di
			rep	movsb
			mov	cx,ds
			inc	cx
			mov	ds,cx
			mov	cx,es
			inc	cx
			mov	es,cx
			pop	cx
		.untilcxz
		mov	bx,block_table_entry[bp]
		mov	cx,released_paras[bp]
		mov	ax,word ptr cs:4[bx]
		sub	ax,cx
		mov	word ptr cs:[bx],ax
		add	ax,word ptr cs:6[bx]
		mov	word ptr cs:4[bx],ax
		mov	ax,word ptr cs:6[bx]
		mov	word ptr cs:2[bx],ax
		add	bx,4
		mov	block_table_entry[bp],bx
		; Continue with the next table entry.
		jmp	short compact_next_block
	; Clear the final entry whose following block has zero size.
clear_final_entry:
	mov	bx,block_table_entry[bp]
	xor	ax,ax
	mov	word ptr cs:[bx],ax
	mov	word ptr cs:2[bx],ax
	ret
release_maze_block_ endp

codeseg	ends
	end
