; Driver dispatch table: DS far-calls each entry through its drv_slots table;
; an entry near-calls its handler, then returns far.
	include	lmacros.h
	assume	cs:codeseg
	public	driver_slot_0_
driver_slot_0_:
	drvslot	music_start
	drvslot	configure_music_device
	drvslot	music_set_data
	drvslot	stop_music_playback
	drvslot	music_set_tempo_volume
	drvslot	play_select_device
	drvslot	music_is_playing
	drvslot	wait_for_music
	finish
	end
