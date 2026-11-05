/* Move an item at the party position into a member's empty inventory slot. */
#include "structs/flooritm.h"
#include "structs/pcrec.h"
extern struct pc_rec party_records[];
extern int find_empty_party_item_slot();
extern struct floor_item *find_floor_item_at_party();
extern int play_sound_effect();
extern int init_item_slot();

/* Use the packed empty-slot index to choose a bank and slot. */
pick_up_floor_item(party_index)
int party_index;
{
	int empty_slot;
	int bank_index;
	int slot_index;
	struct floor_item *floor_item;

	empty_slot = find_empty_party_item_slot(party_index);
	if (empty_slot == -1) {
		play_sound_effect(0);
		return;
	}
	bank_index = empty_slot / 256;
	slot_index = empty_slot % 256;
	if ((floor_item = find_floor_item_at_party()) != 0) {
		init_item_slot(party_index, floor_item->item_id,
			&party_records[party_index].item_slots[bank_index][slot_index],
			floor_item->level, (floor_item->flags & 128) ? 1 : 0);
		floor_item->map = 255;
	} else
		play_sound_effect(0);
}
