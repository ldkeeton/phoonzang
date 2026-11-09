/* Find the item recipe matching two ingredient records. */
#include "structs/pcrec.h"
#include "structs/spell.h"

extern struct spell_table_view spell_table;
extern int rebalance_item_stack();
extern int create_item_slot_from_record();

int combine_item_recipe(left, right, result)
struct pc_item_slot *left, *right, *result;
{
	int recipe;

	for (recipe = 0; recipe < 15; recipe++) {
		if ((spell_table.recipe[recipe].left == left->item_id
			&& spell_table.recipe[recipe].right == right->item_id)
			|| (spell_table.recipe[recipe].right == left->item_id
			&& spell_table.recipe[recipe].left == right->item_id)) {
			if (left->flags & 32) {
				rebalance_item_stack(left, right);
				return 1;
			}
			if (right->flags & 32) {
				rebalance_item_stack(right, left);
				return 1;
			}
			create_item_slot_from_record(
				spell_table.recipe[recipe].result,
				left, right, result);
			return 1;
		}
	}
	return 0;
}
