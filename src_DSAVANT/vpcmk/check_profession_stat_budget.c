/* Check whether a profession's stat allocation fits the remaining budget. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int remaining_stat_points;
extern int profession_eligible[];
extern int display_character_statistics();

check_profession_stat_budget(member_index, profession_index, target_stats,
			     update_stats)
int member_index, profession_index;
char *target_stats;
int update_stats;
{
	int stat_index;
	int stat_value;
	int remaining_points;

	remaining_points = remaining_stat_points;
	for (stat_index = 0; stat_index < 8; stat_index++) {
		stat_value = party_records[member_index].stat[stat_index];
		while (target_stats[stat_index] - 65 > stat_value) {
			stat_value++;
			remaining_points--;
			if (update_stats == 1) {
				party_records[member_index].stat[stat_index]++;
				remaining_stat_points--;
				display_character_statistics(member_index, 1);
			}
		}
	}
	profession_eligible[profession_index] = remaining_points >= 0;
}
