/* Choose a skill group and redraw the selected and previous labels. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int skill_group_ranges[4][2];
extern int menu_selection_index;
extern int prepare_profession_skill_list();
extern int draw_skill_list_values();
extern int select_grid_text_option();
extern int load_message_string();
extern int show_indexed_beveled_label();

/* Scan personal skills, then display the five skill-group choices. */
choose_member_skill_group(member_index)
int member_index;
{
	int skill_index;
	int selected_group;
	int skill_count;
	int has_personal_skill;
	int previous_group;
	int previous_menu_index;
	int option_flags[10];
	int selected_skills[10];
	char message[80];

	selected_group = 0;
	has_personal_skill = 0;
	for (skill_index = skill_group_ranges[2][0];
	    skill_index <= skill_group_ranges[2][1]; ++skill_index) {
		if (party_records[member_index].skills[skill_index] > 0)
			has_personal_skill = 1;
	}
	previous_group = 0;
	previous_menu_index = 0;
	do {
		skill_count = prepare_profession_skill_list(member_index,
			selected_group, selected_skills);
		draw_skill_list_values(member_index, selected_group, skill_count,
			selected_skills);
		for (skill_index = 0; skill_index <= 4; ++skill_index)
			option_flags[skill_index] = 1;
		option_flags[2] = has_personal_skill;
		option_flags[5] = -1;
		selected_group = select_grid_text_option(MSG_WEAPONRY, 0,
			4, 188, 9, 58, 9, 1, 5, 1, selected_group,
			0, option_flags);
		load_message_string(MSG_WEAPONRY + selected_group, message);
		show_indexed_beveled_label(message, menu_selection_index,
			4, 188, 9, 58, 9, 1, 26);
		if (previous_group != selected_group) {
			load_message_string(MSG_WEAPONRY + previous_group,
				message);
			show_indexed_beveled_label(message, previous_menu_index,
				4, 188, 9, 58, 9, 1, 1);
		}
		previous_group = selected_group;
		previous_menu_index = menu_selection_index;
	} while (selected_group != 4);
}
