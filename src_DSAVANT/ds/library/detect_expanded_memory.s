; probes int 67h for an EMS driver and records its page frame, handle and size;
; shares the caller's frame
	include	lmacros.h
	include	hlmacros.h
	assume	cs:codeseg
	extrn	ems_driver_signature:byte
	extrn	ems_allocated_paragraphs:word, ems_handle:word, ems_page_frame_segment:word
	public	detect_expanded_memory
max_pages equ	18h		;24 pages = 384 KB: limit on the EMS memory taken
detect_expanded_memory proc near
	pushs	ds,es
	dos	35h,67h		;get the int 67h vector into es:bx
	mov	di,0ah		;device driver name field in the driver header
	movseg	ds,cs
	mov	si,offset ems_driver_signature	;"EMMXXXX0" signature in the code segment
	mov	cx,8
	rep	cmpsb		;compare the driver name with the signature
	.if	not cx		;else no EMS driver
		ems	42h		;get unallocated page count, bx = pages, dx = total
		umin	bx,max_pages
		mov	word ptr cs:ems_allocated_paragraphs,bx	;pages to allocate
		ems	43h		;allocate bx pages, dx = handle
		.if	not ah		;else keep the unshifted page count, no frame
			mov	word ptr cs:ems_handle,dx	;EMS handle
			mov	bx,word ptr cs:ems_allocated_paragraphs
			mov	cl,0ah		;16 KB pages: shift 10 bits to get paragraphs
			shl	bx,cl
			mov	word ptr cs:ems_allocated_paragraphs,bx	;allocated size in paragraphs
			ems	41h		;get page frame segment into bx
			mov	word ptr cs:ems_page_frame_segment,bx	;page frame segment
		.endif
	.endif
	pops	es,ds
	ret
detect_expanded_memory endp
	finish
	end
