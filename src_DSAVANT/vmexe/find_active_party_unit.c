/* Finds an active party unit adjacent to the requested unit index. */

#include "structs/member.h"

extern struct member_rec *battle_groups[];
extern int party_char_count;

find_active_party_unit(requested_index)
int requested_index;
{
	int attempt, unit_index;

	unit_index = requested_index > 0 ? requested_index - 1 : requested_index;
	attempt = 0;
	do {
		if (battle_groups[0]->unit[unit_index].state < 3 &&
			battle_groups[0]->unit[unit_index].phase == 0)
			return unit_index;
		unit_index = party_char_count - 1 > requested_index ?
			requested_index + 1 : requested_index;
	} while (++attempt < 2);
	return requested_index;
}
