/* display a centered NPC message and optionally play its cue */
/* Centers an NPC message and optionally plays its sound cue. */

extern int strlen();
extern int call_show_area();
extern int draw_saved_text_area();
extern int play_sound_effect();

/* center the message in the saved text area and play sound when requested */
show_centered_npc_message(text, play_sound)
char *text;
int play_sound;
{
	int left;
	int right;

	call_show_area(0, 146 + play_sound, 319, 152 + play_sound);
	left = 161 - (strlen(text) * 6) / 2;
	right = left + strlen(text) * 6;
	draw_saved_text_area(left, 146 + play_sound, right, 152 + play_sound,
			    left, 146 + play_sound, 22, 0, -1, text);
	if (play_sound != 0)
		play_sound_effect(0);
}
