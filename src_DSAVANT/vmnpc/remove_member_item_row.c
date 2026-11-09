/* Removes one member item row and shifts subsequent rows forward. */
extern int member_item_count;
extern int member_item_slot_indices[];
extern int list_row_marked[];
extern int list_row_glyph[];
extern int list_row_count[];
extern char list_row_name[][22];

/* Removes the selected NPC item row from all parallel lists. */
remove_member_item_row(row)
int row;
{
	int i;

	--member_item_count;
	for (i = row; i < member_item_count; ++i) {
		aztec_strcpy(list_row_name[i], list_row_name[i + 1]);
		list_row_glyph[i] = list_row_glyph[i + 1];
		list_row_marked[i] = list_row_marked[i + 1];
		list_row_count[i] = list_row_count[i + 1];
		member_item_slot_indices[i] = member_item_slot_indices[i + 1];
	}
}
