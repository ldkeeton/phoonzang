/* sum the weighted value of each item into one party record */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern item_slot_power();

sum_member_item_power(pc)
int pc;
{
	int slot, page;		/* page is outer so it sits at bp-4 */

	party_records[pc].power_total = 0;
	for (page = 0; page < 2; page++) {		/* two pages */
		for (slot = 0; slot < 10; slot++) {	/* ten cells per page */
			if (party_records[pc].item_slots[page][slot].item_id > 0)
				party_records[pc].power_total +=
					item_slot_power(pc, page, slot);
		}
	}
}
