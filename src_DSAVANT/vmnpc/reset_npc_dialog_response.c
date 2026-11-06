/* Enables the NPC dialog response state selected by response_code. */
extern int npc_dialog_response_active;
extern int npc_dialog_topic_0_enabled, npc_dialog_topic_1_enabled;
extern int npc_dialog_topic_2_enabled, npc_dialog_topic_3_enabled;
extern int npc_dialog_topic_4_enabled, npc_dialog_topic_5_enabled;
extern int npc_dialog_topic_6_enabled;

reset_npc_dialog_response(response_code)
int response_code;
{
	npc_dialog_response_active = 1;
	switch (response_code) {
	case -1:
		npc_dialog_response_active = 0;
		break;
	case 0:
		npc_dialog_topic_0_enabled = 1;
		break;
	case 1:
		npc_dialog_topic_1_enabled = 1;
		break;
	case 2:
		npc_dialog_topic_2_enabled = 1;
		break;
	case 3:
		npc_dialog_topic_3_enabled = 1;
		break;
	case 4:
		npc_dialog_topic_4_enabled = 1;
		break;
	case 5:
		npc_dialog_topic_5_enabled = 1;
		break;
	case 6:
		npc_dialog_topic_6_enabled = 1;
		break;
	}
}
