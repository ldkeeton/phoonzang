/* Apply the stat adjustments for a female character. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];

/* Reduce stat 0 and increase stats 6 and 7 for a female character. */
adjust_female_character_stats(member_index, gender)
int member_index, gender;
{
	if (gender == 1) {
		party_records[member_index].stat[0] -= 2;
		party_records[member_index].stat[6]++;
		party_records[member_index].stat[7]++;
	}
}
