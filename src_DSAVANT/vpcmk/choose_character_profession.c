/* Choose and display a party member's profession. */
#include "structs/pcrec.h"
#include "msg.h"
extern struct pc_rec party_records[];
extern int profession_eligible[];
extern int evaluate_character_professions();
extern int select_grid_text_option();
extern int call_set_text_color();
extern int call_set_text_pos();
extern int load_message_string();
extern int draw_text_glyphs();
extern int evaluate_character_profession();
extern int display_character_statistics();

choose_character_profession(character)
int character;
{
	int profession_index;
	int profession_count;
	char message_frame_padding[38];
	char message[42];
	char choices_frame_padding[10];
	int choices[15];

	evaluate_character_professions(character);
	profession_count = 0;
	for (profession_index = 0; profession_index <= 13; profession_index++) {
		choices[profession_index] =
			profession_eligible[profession_index] == 1 ? 1 : 0;
		if (choices[profession_index] != 0)
			profession_count++;
	}
	choices[14] = -1;
	party_records[character].profession = select_grid_text_option(
				120, MSG_SELECT_CHARACTER_PROFESSION,
				57, 134, 11, 70, 12,
				(profession_count + 2) / 3,
				(profession_count + 2) / 3 * 3,
				1, -1, 0, choices);
	call_set_text_color(132, 0);
	call_set_text_pos(90, 12);
	load_message_string(120 + party_records[character].profession,
		message);
	draw_text_glyphs(message, 0);
	evaluate_character_profession(character,
		party_records[character].profession, 1);
	display_character_statistics(character, 1);
}
