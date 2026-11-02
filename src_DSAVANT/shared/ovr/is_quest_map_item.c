/* Test whether an item is one of the eleven quest maps, SCENARIO.DBS items
   400-410: *TEMPLE*, *BOAT*, *SERPENT*, *DRAGON*, *SPHINX*, *CRYPT*,
   *LEGEND*, *CRYSTAL*, *STAR*, *GLOBE* and *FOOLS*.  Callers pass
   item_id - 400 to give_quest_map as the map index. */
is_quest_map_item(item_id)
int item_id;
{
	return item_id >= 400 && item_id < 411 ? 1 : 0;
}
