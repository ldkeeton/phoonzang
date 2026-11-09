/* Saves the selected NPC dialog choice as the default response. */
#include "structs/npc.h"
extern struct npc_dialog_state npc_dialog;
extern int resolve_npc_dialog_reaction();
extern int handle_npc_dialog_choice();

save_npc_dialog_default_choice()
{
	if (npc_dialog.choice_code != -1 &&
	    (npc_dialog.primary_choice == -1 ||
	     npc_dialog.choice_index == -1))
		resolve_npc_dialog_reaction();
	if (npc_dialog.primary_choice != -1 &&
	    npc_dialog.choice_index != -1) {
		handle_npc_dialog_choice();
		npc_dialog.default_choice_index =
			npc_dialog.choice_index;
		npc_dialog.default_choice_value =
			npc_dialog.choice_auxiliary;
		npc_dialog.choice_backup =
			npc_dialog.primary_choice;
		npc_dialog.response_value = -1;
	}
}
