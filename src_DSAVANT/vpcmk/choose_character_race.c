/* Ask the player to choose a new character's race. */
#include "msg.h"
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int select_grid_text_option();
extern int call_set_text_color(), call_set_text_pos();
extern int load_message_string(), draw_text_glyphs();
extern int apply_race_stat_minimums(), display_character_statistics();

choose_character_race(member_index)
int member_index;
{
	int counter;
	unsigned char message[80];
	int selection_options[20];

	for (counter = 0; counter <= 10; counter++)
		selection_options[counter] = 1;
	selection_options[11] = -1;
	party_records[member_index].race = select_grid_text_option(
		100, MSG_SELECT_CHARACTER_RACE, 57, 134, 11, 70,
		12, 4, 11, 1, -1, 0, selection_options);
	call_set_text_color(1, 0);
	call_set_text_pos(102, 6);
	load_message_string(MSG_RACE_BASE + party_records[member_index].race,
		message);
	draw_text_glyphs(message, 0);
	apply_race_stat_minimums(member_index,
		party_records[member_index].race);
	display_character_statistics(member_index, 1);
}
