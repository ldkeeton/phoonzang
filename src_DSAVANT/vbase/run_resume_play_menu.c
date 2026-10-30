/* Run the resume-play menu until it selects an action that leaves the menu. */
#include "msg.h"

extern int game_state, menu_selection_index;
extern int dest_alt_arg;
extern int call_fill_area(), call_show_area();
extern int select_message_list_entry(), load_message_string();
extern int draw_message_box(), run_configuration_menu(), save_game_data();

run_resume_play_menu()
{
	int menu_action, menu_open;
	int menu_selection_state[6];
	int item_flags[9];
	char message_text[40];

	game_state = 25;
	/* Clear and show the fixed 72,32..247,143 resume-menu panel. */
	call_fill_area(72, 32, 247, 143, 0);
	call_show_area(72, 32, 247, 143);
	/* Enable six menu entries, then disable the third and terminate the list. */
	for (menu_action = 0; menu_action <= 5; menu_action++)
		item_flags[menu_action] = 1;
	item_flags[2] = 0;
	item_flags[6] = -1;
	menu_open = 1;
	do {
		/* Draw the six-entry list using the resume-message block at 0x898. */
		menu_action = select_message_list_entry(2200, 97, 36, 18,
			13, 6, 1, item_flags);
		load_message_string(menu_action + MSG_RESUME_PLAY,
			message_text);
		draw_message_box(message_text, menu_selection_index,
			97, 36, 18, 13, 26);
		/* Dispatch the selected menu row; cases 3 and 4 share save handling. */
		switch (menu_action) {
		case 0:
			menu_open = 0;
			break;
		case 1:
			run_configuration_menu(1);
			break;
		case 2:
			break;
		case 3:
		case 4:
			if (save_game_data(0) == -1) {
				/* Redraw the lower status area after a failed save. */
				call_show_area(54, 142, 265, 198);
			} else {
				if (menu_action == 4) {
					dest_alt_arg = 0;
					game_state = 7;
				}
				menu_open = 0;
			}
			break;
		case 5:
			dest_alt_arg = 0;
			game_state = 7;
			menu_open = 0;
			break;
		}
	} while (menu_open != 0);
}
