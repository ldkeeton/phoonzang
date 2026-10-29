; Text, palette, mouse-glide and cache driver thunks: each calls its driver
; entry with the caller's stack intact (cld: driver string operations
; advance forward).
	include	lmacros.h
	assume	cs:codeseg
	drvcall	call_set_text_opaque,drv_slot_set_text_opaque
	drvcall	call_set_rgb,drv_slot_set_rgb
	drvcall	call_get_rgb,drv_slot_get_rgb
	drvcall	call_fade_in,drv_slot_fade_in
	drvcall	call_fade_out,drv_slot_fade_out
	drvcall	call_reset_rgb,drv_slot_reset_rgb
	drvcall	call_mouse_glide_to,drv_slot_mouse_glide_to
	drvcall	call_mouse_glide_back,drv_slot_mouse_glide_back
	drvcall	call_get_palette,drv_slot_get_palette
	drvcall	call_set_palette,drv_slot_set_palette
	drvcall	call_cache_maze,drv_slot_cache_maze
	drvcall	call_cache_screen_to_storage,drv_slot_cache_screen_to_storage
	finish
	end
