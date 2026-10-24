/* sets up the party for a melee: clears the action slots, loads the NPC
   record into slot 1 and rolls each member's action count */

extern int character_record_index;
	/* character record loaded into the party */
extern int party_entry_flag;			/* party-screen entry flag */
extern int party_entry_mode;			/* party-screen entry mode */
extern unsigned char *party_member_ext_1;	/* party_char_ext[1] record */
extern int selected_item_slot;			/* selected item slot, -1 for none */
extern int selected_item_record;		/* selected item record */
extern long item_action_reward;			/* running item damage total */

extern reset_party_actions(), add_party_member(), roll_member_actions(),
	copy_member_stats();

setup_melee_party()
{
	int unused1, unused2;		/* frame words the original never uses */

	item_action_reward = 0;
	if (character_record_index == 225)		/* 0xe1: special character record */
		party_entry_flag = 1;
	reset_party_actions();
	add_party_member(character_record_index, 1);	/* record into party slot 1 */
	selected_item_record = party_member_ext_1[party_entry_mode + 168];
	selected_item_slot = -1;			/* no item slot selected */
	roll_member_actions();
	copy_member_stats();
}
