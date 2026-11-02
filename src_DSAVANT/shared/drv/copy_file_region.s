; Copy bytes from one DOS file handle to another through the shared buffer.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	scratch_buf_seg:word

input_file_handle	equ	-2	; caller's stack slot containing the input handle
output_file_handle	equ	-4	; caller's stack slot containing the output handle

	public	copy_file_region_
copy_file_region_ proc near
	pushs	ds,es,si,di
	mov	dx,word ptr cs:scratch_buf_seg
	mov	ds,dx
copy_file_region_read_next_chunk:
	xor	dx,dx
	mov	cx,1000h		; read at most one 4 KiB buffer at a time
	mov	bx,word ptr input_file_handle[bp]
	dos	3fh			; DOS read from the input handle
	or	ax,ax
	je	short copy_file_region_done
	mov	cx,ax
	push	ax
	mov	bx,word ptr output_file_handle[bp]
	xor	dx,dx
	dos	40h			; DOS write the bytes just read
	jb	short copy_file_region_write_error
	pop	cx
	cmp	cx,ax
	je	short copy_file_region_read_next_chunk
copy_file_region_write_error:
	fatal	copy_file_region_error_message
copy_file_region_error_message:
	db	0dh,0ah,07h
	db	'Error occurred writing to disk',0
	db	0ah,'$'
copy_file_region_done:
	pops	di,si,es,ds
	ret
copy_file_region_ endp

codeseg	ends
	end
