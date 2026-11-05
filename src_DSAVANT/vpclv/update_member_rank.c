/* Raise a party member's rank as their level passes seven thresholds. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];

/* Keep the member's current rank if it already exceeds the level rank. */
update_member_rank(member_index)
int member_index;
{
	int i;
	int count;
	int threshold;

	count = 0;
	i = 0;
	do {
		switch (i) {
		case 0: threshold = 2; break;
		case 1: threshold = 4; break;
		case 2: threshold = 7; break;
		case 3: threshold = 10; break;
		case 4: threshold = 14; break;
		case 5: threshold = 18; break;
		case 6: threshold = 24; break;
		}
		if (party_records[member_index].level >= threshold)
			count++;
	} while (++i < 7);
	if (party_records[member_index].rank < count)
		party_records[member_index].rank = count;
}
