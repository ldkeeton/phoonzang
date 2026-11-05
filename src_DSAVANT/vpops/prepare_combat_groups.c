/* Prepare monster groups and, when present, the special group for combat. */
#include "structs/member.h"

extern struct member_rec *battle_groups[];
extern struct member_rec *ally_battle_group;
extern struct member_ext *battle_group_ext[];
extern int party_char_count, monster_group_count, npc_id;
extern int random_below();
extern int prepare_combatant_actions();

prepare_combat_groups()
{
	int group_index;

	battle_groups[0]->unit_count = party_char_count;
	/* Prepare each monster group with its selected target group. */
	for (group_index = 1; group_index <= monster_group_count; group_index++) {
		if (ally_battle_group->unit_count <= 0 ||
		    random_below(4) != 1 ||
		    battle_group_ext[group_index]->creature_class == 22 ||
		    npc_id == 225)
			prepare_combatant_actions(group_index, 0);
		else
			prepare_combatant_actions(group_index, 6);
	}
	/* Select the special group target, skipping groups on zero rolls. */
	if (ally_battle_group->unit_count > 0) {
		group_index = 1;
	pick_group_test:
		if (group_index < monster_group_count) {
			if (random_below(3) == 0) {
				group_index++;
				goto pick_group_test;
			}
		}
		prepare_combatant_actions(6, group_index);
	}
}
