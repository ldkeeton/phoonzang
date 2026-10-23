; probes int 67h for an EMS driver and records its page frame, handle and size;
; shares the caller's frame
	include	lmacros.h
	assume	cs:codeseg
	extrn	ems_driver_signature:byte
	extrn	ems_allocated_paragraphs:word, ems_handle:word, ems_page_frame_segment:word
	public	detect_expanded_memory
max_pages equ	18h		;24 pages = 384 KB: limit on the EMS memory taken
detect_expanded_memory proc near
	push	ds
	push	es
	mov	ah,35h		;DOS 35h: get the int 67h vector into es:bx
	mov	al,67h
	int	21h
	mov	di,0ah		;device driver name field in the driver header
	mov	ax,cs
	mov	ds,ax
	mov	si,offset ems_driver_signature	;"EMMXXXX0" signature in the code segment
	mov	cx,8
	rep	cmpsb		;compare the driver name with the signature
	or	cx,cx
	jne	done		;name differs: no EMS driver
	mov	ah,42h		;EMS 42h: get unallocated page count, bx = pages, dx = total
	int	67h
	cmp	bx,max_pages
	jb	store_pages
	mov	bx,max_pages
store_pages:
	mov	word ptr cs:ems_allocated_paragraphs,bx	;pages to allocate
	mov	ah,43h		;EMS 43h: allocate bx pages, dx = handle
	int	67h
	or	ah,ah
	jne	done		;allocation failed: keep the unshifted page count, no frame
	mov	word ptr cs:ems_handle,dx	;EMS handle
	mov	bx,word ptr cs:ems_allocated_paragraphs
	mov	cl,0ah		;16 KB pages: shift 10 bits to get paragraphs
	shl	bx,cl
	mov	word ptr cs:ems_allocated_paragraphs,bx	;allocated size in paragraphs
	mov	ah,41h		;EMS 41h: get page frame segment into bx
	int	67h
	mov	word ptr cs:ems_page_frame_segment,bx	;page frame segment
done:
	pop	es
	pop	ds
	ret
detect_expanded_memory endp
	finish
	end
