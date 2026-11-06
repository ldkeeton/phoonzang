/* Pick the target's lane and play a spell animation there, unless the spell
   backfired; show_impact starts the impact burst. */
#include "structs/member.h"

extern struct member_rec *battle_groups[];
extern int acting_group, acting_unit, row_limit;
extern int spell_backfired, combat_effect_sound;
extern int clamp_between();
extern int animate_target_spell_effect();

animate_spell_at_target(group, unit, animation_id, show_impact, sound_id)
int group, unit, animation_id, show_impact, sound_id;
{
	int unused_lane, lane;

	if (spell_backfired == 1)
		return;
	if (group == 0 || group == 6) {
		if (battle_groups[acting_group]->unit[acting_unit].cell == -1) {
			lane = acting_group == 1 ? 0 : acting_group == 2 ? 1 : 2;
		} else
			lane = battle_groups[acting_group]->unit[acting_unit].cell / 10;
	} else {
		if (battle_groups[group]->unit[unit].cell == -1) {
			lane = group == 1 ? 0 : group == 2 ? 1 : 2;
		} else
			lane = battle_groups[group]->unit[unit].cell / 10;
	}
	lane = clamp_between(lane, 0, row_limit);
	combat_effect_sound = sound_id;
	animate_target_spell_effect(acting_group, acting_unit, animation_id, lane,
		group, unit,
		show_impact);
}
