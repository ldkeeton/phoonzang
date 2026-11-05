/* Add an item record to the first free slot in a party member record. */
#include "structs/itemrec.h"

extern struct pc_rec party_records[];
extern int data_record_io();
extern int sum_member_item_weight();

/* Read and install one item record, then recalculate carried weight. */
add_item_record_to_member(character, item_id)
int character, item_id;
{
	int slot_index;
	int unused_word_04;
	struct item_record item;
	struct pc_item_slot *slot;

	data_record_io(1, &item, item_id, 0);
	slot_index = 0;
	while (party_records[character].item_slots[0][slot_index].item_id > 0)
		slot_index++;
	slot = &party_records[character].item_slots[0][slot_index];
	slot->level =
		item.level_spec.count * item.level_spec.span + item.level_spec.base;
	slot->item_id = item_id;
	slot->item_type = item.item_type;
	slot->glyph = item.glyph;
	slot->weight = item.weight;
	slot->resist_bonus[0] = item.resist_bonus[0];
	slot->resist_bonus[1] = item.resist_bonus[1];
	slot->regen_drain = item.regen_drain;
	slot->armor_class = item.armor_class;
	slot->flags = 128;
	if (item.slot_flags & 8)
		slot->flags |= 4;
	if (item.slot_flags & 4)
		slot->flags |= 8;
	if (item.slot_flags & 16)
		slot->flags |= 16;
	if (item.slot_flags & 32)
		slot->flags |= 32;
	if (item.slot_flags & 2)
		slot->flags |= 64;
	sum_member_item_weight(character);
}
