/* fades the music out: steps volume toward 0 by 10 every 25 ms, then stops
   it */
fade_out_music(tempo, volume)
{
	if (call_is_music_playing()) {
		/* stop early if the score ends mid-fade */
		while (volume > 0 && call_is_music_playing()) {
			call_set_music_tempo_volume(tempo,
			    volume = clamp_between(volume - 10, 0, volume));
			delay_ms(25);
		}
		call_stop_music();
	}
}
