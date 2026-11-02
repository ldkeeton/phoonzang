; Far entry points for the music and sound calls.
codeseg	segment	byte public 'code'
	public	music_start_far
music_start_far	dd	00000103h,00000107h
	public	music_load_far
music_load_far	dd	0000010bh
	public	music_stop_far
music_stop_far	dd	0000010fh
	public	music_config_far
music_config_far	dd	00000113h
	public	sound_play_far
sound_play_far	dd	00000117h
	public	music_playing_far
music_playing_far	dd	0000011bh
	public	sound_wait_far
sound_wait_far	dd	0000011fh
codeseg	ends
	end
