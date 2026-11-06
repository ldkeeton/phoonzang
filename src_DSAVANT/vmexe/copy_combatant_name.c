/* Copy a party member's name, or the monster's singular name as currently
   identified, into destination. */
#include "structs/member.h"
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern int aztec_strcpy();

copy_combatant_name(destination, group, unit)
char *destination;
int group, unit;
{
	if (group == 0)
		aztec_strcpy(destination, party_records[unit].name);
	else
		aztec_strcpy(destination,
			battle_group_ext[group]->name[
				battle_groups[group]->unidentified][0]);
}
