/* Display the cursed status message over the character portrait. */
#include "msg.h"

extern int message_delay;
extern int load_message_string();
extern int strlen();
extern long call_save_area();
extern int call_set_text_pos();
extern int call_set_text_color();
extern int draw_text_glyphs();
extern int call_show_area();
extern int play_sound_effect();
extern int wait_for_hotspot_timeout();
extern int call_restore_area();

display_cursed_status_message()
{
	int message_column;
	long saved_area;
	char message[80];

	load_message_string(MSG_CURSED_356, message);
	message_column = 271 - strlen(message) * 6 / 2;
	saved_area = call_save_area(message_column, 57, 319, 62);
	call_set_text_pos(message_column, 57);
	call_set_text_color(85, 0);
	draw_text_glyphs(message, 0);
	call_show_area(message_column, 57, 319, 62);
	play_sound_effect(0);
	wait_for_hotspot_timeout(message_delay);
	call_restore_area(saved_area, 1);
	call_show_area(message_column, 57, 319, 62);
}
