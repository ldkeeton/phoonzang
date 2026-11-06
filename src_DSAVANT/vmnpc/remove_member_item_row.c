/* Removes one member item row and shifts subsequent rows forward. */
extern int member_item_count;
extern int member_item_slot_indices[], member_item_slot_indices_next[];
extern int list_row_marked[], list_row_marked_next[];
extern int list_row_glyph[], list_row_glyph_next[];
extern int list_row_count[], list_row_count_next[];
extern char list_row_name[], list_row_name_next[];

/* Removes the selected NPC item row from all parallel lists. */
remove_member_item_row(row)
int row;
{
	int i;

	--member_item_count;
	for (i = row; i < member_item_count; ++i) {
		aztec_strcpy(list_row_name + i * 22, list_row_name_next + i * 22);
		list_row_glyph[i] = list_row_glyph_next[i];
		list_row_marked[i] = list_row_marked_next[i];
		list_row_count[i] = list_row_count_next[i];
		member_item_slot_indices[i] = member_item_slot_indices_next[i];
	}
}
