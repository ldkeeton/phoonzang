/* Attempt to hide the acting combatant. */
#include "msg.h"
#include "structs/member.h"
#include "structs/pcrec.h"

extern int acting_unit, acting_group, startup_option;
extern int monster_group_count, party_char_count;
extern struct pc_rec party_records[];
extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern char combat_action_name_buffer[], combat_action_message_buffer[];
extern char combat_action_suffix_buffer[];
extern int load_message_string();
extern int copy_combatant_name();
extern int draw_centered_text_fragments();
extern int wait_for_combat_input();
extern int random_below();
extern int try_raise_member_skill();
extern int display_combat_message();
extern int sync_member_party_panel();

attempt_combatant_hiding(actor)
struct combatant *actor;
{
	int group;
	int party_count;
	int success_chance;

	if (acting_group == 0) {
		success_chance = party_records[acting_unit].level +
			party_records[acting_unit].skills[17] + 50;
		group = 1;
		for (; group <= monster_group_count; group++) {
			success_chance -= battle_groups[group]->unit_count +
				battle_group_ext[group]->hp_spec.count +
				battle_group_ext[group]->combat_stats[1] - 9;
		}
	} else {
		success_chance = actor->level * 5 + 50;
		party_count = party_char_count > 3 ? 3 : party_char_count;
		group = 0;
		for (; group < party_count; group++) {
			success_chance -= party_records[group].level +
				party_records[group].stat[1] - 9;
		}
	}

	copy_combatant_name(combat_action_name_buffer, acting_group, acting_unit);
	load_message_string(MSG_HIDES, combat_action_message_buffer);
	combat_action_suffix_buffer[0] = 0;
	draw_centered_text_fragments(0, combat_action_name_buffer,
		combat_action_message_buffer, combat_action_suffix_buffer,
		acting_group == 0 ? 1 : 67, 67, 67);
	wait_for_combat_input(startup_option / 2);
	if (random_below(100) < success_chance) {
		actor->phase = 1;
		try_raise_member_skill(acting_unit, 17, 1);
		display_combat_message(MSG_SHADOWS_3520, 67, 2);
		if (acting_group == 0)
			sync_member_party_panel(acting_unit, 0);
	} else {
		display_combat_message(MSG_FAILED, 67, 2);
	}
	wait_for_combat_input(startup_option / 2);
}
