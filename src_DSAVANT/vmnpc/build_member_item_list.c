/* Builds the item list rows from a party member's inventory. */
#include "structs/pcrec.h"
#include "structs/itemrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int member_item_count;
extern int member_item_slot_indices[];
extern int list_row_glyph[];
extern int list_row_marked[];
extern int list_row_count[];
extern char list_row_name[][22];
extern char item_type_counted[];
extern int data_record_io();
extern int aztec_strcpy();
extern int load_message_string();

/* Adds owned and identified inventory items to the NPC selection rows. */
build_member_item_list(member_index)
int member_index;
{
	int page;
	int slot;
	struct item_record item;

	member_item_count = 0;
	for (page = 0; page < 2; ++page) {
		for (slot = 0; slot < 10; ++slot) {
			if (party_records[member_index].item_slots[page][slot].item_id > 0) {
				data_record_io(1, &item,
					party_records[member_index].item_slots[page][slot].item_id, 0);
				if ((party_records[member_index].item_slots[page][slot].flags & 128) != 0)
					aztec_strcpy(list_row_name[member_item_count], item.name);
				else
					load_message_string(MSG_DAGGER_6000 +
						item.glyph,
						list_row_name[member_item_count]);
				list_row_glyph[member_item_count] =
					item.glyph;
				list_row_marked[member_item_count] = page;
				if (item_type_counted[
				    party_records[member_index].item_slots[page][slot].item_type] == 1)
					list_row_count[member_item_count] =
						party_records[member_index].item_slots[page][slot].level;
				else
					list_row_count[member_item_count] = 0;
				member_item_slot_indices[member_item_count] = (page << 8) + slot;
				++member_item_count;
			}
		}
	}
}
