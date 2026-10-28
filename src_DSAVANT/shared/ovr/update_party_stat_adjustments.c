/* Derive bounded party stat adjustments from power and supplied ratios. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int clamp_between();

/* Store the bounded adjustments and the stat 5 plus power sum. */
update_party_stat_adjustments(member, limit, scale4, used4, scale5, used5)
int member, limit, scale4, used4, scale5, used5;
{
	int power;

	power = party_records[member].power_cap < party_records[member].power_floor ?
		party_records[member].power_floor : party_records[member].power_cap;
	power = power > 20 ? 20 : power;		/* Cap the power contribution. */
	limit = clamp_between(limit, 1, power / 3 + 1);	/* Power bounds the limit. */
	party_records[member].adjusted_stat4 = party_records[member].stat[4] / 6 +
		/* One contribution per six stat points. */
		(power + scale4 - used4) / scale4 - 1;
	party_records[member].adjusted_stat4 = clamp_between(
		party_records[member].adjusted_stat4, 1, limit);
	party_records[member].adjusted_stat5 = party_records[member].stat[5] / 6 +
		/* Same divisor for stat 5. */
		(power + scale5 - used5) / scale5 - 1;
	party_records[member].adjusted_stat5 = clamp_between(
		party_records[member].adjusted_stat5, 1, limit);
	party_records[member].stat5_plus_power =
		party_records[member].stat[5] + power;
}
