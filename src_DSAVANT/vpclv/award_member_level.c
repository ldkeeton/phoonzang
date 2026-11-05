/* Handle a party member's level increase and follow-up rewards. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int skill_group_points[];

/* Complete a party member's level increase and refresh related displays. */
award_member_level(member_index)
int member_index;
{
	int slot_index, skill_total;
	char level_message[80], profession_message[80];

	party_records[member_index].level++;
	if (party_records[member_index].level >=
		party_records[member_index].pre_drain_level)
		party_records[member_index].pre_drain_level = 0;
	update_member_rank(member_index);
	draw_member_status_panel(member_index, 0);
	load_message_string(MSG_YOU_MADE_A_LEVEL, level_message);
	str_subst_char(level_message, &party_records[member_index], 94);
	load_message_string(120 + party_records[member_index].profession,
		profession_message);
	str_subst_char(level_message, profession_message, 36);
	display_centered_message(level_message, 1);
	raise_random_member_stats(member_index);
	raise_member_vitals(member_index);
	lower_level_scaled_percent(member_index);
	award_level_skill_points(member_index);
	skill_total = 0;
	for (slot_index = 0; slot_index < 4; slot_index++)
		skill_total += skill_group_points[slot_index];
	if (skill_total > 0)
		allocate_member_skill_bonus(member_index, MSG_YOU_EARNED_A_SKILL_BONUS);
	initialize_member_defenses(member_index);
	award_member_spell_progress(member_index);
	for (slot_index = 0; slot_index < 4; slot_index++)
		while (party_records[member_index].spells_to_learn[slot_index] > 0)
			learn_member_spell(member_index, slot_index);
}
