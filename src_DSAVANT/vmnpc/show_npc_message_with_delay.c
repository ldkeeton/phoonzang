/* Displays a centered message in a saved NPC text area. */
extern int load_message_string();
extern int strlen();
extern int draw_saved_text_area();
extern int play_sound_effect();
extern int wait_for_hotspot_timeout();
extern int message_delay;

show_npc_message_with_delay(message_id, center_x, text_y)
int message_id;
int center_x;
int text_y;
{
	int left;
	int right;
	char text[80];

	load_message_string(message_id, text);
	left = center_x - (strlen(text) * 6) / 2;
	right = left + strlen(text) * 6;
	draw_saved_text_area(left, text_y, right, text_y + 6,
			    left, text_y, 1, 194, 194, text);
	play_sound_effect(0);
	wait_for_hotspot_timeout(message_delay);
}
