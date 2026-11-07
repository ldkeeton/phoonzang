/* Copy a party member's name, or the monster's singular name as currently
   identified, into destination. */
#include "structs/member.h"
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern int strcpy();

copy_combatant_name(destination, group, unit)
char *destination;
int group, unit;
{
	if (group == 0)
		strcpy(destination, party_records[unit].name);
	else
		strcpy(destination,
			battle_group_ext[group]->name[
				battle_groups[group]->unidentified][0]);
}
