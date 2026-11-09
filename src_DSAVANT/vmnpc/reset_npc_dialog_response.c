/* Enables the NPC dialog response state selected by response_code. */
#include "structs/npc.h"
extern struct npc_dialog_state npc_dialog;

reset_npc_dialog_response(response_code)
int response_code;
{
	npc_dialog.response_active = 1;
	switch (response_code) {
	case -1:
		npc_dialog.response_active = 0;
		break;
	case 0:
		npc_dialog.topic_0_enabled = 1;
		break;
	case 1:
		npc_dialog.topic_1_enabled = 1;
		break;
	case 2:
		npc_dialog.topic_2_enabled = 1;
		break;
	case 3:
		npc_dialog.topic_3_enabled = 1;
		break;
	case 4:
		npc_dialog.topic_4_enabled = 1;
		break;
	case 5:
		npc_dialog.topic_5_enabled = 1;
		break;
	case 6:
		npc_dialog.topic_6_enabled = 1;
		break;
	}
}
