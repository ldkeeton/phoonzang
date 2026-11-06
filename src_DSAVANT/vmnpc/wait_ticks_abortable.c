/* Wait for a tick deadline while allowing user input to abort. */
extern long far *tick_counter_ptr;
extern int space_key_hit;
extern int flush_keyboard();
extern int poll_fullscreen_hotspot();
extern int wait_for_spacebar_prompt();
extern int step_npc_screen_animation();

/* Wait for the requested ticks, polling input and advancing the NPC screen. */
wait_ticks_abortable(ticks, allow_space)
int ticks;
int allow_space;
{
	long deadline;

	flush_keyboard();
	deadline = *tick_counter_ptr + ticks;
	while (*tick_counter_ptr < deadline) {
		if (poll_fullscreen_hotspot())
			return;
		if (allow_space && space_key_hit) {
			wait_for_spacebar_prompt();
			return;
		}
		step_npc_screen_animation();
	}
}
