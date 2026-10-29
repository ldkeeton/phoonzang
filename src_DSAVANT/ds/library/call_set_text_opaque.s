; Text, palette, mouse-glide and cache driver thunks: each calls its driver
; entry with the caller's stack intact (cld: driver string operations
; advance forward).
	include	lmacros.h
	assume	cs:codeseg
	drvcall	call_set_text_opaque,cseg_2feb
	drvcall	call_set_rgb,cseg_2ff7
	drvcall	call_get_rgb,cseg_2ffb
	drvcall	call_fade_in,drv_slot_fade_in
	drvcall	call_fade_out,drv_slot_fade_out
	drvcall	call_reset_rgb,cseg_3007
	drvcall	call_mouse_glide_to,cseg_300b
	drvcall	call_mouse_glide_back,cseg_300f
	drvcall	call_get_palette,cseg_301b
	drvcall	call_set_palette,cseg_301f
	drvcall	call_cache_maze,drv_slot_cache_maze
	drvcall	call_cache_screen_to_storage,drv_slot_cache_screen_to_storage
	finish
	end
