; read_misc_table(handle): reads the 400h-byte misc table from handle to offset 0
; of the segment at misc_table_seg. A read error prints misc_table_io_error_msg
; and exits (falls into the following DOS print/exit code).
	include	lmacros.h
	include	hlmacros.h
	assume	cs:codeseg
handle	equ	4	;arg: DOS file handle
	extrn	misc_table_seg_:word, misc_table_io_error_msg_:byte
	public	read_misc_table_
read_misc_table_ proc near
	frame
	cld
	pushs	ds,es
	movseg	es,ds
	mov	cx,400h	;1024 bytes
	mov	bx,word ptr cs:misc_table_seg_	;ds = destination segment
	mov	ds,bx
	xor	dx,dx
	mov	bx,word ptr handle[bp]
	dos	3fh	; DOS 3Fh: read to ds:0
	jb	l1
	pops	es,ds
	unframe
l1:	;read error: ds:dx = message for the DOS print that follows
	movseg	ds,cs
	mov	dx,offset misc_table_io_error_msg_
read_misc_table_ endp
	finish
	end
