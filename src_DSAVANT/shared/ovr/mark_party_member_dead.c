/* Set a party record to the dead state and optionally redraw its panel. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int play_sound_effect();
extern int draw_party_member_panel();
extern int wait_for_hotspot_timeout();

mark_party_member_dead(member_index, redraw_mode)
int member_index;
int redraw_mode;
{
	/* A record already at state 3 does not get another sound. */
	if (party_records[member_index].state < 3) {
		/* The sound index starts at 8 and is offset by the record gender. */
		play_sound_effect(party_records[member_index].gender + 8);
	}

	party_records[member_index].state = 3;
	party_records[member_index].hp[0] = 0;
	party_records[member_index].stamina[0] = 0;

	/* A positive mode redraws; modes above 1 also wait for the timeout. */
	if (redraw_mode > 0) {
		draw_party_member_panel(member_index, 1);
		if (redraw_mode > 1)
			wait_for_hotspot_timeout(8);
	}
}
