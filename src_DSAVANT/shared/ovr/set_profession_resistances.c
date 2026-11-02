/* Set a member's fourteen base resistances from their profession's tables. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int adjust_member_resistance();

set_profession_resistances(member_index, base_values, per_level)
int member_index;
char *base_values;		/* resist = value * 4 - 260 at level 1 */
char *per_level;		/* ASCII digits: percent gained per level */
{
	int resist;
	int amount;
	int levels;

	/* Levels past the first count, up to 16; power_floor can stand in for a
	   lower level.  adjust_member_resistance clamps to 0..125. */
	for (resist = 0; resist < 14; resist++) {
		party_records[member_index].base_resist[resist] = 0;
		levels = party_records[member_index].level
			< party_records[member_index].power_floor
			? party_records[member_index].power_floor
			: party_records[member_index].level;
		levels = levels > 16 ? 16 : levels - 1;
		amount = base_values[resist] * 4
			+ (per_level[resist] - '0') * levels
			- 260;
		adjust_member_resistance(member_index, 0, resist, amount);
	}
}
