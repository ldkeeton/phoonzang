/* Add an amount to one of a member's base or current resistances. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int clamp_between();

adjust_member_resistance(member_index, resistance_row, resistance_index,
			 amount)
int member_index, resistance_row, resistance_index, amount;
{
	/* Resistance percentages are bounded to the game's 0..125 range. */
	party_records[member_index].resistance_rows.values[resistance_row]
		[resistance_index] = clamp_between(
		party_records[member_index].resistance_rows.values[resistance_row]
			[resistance_index] + amount,
		0, 125);
}
