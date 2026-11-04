/* Each party member may identify each monster group still shown by its
   unidentified name. */

#include "structs/member.h"
#include "structs/pcrec.h"

extern struct member_rec *battle_groups[];
extern struct pc_rec party_records[];
extern int current_level;
extern int party_char_count, monster_group_count;
extern int random_below(), try_raise_member_skill();

identify_monster_groups()
{
	int group, member, roll;

	/* unidentified == 1: the group still shows its unidentified name. */
	for (group = 1; group <= monster_group_count; group++) {
		for (member = 0; member < party_char_count; member++) {
			roll = random_below(100);
			if (battle_groups[group]->unidentified == 1
			    && (party_records[member].skills[25] - 3 * current_level > roll
				|| party_records[member].stat[1] > roll)) {
				battle_groups[group]->unidentified = 0;
				try_raise_member_skill(member, 25, 0);
			}
		}
	}
}
