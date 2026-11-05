/* Check whether a member has enough experience for another level. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int data_record_io();
extern int item_page_drawn;

/* Award every earned level when requested, or only report eligibility. */
check_or_apply_level_ups(member_index, award_levels)
int member_index, award_levels;
{
	long target_experience;
	long experience_thresholds[16];
	int level_offset;

	data_record_io(0, experience_thresholds,
		party_records[member_index].profession, 0);
	item_page_drawn = 0;
	for (;;) {
		if (party_records[member_index].level < 16)
			target_experience =
				experience_thresholds[party_records[member_index].level - 1];
		else {
			level_offset = party_records[member_index].level - 16;
			target_experience = experience_thresholds[15] +
				(experience_thresholds[15] - experience_thresholds[14]) *
				level_offset;
		}
		if (party_records[member_index].experience >= target_experience) {
			if (award_levels)
			award_member_level(member_index);
			else
				return 1;
		} else
			return 0;
	}
}
