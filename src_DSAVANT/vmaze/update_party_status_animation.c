/* Update the party animation and check active members for detection. */
#include "structs/pcrec.h"
#include "msg.h"
#include "structs/loadrec.h"
extern struct status_pair party_effects[];

extern int party_status_frame_step;
extern int party_char_count;
extern struct pc_rec party_records[];
extern int random_below();
extern int member_is_active();
extern int display_member_message();

update_party_status_animation()
{
	int member_index;
	int unused;

	/* A positive spell bonus can trigger the party status animation. */
	if (party_effects[PARTY_EFFECT_DETECTION].timer > 0) {
		/* Compare a 0..99 roll with the stored threshold. */
		if (random_below(100) < party_effects[PARTY_EFFECT_DETECTION].strength)
			party_status_frame_step = 1;
	}

	/* Each active member may spot the hidden feature by Scouting. */
	for (member_index = 0; member_index < party_char_count; member_index++) {
		if (member_is_active(member_index)) {
			/* Scouting (skills[12]) against a 0..199 roll. */
			if (random_below(200) < party_records[member_index].skills[12]) {
				display_member_message(member_index, MSG_DETECTS_SOMETHING);
				return;
			}
		}
	}
}
