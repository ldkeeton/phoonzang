/* rerolls skill_group_points[0], [1], [3] from base0/base1/base3 plus pairs of
   record
   rec's stat bytes; skill_group_points[2] gains 1-2 per nonzero flag byte
   indexed by skill group 2 (skill_group_ranges[2]) */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int skill_group_points[];
extern int personal_skill_points;
	/* skill_group_points[2]; personal_skill_points in vpcmk */
extern int skill_group_ranges[4][2];
extern int random_below();

roll_skill_points(rec, base0, base1, base3)
int rec, base0, base1, base3;
{
	int i, half, value[4], pair[4][2];

	value[0] = base0;
	value[1] = base1;
	value[2] = 0;
	value[3] = base3;
	/* the two stat bytes each slot adds; slot 2 is not rolled here */
	pair[0][0] = 0;
	pair[0][1] = 5;
	pair[1][0] = 3;
	pair[1][1] = 4;
	pair[2][0] = 0;
	pair[2][1] = 0;
	pair[3][0] = 1;
	pair[3][1] = 2;
	for (i = 0; i < 4; i++) {
		if (i == 2)
			continue;
		value[i] += (party_records[rec].stat[pair[i][0]] +
			party_records[rec].stat[pair[i][1]]) / 6 - 3;
		if (value[i] < 1)		/* floor of 1 */
			value[i] = 1;
		half = value[i] / 2;
		/* uniform in half..value */
		skill_group_points[i] = random_below(value[i] - half + 1) + half;
	}
	personal_skill_points = 0;
	for (i = skill_group_ranges[2][0]; i <= skill_group_ranges[2][1]; i++)
		if (party_records[rec].skills[i] > 0)
			personal_skill_points = random_below(2) + personal_skill_points + 1;
				/* 1 or 2 */
}
