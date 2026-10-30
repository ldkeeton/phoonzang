; Loads the driver, or restores the system and prints a fatal load error.
	include	lmacros.h
	assume	cs:codeseg
	extrn	restore_video_and_release_mem_:near
	extrn	cseg_2f56_:word
	extrn	drv_slot_music_start_:word
	extrn	cseg_35ec_:word
	extrn	drv_file_handle_:word
	public	load_play_driver_
load_play_driver_ proc near
	pushs	ds,es
	mov ah, 03dh
	mov al, 0
	mov bx, cs
	mov ds, bx
	mov dx, offset cseg_35ec_
	int 021h
	jb short open_error
	mov word ptr cs:drv_file_handle_, ax
	mov bx, ax
	mov ah, 03fh
	mov cx, 01d00h
	mov dx, word ptr cs:cseg_2f56_
	mov ds, dx
	mov dx, 0100h
	int 021h
	mov ah, 03eh
	mov bx, word ptr cs:drv_file_handle_
	int 021h
	movseg	es,cs
	mov di, offset drv_slot_music_start_
	mov ax, word ptr cs:cseg_2f56_
	mov cx, 8
copy_segments:
	add di, 2
	stosw
	loop copy_segments
	pops	es,ds
	ret
open_error:
	call restore_video_and_release_mem_
load_play_driver_ endp
	public	sound_driver_error_exit
sound_driver_error_exit proc near
	fatal	sound_driver_error_msg	; ds:dx addresses the message below; DOS 9: write the $-terminated string to stdout; DOS 4Ch: terminate with exit code 1
	ret		;not reached
sound_driver_error_msg:
	db	0dh,0ah,07h	;CR LF bell
	db	'Unable to load sound driver',0
	db	0ah,'$'		;LF, string terminator
sound_driver_error_exit endp
	finish
	end
