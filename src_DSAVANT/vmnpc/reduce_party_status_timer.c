/* Decrease a party member status timer and optionally redraw its panel. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int draw_party_member_panel();

/* Subtract amount from one status timer, clamping it at zero. */
reduce_party_status_timer(member_index, status_index, amount, redraw)
int member_index;
int status_index;
int amount;
int redraw;
{
	int remaining;

	remaining = party_records[member_index].status[status_index] - amount;
	party_records[member_index].status[status_index] =
		remaining < 0 ? 0 : remaining;
	if (redraw)
		draw_party_member_panel(member_index, 1);
}
