/* Update the party animation and check active members for detection. */
#include "structs/pcrec.h"
#include "msg.h"

extern int detection_spell_bonus;
extern int detection_spell_threshold;
extern int party_status_frame_step;
extern int party_char_count;
extern struct pc_rec party_records[];
extern int random_below();
extern int member_is_active();
extern int display_member_message();

update_party_status_animation()
{
	int member_index;
	int reserved_stack_word;

	/* A positive spell bonus can trigger the party status animation. */
	if (detection_spell_bonus > 0) {
		/* Compare a 0..99 roll with the stored threshold. */
		if (random_below(100) < detection_spell_threshold)
			party_status_frame_step = 1;
	}

	/* Check each active member against the detection value in its record. */
	for (member_index = 0; member_index < party_char_count; member_index++) {
		if (member_is_active(member_index)) {
			/* The 0..199 roll is compared with flag byte +0x0c. */
			if (random_below(200) < party_records[member_index].flag[12]) {
				display_member_message(member_index, MSG_DETECTS_SOMETHING);
				return;
			}
		}
	}
}
