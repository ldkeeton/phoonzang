/* Start the copy-protection chain with the address of npc_id. */
extern int npc_id_address, npc_id;
set_npc_id_address()
{
	npc_id_address = (int)&npc_id;
}
