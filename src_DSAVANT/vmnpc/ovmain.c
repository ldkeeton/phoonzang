/* Enter the NPC shop interaction for the current NPC. */
extern int npc_id, npc_record_index;
extern int run_npc_shop_interaction();

ovmain()
{
	npc_record_index = npc_id;
	run_npc_shop_interaction();
	return 0;
}
