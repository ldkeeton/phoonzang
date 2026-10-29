; Screen-area driver thunks: each calls its driver entry with the caller's
; stack intact (cld: driver string operations advance forward).
	include	lmacros.h
	assume	cs:codeseg
	drvcall	call_show_area,drv_slot_show_area
	drvcall	call_fill_screen_buffer,drv_slot_fill_screen_buffer
	drvcall	call_put_pixel,cseg_2fcb
	drvcall	call_fill_area,drv_slot_fill_area
	drvcall	call_invert_area,cseg_2fd3
	drvcall	call_get_free_space,cseg_3027
	drvcall	call_save_area,cseg_2fd7
	drvcall	call_cache_area,drv_slot_cache_area
	drvcall	call_restore_screen,cseg_302b
	drvcall	call_restore_area,cseg_2fdb
	finish
	end
