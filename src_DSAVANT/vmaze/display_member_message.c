/* Display a party member message and optionally play its sound effect. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int message_delay;
extern int load_message_string(), str_subst_char();
extern int show_centered_text_band(), play_sound_effect();
extern int wait_ticks_or_key(), call_show_area();

display_member_message(member_index, message_id, play_sound)
int member_index;
int message_id;
int play_sound;
{
	char message_text[80];

	load_message_string(message_id, message_text);
	str_subst_char(message_text, &party_records[member_index], '^');
	show_centered_text_band(message_text);
	if (play_sound != 0) {
		play_sound_effect(0);
	}
	wait_ticks_or_key(message_delay);
	/* Refresh the fixed 320-by-7 message strip. */
	call_show_area(0, 146, 319, 152);
}
