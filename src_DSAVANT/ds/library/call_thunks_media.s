; Sound, music, picture, screen, maze and mouse driver thunks: each calls its
; driver entry with the caller's stack intact (cld: driver string operations
; advance forward).  call_play_select_device is the one irregular thunk.
	include	lmacros.h
	assume	cs:codeseg
	drvcall	call_free_sound,drv_slot_free_sound
	drvcall	call_load_sound,drv_slot_load_sound
	drvcall	call_play_sound,drv_slot_play_sound
	drvcall	call_wait_sound,drv_slot_wait_sound
	drvcall	call_stop_sound,drv_slot_stop_sound

; Supplies five zero words and a packed byte argument to the sound driver's
; play_select_device.
	extrn	drv_slot_play_select_device:dword
	public	call_play_select_device_
driver_value equ 4
packed_high_byte equ 6
call_play_select_device_ proc near
	push	bp
	mov	bp,sp
	cld
	pushs	ds,es,si,di
	movseg	es,ds
	mov	ax,word ptr [bp+packed_high_byte]
	mov	ah,al
	mov	al,0ffh	;low byte is fixed for this driver call
	push	ax
	push	word ptr [bp+driver_value]
	xor	ax,ax
	pushs	ax,ax,ax,ax,ax
	call	dword ptr cs:drv_slot_play_select_device
	add	sp,14
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
call_play_select_device_ endp

; music
	drvcall	call_load_score,drv_slot_load_score
	drvcall	call_play_score,drv_slot_play_score
	drvcall	call_free_score,drv_slot_free_score
	drvcall	call_is_music_playing,drv_slot_is_music_playing
	drvcall	call_stop_music,drv_slot_stop_music
	drvcall	call_set_music_tempo_volume,drv_slot_set_music_tempo_volume

; pictures, text, screens and mazes
	drvcall	call_load_picture,drv_slot_load_picture
	drvcall	call_free_picture,drv_slot_free_picture
	drvcall	call_free_maze,drv_slot_free_maze
	drvcall	call_draw_text,drv_slot_draw_text
	drvcall	call_load_screen,drv_slot_load_screen
	drvcall	call_free_screen,drv_slot_free_screen
	drvcall	call_save_screen,drv_slot_save_screen
	drvcall	call_dissolve_area,drv_slot_dissolve_area
	drvcall	call_load_maze,drv_slot_load_maze
	drvcall	call_draw_maze_piece,drv_slot_draw_maze_piece

; mouse
	drvcall	call_mouse_init,drv_slot_mouse_init
	drvcall	call_mouse_off,drv_slot_mouse_off
	drvcall	call_mouse_hit_test,drv_slot_mouse_hit_test
	drvcall	call_get_mouse,drv_slot_get_mouse
	drvcall	call_set_mouse_pointer,drv_slot_set_mouse_pointer
	finish
	end
