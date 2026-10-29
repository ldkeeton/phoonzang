; Screen-area driver thunks: each calls its driver entry with the caller's
; stack intact (cld: driver string operations advance forward).
	include	lmacros.h
	assume	cs:codeseg
	drvcall	call_show_area,drv_slot_show_area
	drvcall	call_fill_screen_buffer,drv_slot_fill_screen_buffer
	drvcall	call_put_pixel,drv_slot_put_pixel
	drvcall	call_fill_area,drv_slot_fill_area
	drvcall	call_invert_area,drv_slot_invert_area
	drvcall	call_get_free_space,drv_slot_get_free_space
	drvcall	call_save_area,drv_slot_save_area
	drvcall	call_cache_area,drv_slot_cache_area
	drvcall	call_restore_screen,drv_slot_restore_screen
	drvcall	call_restore_area,drv_slot_restore_area
	finish
	end
