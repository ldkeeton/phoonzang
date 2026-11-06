/* Saves the selected NPC dialog choice as the default response. */
extern int npc_dialog_choice_code;
extern int npc_dialog_primary_choice;
extern int npc_dialog_choice_index;
extern int npc_dialog_choice_auxiliary;
extern int npc_dialog_default_choice_index;
extern int npc_dialog_default_choice_value;
extern int npc_dialog_choice_backup;
extern int npc_dialog_response_value;
extern int resolve_npc_dialog_reaction();
extern int handle_npc_dialog_choice();

save_npc_dialog_default_choice()
{
	if (npc_dialog_choice_code != -1 &&
	    (npc_dialog_primary_choice == -1 ||
	     npc_dialog_choice_index == -1))
		resolve_npc_dialog_reaction();
	if (npc_dialog_primary_choice != -1 &&
	    npc_dialog_choice_index != -1) {
		handle_npc_dialog_choice();
		npc_dialog_default_choice_index = npc_dialog_choice_index;
		npc_dialog_default_choice_value = npc_dialog_choice_auxiliary;
		npc_dialog_choice_backup = npc_dialog_primary_choice;
		npc_dialog_response_value = -1;
	}
}
