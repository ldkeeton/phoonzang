/* Add a resisted random amount to one of a combatant's status[] timers
   (255 makes it permanent; 5 also sets poison strength). */
#include "structs/member.h"
#include "structs/pcrec.h"
#include "structs/randstep.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct pc_rec party_records[];
extern int aztec_movmem();
extern int combatant_evades_targeting();
extern struct random_step_spec *store_word_and_pair();
extern int add_random_steps();
extern int roll_resisted_amount();
extern int random_below();
extern int announce_combatant_effect();

apply_resisted_status_timer(group, unit_index, message_id,
	resistance_index, status_index, resistance_floor, step_count,
	step_span, base_amount, unused_value, show_message)
int group, unit_index, message_id, resistance_index, status_index;
int resistance_floor, step_count, step_span, base_amount, unused_value;
int show_message;
{
	int unused_status_word;
	int unused_resistance_word;
	int amount;
	if (battle_groups[group]->unit[unit_index].state >= 2 ||
	    combatant_evades_targeting(group, unit_index))
		return;

	if (group == 0) {
		aztec_movmem(party_records[unit_index].resistance_rows.named.resist,
			battle_group_ext[0]->resistance, 14);
		if (resistance_index == 1 || resistance_index == 7)
			resistance_floor -=
				party_records[unit_index].skills[23] / 2;
	}

	amount = add_random_steps(*store_word_and_pair(step_count,
				step_span, base_amount));
	amount = roll_resisted_amount(group, amount, resistance_index,
				resistance_floor);
	if (amount > 0 && random_below(100) >
				battle_group_ext[group]->resistance[resistance_index]
				- resistance_floor) {
		if (base_amount == 255)
			battle_groups[group]->unit[unit_index].status[status_index] = 255;
		else if (battle_groups[group]->unit[unit_index]
				.status[status_index] + amount > 250)
			battle_groups[group]->unit[unit_index]
				.status[status_index] = 250;
		else
			battle_groups[group]->unit[unit_index]
				.status[status_index] += (unsigned char)amount;

		if (status_index == 5)
			battle_groups[group]->unit[unit_index]
			.poison_strength = base_amount;
		announce_combatant_effect(group, unit_index, message_id, 1, 0);
	} else if (show_message == 1)
		announce_combatant_effect(group, unit_index, MSG_UNAFFECTED_3471, 0, 0);
}
