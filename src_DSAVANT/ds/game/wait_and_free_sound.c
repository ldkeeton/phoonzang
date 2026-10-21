/* waits on the sound channel, then frees the given sound */
wait_and_free_sound(snd)
int snd;
{
	gfx_wait_sound(1);
	gfx_free_sound(snd);
}
