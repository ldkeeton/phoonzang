/* Give a new character up to five starting items. */
extern int add_item_record_to_member();

/* Add each nonzero item id to the character's inventory. */
add_starting_items(character, item1, item2, item3, item4, item5)
int character, item1, item2, item3, item4, item5;
{
	if (item1)
		add_item_record_to_member(character, item1);
	if (item2)
		add_item_record_to_member(character, item2);
	if (item3)
		add_item_record_to_member(character, item3);
	if (item4)
		add_item_record_to_member(character, item4);
	if (item5)
		add_item_record_to_member(character, item5);
}
