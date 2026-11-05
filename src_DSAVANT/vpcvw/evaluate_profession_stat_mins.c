/* Enforce or adjust a member's minimum profession stats. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int profession_eligible[];

evaluate_profession_stat_mins(member_index, profession_index, minimum_stats,
			      adjust_stats)
int member_index;
int profession_index;
char *minimum_stats;
int adjust_stats;
{
	int stat_index;

	profession_eligible[profession_index] = 1;
	for (stat_index = 0; stat_index < 7; ++stat_index) {
		if (party_records[member_index].stat[stat_index] <
		    minimum_stats[stat_index] - 65) {
			if (adjust_stats)
				party_records[member_index].stat[stat_index] =
					minimum_stats[stat_index] - 65;
			else
				profession_eligible[profession_index] = 0;
		}
	}
}
