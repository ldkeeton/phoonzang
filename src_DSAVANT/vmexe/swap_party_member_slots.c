/* Swap two party members' records, combatants, roster entries and icons. */
#include "structs/member.h"
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern struct member_rec *battle_groups[];
extern int member_roster_index[];
extern int member_icon[];
extern int swapmem();
extern int sync_member_party_panel();
extern int wait_for_combat_input();

swap_party_member_slots(first_member, second_member)
int first_member;
int second_member;
{
	struct combatant saved_combatant_space;
	struct pc_rec saved_party_space;
	int saved_value;

	swapmem(&party_records[second_member],
		&party_records[first_member], sizeof(struct pc_rec));
	swapmem(&battle_groups[0]->unit[second_member],
		&battle_groups[0]->unit[first_member], sizeof(struct combatant));

	saved_value = member_roster_index[second_member + 1];
	member_roster_index[second_member + 1] =
		member_roster_index[first_member + 1];
	member_roster_index[first_member + 1] = saved_value;

	saved_value = member_icon[second_member];
	member_icon[second_member] = member_icon[first_member];
	member_icon[first_member] = saved_value;

	sync_member_party_panel(first_member, 0);
	sync_member_party_panel(second_member, 0);
	wait_for_combat_input(6);
}
