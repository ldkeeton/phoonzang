/* Start the copy-protection chain with the address of npc_id. */
extern int npc_id_address;
set_npc_id_address()
{
	npc_id_address = 3638;	/* 0x0e36: &npc_id */
}
