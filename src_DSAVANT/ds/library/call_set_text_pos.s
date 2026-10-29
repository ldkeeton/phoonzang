; Text-position and color driver thunks: each calls its driver entry with the
; caller's stack intact (cld: driver string operations advance forward).
	include	lmacros.h
	assume	cs:codeseg
	drvcall	call_set_text_pos,drv_slot_set_text_pos
	drvcall	call_get_text_pos,cseg_2fbf
	drvcall	call_set_text_color,cseg_2fb7
	finish
	end
