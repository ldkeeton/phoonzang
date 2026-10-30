; Loads the driver, or restores the system and prints a fatal load error.
	include	lmacros.h
	assume	cs:codeseg
	extrn	restore_video_and_release_mem_:near
	extrn	cseg_2f52_:word
	extrn	driver_block_table_end_:word
	extrn	drv_slot_mouse_init_:word
	extrn	cseg_3063_:word
	extrn	driver_block_table_:word
	extrn	drv_file_handle_:word
	public	load_video_driver_
load_video_driver_ proc near
	pushs	ds,es
	mov ah, 03dh
	mov al, 0
	mov bx, cs
	mov ds, bx
	mov dx, word ptr -4[bp]
	int 021h
	jb short open_error
	mov word ptr cs:drv_file_handle_, ax
	mov bx, ax
	mov ah, 03fh
	mov cx, 05300h
	mov dx, word ptr cs:cseg_2f52_
	mov ds, dx
	mov dx, 0100h
	int 021h
	mov ah, 03eh
	mov bx, word ptr cs:drv_file_handle_
	int 021h
	movseg	es,cs
	mov di, offset drv_slot_mouse_init_
	mov ax, word ptr cs:cseg_2f52_
	mov cx, 037h
copy_segments:
	add di, 2
	stosw
	loop copy_segments
	movseg	es,<word ptr cs:cseg_2f52_>
	mov di, word ptr cs:cseg_3063_
	movseg	ds,cs
	mov si, offset driver_block_table_
	mov cx, offset driver_block_table_end_
	sub cx, si
	rep movsb
	add si, 4
	mov cx, 2
copy_far_tables:
	push cx
	mov cx, 2
	rep movsb
	mov ax, cs
	stosw
	pop cx
	loop copy_far_tables
	mov cx, 7
	rep movsb
	mov cx, 8
	shl cx, 1
	shl cx, 1
	rep movsb
	pops	es,ds
	ret
open_error:
	call restore_video_and_release_mem_
load_video_driver_ endp
	public	display_driver_error_exit
display_driver_error_exit proc near
	movseg	ds,cs		;ds:dx addresses the message below
	mov	dx,offset display_driver_error_msg
	dos	9		;DOS 9: write the $-terminated string to stdout
	dosx	4c01h		;DOS 4Ch: terminate with exit code 1
	ret			;not reached
display_driver_error_msg:
	db	0dh,0ah,07h	;CR LF bell
	db	'Unable to load display driver',0
	db	0ah,'$'		;LF, string terminator
display_driver_error_exit endp
	finish
	end
