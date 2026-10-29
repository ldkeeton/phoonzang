; Sound, music, picture, screen, maze and mouse driver thunks: each calls its
; driver entry with the caller's stack intact (cld: driver string operations
; advance forward).  call_packed_slot_5 is the one irregular thunk.
	include	lmacros.h
	assume	cs:codeseg
	drvcall	call_free_sound,cseg_303b
	drvcall	call_load_sound,cseg_3037
	drvcall	call_play_sound,cseg_303f
	drvcall	call_wait_sound,drv_slot_wait_sound
	drvcall	call_stop_sound,drv_slot_stop_sound

; Supplies five zero words and a packed byte argument to driver slot 5.
	extrn	drv_slot_5:dword
	public	call_packed_slot_5_
driver_value equ 4
packed_high_byte equ 6
call_packed_slot_5_ proc near
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
	call	dword ptr cs:drv_slot_5
	add	sp,14
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
call_packed_slot_5_ endp

; music
	drvcall	call_load_score,cseg_304b
	drvcall	call_play_score,cseg_304f
	drvcall	call_free_score,cseg_3053
	drvcall	call_is_music_playing,cseg_3057
	drvcall	call_stop_music,drv_slot_stop_music
	drvcall	call_set_music_tempo_volume,cseg_305f

; pictures, text, screens and mazes
	drvcall	call_load_picture,cseg_2f9b
	drvcall	call_free_picture,cseg_2fdf
	drvcall	call_free_maze,cseg_3013
	drvcall	call_draw_text,drv_slot_draw_text
	drvcall	call_load_screen,cseg_2fa3
	drvcall	call_free_screen,cseg_3017
	drvcall	call_save_screen,cseg_2fef
	drvcall	call_dissolve_area,drv_slot_dissolve_area
	drvcall	call_load_maze,cseg_2fa7
	drvcall	call_draw_maze_piece,drv_slot_draw_maze_piece

; mouse
	drvcall	call_mouse_init,cseg_2f87
	drvcall	call_mouse_off,cseg_2f8b
	drvcall	call_mouse_hit_test,cseg_2f8f
	drvcall	call_get_mouse,cseg_2fe3
	drvcall	call_set_mouse_pointer,cseg_2fe7
	finish
	end
