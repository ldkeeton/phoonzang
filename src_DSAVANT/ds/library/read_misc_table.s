; read_misc_table(handle): reads the 400h-byte misc table from handle to offset 0
; of the segment at misc_table_seg. A read error prints misc_table_io_error_msg
; and exits (falls into the following DOS print/exit code).
	include	lmacros.h
	assume	cs:codeseg
	extrn	misc_table_seg_:word, misc_table_io_error_msg_:byte
	procdef	read_misc_table,<<handle,word>>	;handle: DOS file handle
	cld
	pushs	ds,es
	movseg	es,ds
	mov	cx,400h	;1024 bytes
	mov	bx,word ptr cs:misc_table_seg_	;ds = destination segment
	mov	ds,bx
	xor	dx,dx
	mov	bx,handle
	dos	3fh	; DOS 3Fh: read to ds:0
	jb	l1
	pops	es,ds
	mov	sp,bp
	pret
l1:	;read error: ds:dx = message for the DOS print that follows
	movseg	ds,cs
	mov	dx,offset misc_table_io_error_msg_
	pend	read_misc_table
	finish
	end
