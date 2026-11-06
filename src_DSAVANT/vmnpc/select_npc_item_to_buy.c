/* Selects and purchases an item from the NPC's item list. */

#include "msg.h"

extern int npc_item_list_count;
extern int npc_item_scroll_top;
extern int npc_area_bottom;
extern int dialog_selection;
extern void wait_for_npc_screen_animation();
extern void refresh_npc_screen();
extern int npc_item_selection_dialog(), buy_npc_item();

select_npc_item_to_buy(member_index)
int member_index;
{
	int menu_result;
	int selection;
	int scroll_offset;

	wait_for_npc_screen_animation();
	scroll_offset = 0;
	do {
		menu_result = npc_item_selection_dialog(member_index, MSG_GP_1577,
			1, 1, npc_item_list_count, scroll_offset);
		selection = dialog_selection;
		if (menu_result == 1 && selection != -1) {
			if (buy_npc_item(member_index, selection)) {
				refresh_npc_screen();
				return 1;
			}
			scroll_offset = selection - npc_item_scroll_top;
		}
		npc_area_bottom = 141;
		wait_for_npc_screen_animation();
		npc_area_bottom = 143;
	} while (menu_result != 2 && npc_item_list_count > 0);

	refresh_npc_screen();
	return 0;
}
