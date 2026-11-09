/* Pass the npc_id address on when the clue character matches and an answer
   was entered. */
extern unsigned char code_characters[];
extern unsigned code_char_index;
extern int answer_length;
extern int *npc_id_address;
extern int *npc_id_clue_relay;

relay_npc_id_address()
{
	/* The first clue character is compared with the selected character index. */
	if (code_characters[0] == code_char_index) {
		/* An empty answer leaves the relay on the decoy. */
		if (answer_length > 0)
			npc_id_clue_relay = npc_id_address;
	}
}
