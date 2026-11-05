/* Create a new party member and optionally save it as a character file. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int slot_value[];
extern int remaining_stat_points;
extern int roster_screen_a, roster_screen_b;
extern int saved_character_file_name[];
extern char pc_file_record_base_hi[];
extern int character_creation_mode;
extern int pc_file_database_filename[];
extern int pc_file_record_size;
extern int choose_character_race();
extern int choose_character_gender();
extern int random_below();
extern int display_character_statistics();
extern int choose_character_profession();
extern int allocate_ability_bonus_points();
extern int initialize_new_member_record();
extern int give_profession_starting_items();
extern int draw_roster_member_summary();
extern int select_character_portrait();
extern int load_member_icon();
extern int draw_loaded_member_icon();
extern int edit_character_skill_slots();
extern int select_spell_to_learn();
extern int adjust_character_karma();
extern int init_member_karma_affinities();
extern int select_grid_text_option();
extern int transfer_pc_file_record();
extern int data_file_path();
extern long call_save_area();
extern int call_restore_area();
extern int call_restore_screen();
extern int call_show_area();
extern int call_set_text_color();
extern int call_set_text_pos();
extern int call_wait_sound();
extern int draw_text_glyphs();
extern int aztec_setmem();
extern int aztec_strcpy();
extern int aztec_strlen();
extern int aztec_open();
extern int aztec_write();
extern int aztec_close();

create_new_party_member(character_name, file_record_index)
char *character_name;
int file_record_index;
{
	int loop_index;
	int choice;
	int member_index;
	int file_handle;
	char reserved[34];
	int option_data[3];
	union { long result; char bytes[588]; } saved_area;

	member_index = 0;
	aztec_setmem(&party_records[member_index], (unsigned int)584, 0);
	aztec_strcpy(&party_records[member_index], character_name);
	call_set_text_color(0, 0);
	call_set_text_pos(40 - aztec_strlen(&party_records[member_index]) * 6 / 2,
		76);
	draw_text_glyphs(&party_records[member_index], 0);
	remaining_stat_points = -1;
	choose_character_race(member_index);
	choose_character_gender(member_index);
	remaining_stat_points = random_below(6) + 5;
	if (random_below(20) == 0)
		remaining_stat_points += 8;
	if (random_below(20) == 0)
		remaining_stat_points += 8;
	if (remaining_stat_points < 9)
		remaining_stat_points = random_below(4) + 8;
	if (character_creation_mode == 1)
		remaining_stat_points = random_below(10) + 21;
	display_character_statistics(member_index, 1);
	choose_character_profession(member_index);
	allocate_ability_bonus_points(member_index);
	initialize_new_member_record(member_index);
	give_profession_starting_items(member_index);
	draw_roster_member_summary(member_index);
	display_character_statistics(member_index, 0);
	call_show_area(0, 0, 319, 199);
	saved_area.result = call_save_area(14, 18, 66, 74);
	party_records[member_index].kind = 0;
	select_character_portrait(member_index, ((int *)&saved_area.result)[0],
		((int *)&saved_area.result)[1]);
	call_restore_area(((int *)&saved_area.result)[0],
		((int *)&saved_area.result)[1], 1);
	load_member_icon(party_records[member_index].kind, 0);
	draw_loaded_member_icon(member_index, 14, 18);
	choice = 0;
	loop_index = 0;
	do {
		choice += slot_value[loop_index];
	} while (++loop_index < 4);
	if (choice > 0) {
		edit_character_skill_slots(member_index, MSG_YOU_GET_A_SKILL_BONUS);
		call_restore_screen(roster_screen_b, roster_screen_a, 0, 0);
		call_show_area(1, 112, 316, 198);
	}
	for (loop_index = 0; loop_index < 4; loop_index++) {
		while (party_records[member_index].spells_to_learn[loop_index] > 0)
			select_spell_to_learn(member_index, loop_index);
	}
	adjust_character_karma(member_index);
	init_member_karma_affinities(member_index);
	option_data[0] = 1;
	option_data[1] = 1;
	option_data[2] = -1;
	choice = select_grid_text_option(1128, MSG_SAVE_THIS_CHARACTER, 74,
		180, 11, 106, 12, 1, 2, 1, -1, 0,
		option_data);
	if (choice == 0) {
	transfer_pc_file_record(&party_records[member_index], file_record_index, 1);
	pc_file_record_base_hi[file_record_index + 2] = 1;
	call_wait_sound(0);
	file_handle = aztec_open(data_file_path(pc_file_database_filename, 0), 2);
	aztec_write(file_handle, (int)&pc_file_record_size, 24);
	aztec_close(file_handle);
	}
}
