/* Offers or accepts the selected NPC item action. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int member_item_count, dialog_selection;
extern int wait_for_npc_screen_animation();
extern int single_action_item_dialog();
extern int sell_item_to_npc(), give_item_to_npc();
extern int call_show_area();

npc_item_action_menu(member_index, message, expected_action, give_mode)
int member_index;
int message;
int expected_action;
int give_mode;
{
	int selected_item;
	int action_result;
	int dialog_result;

	wait_for_npc_screen_animation();
	dialog_result = single_action_item_dialog(message, 0, 1, 1,
		member_item_count, &party_records[member_index]);
	selected_item = dialog_selection;
	action_result = 0;
	if (dialog_result == expected_action && selected_item != -1) {
		if (give_mode == 0)
			action_result = sell_item_to_npc(member_index, selected_item);
		else
			action_result = give_item_to_npc(member_index, selected_item);
	}
	call_show_area(54, 142, 265, 198);
	return action_result;
}
