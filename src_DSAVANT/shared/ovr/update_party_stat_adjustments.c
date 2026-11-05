/* Derive bounded party stat adjustments from the effective level and supplied
   ratios. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int clamp_between();

/* Store the bounded adjustments and the stat 5 plus effective level sum. */
update_party_stat_adjustments(member, limit, scale4, used4, scale5, used5)
int member, limit, scale4, used4, scale5, used5;
{
	int effective_level;

	effective_level =
		party_records[member].level < party_records[member].pre_drain_level ?
		party_records[member].pre_drain_level : party_records[member].level;
	effective_level = effective_level > 20 ? 20 : effective_level;
		/* Cap the level used. */
	limit = clamp_between(limit, 1, effective_level / 3 + 1);
		/* The level bounds the limit. */
	party_records[member].adjusted_stat4 = party_records[member].stat[4] / 6 +
		/* One contribution per six stat points. */
		(effective_level + scale4 - used4) / scale4 - 1;
	party_records[member].adjusted_stat4 = clamp_between(
		party_records[member].adjusted_stat4, 1, limit);
	party_records[member].attacks_per_round = party_records[member].stat[5] / 6 +
		/* Same divisor for stat 5. */
		(effective_level + scale5 - used5) / scale5 - 1;
	party_records[member].attacks_per_round = clamp_between(
		party_records[member].attacks_per_round, 1, limit);
	party_records[member].speed_plus_level =
		party_records[member].stat[5] + effective_level;
}
