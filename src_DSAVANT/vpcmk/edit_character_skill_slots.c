/* Edit the skill points in each skill group for one character. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int skill_group_ranges[];
extern int slot_limit[];
extern char slot_label[][20];
extern int skill_availability_flags[];
extern int load_message_string();
extern int display_centered_message();
extern int prepare_skill_list();
extern int draw_skill_list_values();
extern int edit_skill_group_points();
extern int call_show_area();

edit_character_skill_slots(member_index, message_id)
int member_index, message_id;
{
	int current_skill, range_index;
	unsigned int group_index;
	int skill_count;
	int skill_ids[12];
	int group_enabled[12];
	char message[80];

	for (current_skill = 0; current_skill < 34; current_skill++)
		slot_limit[current_skill] =
			(unsigned char)party_records[member_index].skills[current_skill];

	for (current_skill = 0; current_skill <= 4; current_skill++)
		load_message_string(MSG_WEAPONRY + current_skill,
			slot_label[current_skill]);
	load_message_string(message_id, message);
	display_centered_message(message, 1);

	group_index = 0;
	do {
		skill_count = prepare_skill_list(member_index, group_index, skill_ids);
		draw_skill_list_values(member_index, group_index, skill_count,
			skill_ids);

		for (range_index = 0; range_index < 4; range_index++) {
			group_enabled[range_index] = 0;
	load_range_start:
			current_skill = skill_group_ranges[range_index * 2];
			for (; current_skill <= skill_group_ranges[range_index * 2 + 1];
				current_skill++) {
				if (skill_availability_flags[current_skill] != 0 ||
					party_records[member_index].skills[current_skill] > 0)
					group_enabled[range_index] = 1;
			}
		}
		group_index = edit_skill_group_points(member_index, group_index,
			skill_count, skill_ids, group_enabled);
	} while (group_index != 4);

	call_show_area(1, 112, 316, 198);
}
