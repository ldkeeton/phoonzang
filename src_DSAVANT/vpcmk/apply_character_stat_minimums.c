/* Raise character statistics to their required minimum values. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];

/* Apply the encoded minimums to the eight character stats. */
apply_character_stat_minimums(character, requirements)
int character;
char *requirements;
{
	int stat_index;

	for (stat_index = 0; stat_index < 8; stat_index++) {
		if ((int)requirements[stat_index] - 65 >
		    party_records[character].stat[stat_index])
			party_records[character].stat[stat_index] =
				requirements[stat_index] - 65;
	}
}
