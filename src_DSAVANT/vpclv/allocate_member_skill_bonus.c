/* Initialize a party member's spell skill editor. */
#include "structs/pcrec.h"
#include "msg.h"
extern struct pc_rec party_records[];
extern int slot_limit[], slot_value[], skill_availability_flags[];
extern int skill_group_ranges[][2];
extern char slot_label[][20];

/* Initialize skill limits, then cycle through spell groups for editing. */
allocate_member_skill_bonus(member, title)
int member, title;
{
	int i, j, slot, count;
	int skills[12], enabled[12];
	char message[80];
	i = 0;
	do {
		slot_limit[i] = party_records[member].skills[i];
	} while (++i < 34);
	i = 0;
	do {
		load_message_string(MSG_WEAPONRY + i, slot_label[i]);
	} while (++i <= 4);
	load_message_string(title, message);
	display_centered_message(message, 1);
	slot = 0;
	do {
		count = prepare_skill_list(member, slot, skills);
		i = 0;
		j = 0;
		for (; j < count; j++)
			i += 100 - party_records[member].skills[skills[j]];
		if (slot_value[slot] > i) slot_value[slot] = i;
		draw_known_spell_values(member, slot, count, skills);
		j = 0;
		do {
			enabled[j] = 0;
			for (i = skill_group_ranges[j][0]; i <= skill_group_ranges[j][1];
				i++) {
				if (skill_availability_flags[i] != 0
					|| party_records[member].skills[i] > 0)
					enabled[j] = 1;
			}
		} while (++j < 4);
		slot =
			edit_skill_group_points(member, slot, count, skills, enabled);
	} while (slot != 4);
	call_show_area(1, 112, 316, 198);
}
