/* fades the music out: steps volume toward 0 by 10 every 25 ms, then stops it */
fade_out_music(tempo, volume)
{
	if (gfx_is_music_playing()) {
		/* stop early if the score ends mid-fade */
		while (volume > 0 && gfx_is_music_playing()) {
			gfx_set_music_tempo_volume(tempo,
			    volume = clamp_between(volume - 10, 0, volume));
			delay_ms(25);
		}
		gfx_stop_music();
	}
}
