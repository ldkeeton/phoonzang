/* sets up the party for a melee: clears the action slots, loads the NPC
   record into slot 1 and rolls each member's action count */

extern int npc_id;
	/* character record loaded into the party */
extern int party_entry_flag;			/* party-screen entry flag */
extern int party_entry_mode;			/* party-screen entry mode */
extern unsigned char *battle_group_ext_1;	/* battle_group_ext[1] record */
extern int selected_item_slot;			/* selected item slot, -1 for none */
extern int selected_item_record;		/* selected item record */
extern long battle_experience;			/* experience earned from kills this battle */

extern reset_party_actions(), add_party_member(), roll_member_actions(),
	copy_member_stats();

setup_melee_party()
{
	int unused1, unused2;		/* frame words the original never uses */

	battle_experience = 0;
	if (npc_id == 225)		/* 0xe1: special character record */
		party_entry_flag = 1;
	reset_party_actions();
	add_party_member(npc_id, 1);	/* record into party slot 1 */
	selected_item_record = battle_group_ext_1[party_entry_mode + 168];
	selected_item_slot = -1;			/* no item slot selected */
	roll_member_actions();
	copy_member_stats();
}
