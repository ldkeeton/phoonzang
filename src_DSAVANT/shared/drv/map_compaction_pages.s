; Map the current EMS compaction source and destination pages into frame pages.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	ems_compact_dest_page:word
	extrn	ems_compact_source_page:word
	extrn	ems_mapping_handle:word

	public	map_compaction_pages_
; DI and SI hold byte offsets; the caller stores their logical page numbers.
map_compaction_pages_ proc near
	and	di,3fffh	; Keep each offset within its 16 KiB EMS frame page.
	and	si,3fffh
	mov	ah,44h
	mov	al,0		; Map destination into physical frame page zero.
	mov	bx,word ptr cs:ems_compact_dest_page
	mov	dx,word ptr cs:ems_mapping_handle
	int	67h
	.if	bx ne <word ptr cs:ems_compact_source_page>
		or	si,4000h	; Address the source in physical frame page one.
		mov	ah,44h
		mov	al,1		; Map source only when its logical page differs.
		mov	bx,word ptr cs:ems_compact_source_page
		mov	dx,word ptr cs:ems_mapping_handle
		int	67h
	.endif
	ret
map_compaction_pages_ endp

codeseg	ends
	end
