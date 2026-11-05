/* Classify an item and reject it when the member fails its eligibility
   masks. */
#include "structs/itemrec.h"
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int test_bit();

int item_inventory_category(member, item)
int member;
struct item_record *item;
{
	int category;
	category = -1;
	switch (item->item_type) {
	case 1:
	case 2:
	case 3:
	case 12:
	case 16:
	case 0:
		category = 0;
		if (item->slot_flags & 8)
			category = -2;
		break;
	case 4:
		category = 1;
		break;
	case 5:
		category = 2;
		break;
	case 6:
		category = 3;
		break;
	case 7:
		category = 4;
		break;
	case 8:
		category = 5;
		break;
	case 9:
		category = 6;
		break;
	case 10:
		category = 7;
		break;
	case 11:
		category = 1;
		break;
	case 13:
	case 14:
	case 15:
		if (item->slot_flags & 8)
			category = 1;
		break;
	}
	if (test_bit(item->profession_mask,
		party_records[member].profession) != 1 ||
	     test_bit(item->race_mask, party_records[member].race) != 1 ||
	     test_bit(item->gender_mask, party_records[member].gender) != 1)
		category = -1;
	return category;
}
