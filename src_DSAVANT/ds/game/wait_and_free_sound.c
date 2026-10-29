/* waits on the sound channel, then frees the given sound */
wait_and_free_sound(snd)
int snd;
{
	call_wait_sound(1);
	call_free_sound(snd);
}
