/* Lower a party member's stats to the given caps. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];

/* Lower each stat that exceeds its adjusted value. */
void cap_member_stats(member_index, stat_changes)
int member_index;
char *stat_changes;
{
	int i;

	for (i = 0; i < 7; i++) {
		if (party_records[member_index].stat[i] > stat_changes[i] - 65)
			party_records[member_index].stat[i] = stat_changes[i] - 65;
	}
}
