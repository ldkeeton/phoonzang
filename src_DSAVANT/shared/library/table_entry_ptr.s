; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	public	table_entry_ptr_
; point ds:bx at entry al of the 4-byte offset/paragraph table at ds:2
table_entry_ptr_ proc near
	mov	cl,2
	shl	al,cl		;4-byte entries
	mov	bx,2		;table starts at ds:2
	add	bx,ax
	mov	ax,[bx]
	mov	dx,2[bx]	;paragraphs past ds
	mov	bx,ds
	add	bx,dx
	mov	ds,bx
	mov	bx,ax
	ret
table_entry_ptr_ endp
codeseg	ends
	end
