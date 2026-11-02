; Remove one EMS block entry and move following blocks over its old range.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	ems_blocks:word
	extrn	ems_paras_used:word
	extrn	ems_frame_seg:word
	extrn	maze_mem_seg:word
	extrn	ems_compact_source_page:word
	extrn	ems_compact_dest_page:word
	extrn	map_compaction_pages_:near

block_table_entry	equ	-4	; Caller scratch slot holding the current table entry.
released_paragraphs	equ	-6	; Caller scratch slot holding the removed block's size.

	public	release_and_compact_ems_blocks_
; AX selects the block to remove; BP addresses the caller's scratch slots.
release_and_compact_ems_blocks_ proc near
	dec	ax
	mov	cl,2
	shl	ax,cl
	mov	bx,offset ems_blocks
	add	bx,ax
	mov	block_table_entry[bp],bx
	mov	ax,word ptr cs:2[bx]
	sub	word ptr cs:ems_paras_used,ax
	mov	released_paragraphs[bp],ax
compact_next_block:
		mov	bx,block_table_entry[bp]
		mov	di,word ptr cs:[bx]
		mov	dx,word ptr cs:ems_frame_seg
		mov	es,dx
		mov	ds,dx
		mov	si,word ptr cs:4[bx]
		add	dx,word ptr cs:maze_mem_seg
		mov	cx,word ptr cs:6[bx]
		; A zero-sized following block ends compaction and clears this entry.
		or	cx,cx
		jne	short compact_block_has_data
		jmp	near ptr clear_final_block_entry
compact_block_has_data:
		push	cx
		; Convert paragraph positions into EMS logical page and frame offsets.
		mov	ax,si
		mov	cl,0ah
		shr	ax,cl
		mov	cs:ems_compact_source_page,ax
		and	si,3ffh
		mov	cl,4
		shl	si,cl
		mov	ax,di
		mov	cl,0ah
		shr	ax,cl
		mov	cs:ems_compact_dest_page,ax
		and	di,3ffh
		mov	cl,4
		shl	di,cl
		call	map_compaction_pages_
		pop	cx
compact_copy_next_chunk:
		push	cx
		; Copy 16 paragraphs (256 bytes), then remap any crossed EMS page.
		mov	cx,10h
		rep	movsb
		xor	dx,dx
		cmp	di,4000h
		jne	short compact_check_source_boundary
		inc	word ptr cs:ems_compact_dest_page
		inc	dx
compact_check_source_boundary:
		cmp	si,4000h
		je	short compact_advance_source_page
		cmp	si,8000h
		jne	short compact_remap_if_needed
compact_advance_source_page:
		inc	word ptr cs:ems_compact_source_page
		inc	dx
compact_remap_if_needed:
		or	dx,dx
		je	short compact_chunk_ready
		call	map_compaction_pages_
compact_chunk_ready:
		pop	cx
		loop	compact_copy_next_chunk
		mov	bx,block_table_entry[bp]
		mov	cx,released_paragraphs[bp]
		mov	ax,word ptr cs:4[bx]
		sub	ax,cx
		mov	word ptr cs:[bx],ax
		add	ax,word ptr cs:6[bx]
		mov	word ptr cs:4[bx],ax
		mov	ax,word ptr cs:6[bx]
		mov	word ptr cs:2[bx],ax
		add	bx,4
		mov	block_table_entry[bp],bx
		; Continue with the next EMS table entry.
		jmp	near ptr compact_next_block
clear_final_block_entry:
		mov	bx,block_table_entry[bp]
		xor	ax,ax
		mov	word ptr cs:[bx],ax
		mov	word ptr cs:2[bx],ax
		ret
release_and_compact_ems_blocks_ endp

codeseg	ends
	end
