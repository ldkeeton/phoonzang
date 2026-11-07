/* Raise a combatant's state unless it evades or resists; state 3 kills. */

#include "structs/member.h"
#include "structs/pcrec.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct pc_rec party_records[];
extern int random_below();
extern int movmem();
extern int combatant_evades_targeting();
extern int kill_combatant();
extern announce_combatant_effect();

set_resisted_combatant_state(group, unit_index, message_id, resistance_index,
	new_state, resistance_floor, unused_value, show_message)
int group, unit_index, message_id, resistance_index;
int new_state, resistance_floor, unused_value, show_message;
{
	int death_sound;

	if (battle_groups[group]->unit[unit_index].state >= new_state ||
	    combatant_evades_targeting(group, unit_index))
		return;
	if (group == 0)
		movmem(party_records[unit_index].resistance_rows.named.resist,
			battle_group_ext[0]->resistance, 14);
	death_sound = 0;
	if (resistance_index == 0 ||
	    random_below(100) > battle_group_ext[group]->resistance[resistance_index]
			- resistance_floor) {
		battle_groups[group]->unit[unit_index].state = new_state;
		if (new_state >= 3) {
			kill_combatant(group, unit_index);
			if (group == 0)
				death_sound = party_records[unit_index].gender + 8;
		}
		announce_combatant_effect(group, unit_index, message_id, 1,
			death_sound);
	} else {
		if (show_message == 1)
			announce_combatant_effect(group, unit_index, MSG_UNAFFECTED_3471, 0, 0);
	}
}
