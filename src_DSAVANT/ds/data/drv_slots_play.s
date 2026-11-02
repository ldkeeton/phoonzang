; Far entry points of the loaded sound driver.
codeseg	segment	byte public 'code'
	public	drv_slot_music_start
drv_slot_music_start	dw	0103h,0000h
	public	drv_slot_configure_music_device
drv_slot_configure_music_device	dw	0107h,0000h
	public	drv_slot_music_set_data
drv_slot_music_set_data	dw	010bh,0000h
	public	drv_slot_stop_music_playback
drv_slot_stop_music_playback	dw	010fh,0000h
	public	drv_slot_music_set_tempo_volume
drv_slot_music_set_tempo_volume	dw	0113h,0000h
	public	drv_slot_play_select_device
drv_slot_play_select_device	dw	0117h,0000h
	public	drv_slot_music_is_playing
drv_slot_music_is_playing	dw	011bh,0000h
	public	drv_slot_wait_for_music
drv_slot_wait_for_music	dw	011fh,0000h
codeseg	ends
	end
