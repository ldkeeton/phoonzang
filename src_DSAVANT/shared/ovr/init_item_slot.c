/* Copy an item record into a member's item slot and recalculate the
 * member's item power. */
#include "structs/itemrec.h"
#include "structs/pcrec.h"

extern int data_record_io();
extern int add_random_steps();
extern int sum_member_item_weight();

init_item_slot(member_index, item_number, cell, requested_level,
							identified)
int member_index;
int item_number;
struct pc_item_slot *cell;
int requested_level;
int identified;
{
	int unused[2];			/* declared, never used: puts item at bp-0x4c */
	struct item_record item;

	/* Read the item fields used to initialize this party slot. */
	data_record_io(1, &item, item_number, 0);

	/* -2 derives level directly; -1 rolls a level; other values are supplied. */
	if (requested_level == -2)
		cell->level = item.level_spec.count * item.level_spec.span +
			item.level_spec.base;
	else if (requested_level == -1)
		cell->level = add_random_steps(item.level_spec);
	else
		cell->level = requested_level;

	cell->item_id = item_number;
	cell->item_type = item.item_type;
	cell->glyph = item.glyph;
	cell->weight = item.weight;
	cell->resist_bonus[0] = item.resist_bonus[0];
	cell->resist_bonus[1] = item.resist_bonus[1];
	cell->regen_drain = item.regen_drain;
	cell->armor_class = item.armor_class;

	/* Bit 7 marks the item identified (its own name is shown); then the
	 * record's flags are translated. */
	cell->flags = identified ? 128 : 0;
	if (item.slot_flags & 8)
		cell->flags |= 4;
	if (item.slot_flags & 4)
		cell->flags |= 8;
	if (item.slot_flags & 16)
		cell->flags |= 16;
	if (item.slot_flags & 32)
		cell->flags |= 32;
	if (item.slot_flags & 2)
		cell->flags |= 64;

	return sum_member_item_weight(member_index);
}
