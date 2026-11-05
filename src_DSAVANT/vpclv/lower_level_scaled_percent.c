/* Lower a member's level_scaled_percent after a level gain. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int random_below();

/* Class and stat 4 set the random reduction; regaining drained levels skips
   it. */
lower_level_scaled_percent(member_index)
int member_index;
{
	int reduction;
	int stat4;

	if (party_records[member_index].level > 20)
		return;
	stat4 = party_records[member_index].stat[4];
	reduction = 0;
	switch (party_records[member_index].profession) {
	case 0: case 4: case 8: case 10: case 12:
		reduction = random_below(4) + 2;
		break;
	case 1: case 5: case 7: case 9:
		reduction = random_below(3) + 1;
		break;
	case 2: case 3: case 6:
		reduction = random_below(4) + 1;
		break;
	case 11: case 13:
		reduction = random_below(4) + 3;
		break;
	}
	if (stat4 < 8)
		--reduction;
	if (party_records[member_index].level
		< party_records[member_index].pre_drain_level)
		reduction = 0;
	party_records[member_index].level_scaled_percent -= reduction;
	if (party_records[member_index].level_scaled_percent < 0)
		party_records[member_index].level_scaled_percent = 0;
}
