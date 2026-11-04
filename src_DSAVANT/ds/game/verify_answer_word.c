/* checks the entered answer word against the code table; on the last matched
   slot passes the npc_id address on to npc_id_answer_relay */

extern unsigned char answer_word[];
extern int answer_length, npc_id_clue_relay, npc_id_answer_relay;
extern char code_table[];

verify_answer_word()
{
	int i;

	for (i = 0; i < answer_length; i++) {
		if ((char)((answer_word[i] * 37 + i * 17) % 255)
		    != code_table[26 + i])
			return 0;
		if (i == answer_length - 1)
			npc_id_answer_relay = npc_id_clue_relay;
	}
	return 1;
}
