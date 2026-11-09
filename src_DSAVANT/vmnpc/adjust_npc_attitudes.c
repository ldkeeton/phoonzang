/* Applies the member and faction attitude changes toward the NPC. */
#include "structs/pcrec.h"
#include "structs/npc.h"
extern struct npc_record npc_record;

extern struct pc_rec party_records[];
extern int npc_record_index;
extern char faction_attitudes[];
extern int clamp_between();

adjust_npc_attitudes(member_index, party_attitude_change,
		      faction_attitude_change)
int member_index;
int party_attitude_change;
int faction_attitude_change;
{
	party_records[member_index].pad1[npc_record_index] =
		clamp_between(party_records[member_index].pad1[
		npc_record_index] + party_attitude_change, -100, 100);
	faction_attitudes[npc_record.faction_index] = clamp_between(
		faction_attitudes[npc_record.faction_index] +
		faction_attitude_change, -100, 100);
}
