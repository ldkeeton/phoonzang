/* Ask the player to choose the new character's gender. */
#include "msg.h"
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int select_grid_text_option();
extern int call_set_text_color(), call_set_text_pos();
extern int load_message_string(), draw_font_glyph();
extern int adjust_female_character_stats(), display_character_statistics();

choose_character_gender(member_index)
int member_index;
{
	int counter;
	unsigned char message[80];
	int selection_options[20];

	for (counter = 0; counter <= 1; counter++)
		selection_options[counter] = 1;
	selection_options[2] = -1;
	party_records[member_index].gender = select_grid_text_option(
		140, MSG_SELECT_CHARACTER_SEX, 74, 134, 11, 106,
		12, 1, 2, 1, -1, 0, selection_options);
	call_set_text_color(1, 0);
	call_set_text_pos(90, 6);
	load_message_string(MSG_MALE + party_records[member_index].gender,
		message);
	draw_font_glyph(message[0], 0);
	draw_font_glyph(45, 0);
	adjust_female_character_stats(member_index,
		party_records[member_index].gender);
	display_character_statistics(member_index, 1);
}
