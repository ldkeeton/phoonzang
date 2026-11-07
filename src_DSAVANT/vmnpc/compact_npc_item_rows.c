/* Compact the NPC item rows, keeping every parallel field aligned. */
extern int npc_item_list_count;
extern int npc_item_list_item_id[];
extern char npc_item_list_name[][22];
extern int npc_item_list_item_count[];
extern unsigned long npc_item_list_value[];
extern unsigned char npc_item_list_profession_mask[];
extern unsigned char npc_item_list_race_mask[];
extern unsigned char npc_item_list_gender_mask[];
extern unsigned char npc_item_list_item_type[];
extern unsigned char npc_item_list_glyph[];
extern int strcpy();

/* Discard empty rows and clear the unused tail of the list. */
compact_npc_item_rows()
{
	int row, field;

	npc_item_list_count = 0;
	for (row = 0; row < 30; ++row) {
		if (npc_item_list_item_id[row] > 0) {
			npc_item_list_item_id[npc_item_list_count] =
				npc_item_list_item_id[row];
			strcpy(npc_item_list_name[npc_item_list_count],
				npc_item_list_name[row]);
			npc_item_list_item_count[npc_item_list_count] =
				npc_item_list_item_count[row];
			npc_item_list_value[npc_item_list_count] =
				npc_item_list_value[row];
			npc_item_list_item_type[npc_item_list_count] =
				npc_item_list_item_type[row];
			npc_item_list_glyph[npc_item_list_count] =
				npc_item_list_glyph[row];
			for (field = 0; field < 2; ++field) {
				npc_item_list_profession_mask[npc_item_list_count * 2 + field] =
					npc_item_list_profession_mask[row * 2 + field];
				npc_item_list_race_mask[npc_item_list_count * 2 + field] =
					npc_item_list_race_mask[row * 2 + field];
			}
			npc_item_list_gender_mask[npc_item_list_count] =
				npc_item_list_gender_mask[row];
			++npc_item_list_count;
		}
	}
	for (row = npc_item_list_count; row < 30; ++row)
		npc_item_list_item_id[row] = 0;
}
