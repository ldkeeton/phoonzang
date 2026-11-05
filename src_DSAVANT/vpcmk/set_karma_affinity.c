/* Store one karma affinity byte for a party member. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];

/* Affinity is 40 less four per point of distance between karma (stat 7)
   and the reference karma. */
set_karma_affinity(character, entry_index, reference_karma)
int character, entry_index, reference_karma;
{
	party_records[character].pad1[entry_index] = 40 -
		((party_records[character].stat[7] - reference_karma < 0 ?
		-(party_records[character].stat[7] - reference_karma) :
		party_records[character].stat[7] - reference_karma) * 4);
}
