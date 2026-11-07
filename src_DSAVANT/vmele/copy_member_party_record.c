/* copy the battle member's current combat fields into its party record */

#include "structs/member.h"
#include "structs/pcrec.h"

extern struct member_rec *battle_groups[];
extern struct pc_rec party_records[];
extern movmem();

copy_member_party_record(member)
int member;
{
	party_records[member].hp[0] = battle_groups[0]->unit[member].hp;
	party_records[member].stamina[0] = battle_groups[0]->unit[member].stamina;
	party_records[member].state = battle_groups[0]->unit[member].state;
	movmem(battle_groups[0]->unit[member].status,
		party_records[member].status, 10);
	party_records[member].poison_strength =
		battle_groups[0]->unit[member].poison_strength;
}
