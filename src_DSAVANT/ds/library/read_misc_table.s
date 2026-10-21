; read_misc_table(handle): reads the 400h-byte misc table from handle to offset 0
; of the segment at misc_table_seg. A read error prints misc_table_io_error_msg
; and exits (falls into the following DOS print/exit code).
	include	lmacros.h
	assume	cs:codeseg
handle	equ	4	;arg: DOS file handle
	extrn	misc_table_seg_:word, misc_table_io_error_msg_:byte
	public	read_misc_table_
read_misc_table_ proc near
	push	bp
	mov	bp,sp
	cld
	push	ds
	push	es
	mov	ax,ds
	mov	es,ax
	mov	cx,400h	;1024 bytes
	mov	bx,word ptr cs:misc_table_seg_	;ds = destination segment
	mov	ds,bx
	xor	dx,dx
	mov	bx,word ptr handle[bp]
	mov	ah,3fh	;DOS 3Fh: read to ds:0
	int	21h
	jb	l1
	pop	es
	pop	ds
	mov	sp,bp
	pop	bp
	ret
l1:	;read error: ds:dx = message for the DOS print that follows
	mov	ax,cs
	mov	ds,ax
	mov	dx,offset misc_table_io_error_msg_
read_misc_table_ endp
	finish
	end
