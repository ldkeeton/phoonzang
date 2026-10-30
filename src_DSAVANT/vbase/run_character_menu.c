/* Run the character menu until it selects a new game state. */
#include "msg.h"
#include "structs/roster.h"

extern int party_status_frame, member_roster_index[], party_char_count;
extern int copy_protection_result, game_state, party_return_state;
extern int menu_selection_index, pc_file_record_count;
extern struct roster_state_view pc_file_record_base_hi;
extern int draw_party_member_panel(), select_message_list_entry();
extern int load_message_string(), draw_message_box(), release_and_exit();
extern int add_character_from_pc_file(), pick_party_member();
extern int remove_party_member(), remove_all_party_members(), begin_game();
extern int run_configuration_menu(), show_centered_message_dialog(),
	cleanup_game_screen();

run_character_menu()
{
	int member_index, menu_action;
	int menu_selection_state[6];
	int menu_options[9];
	char message_text[40];

	party_status_frame = 0;
	for (member_roster_index[0] = 0;
		 member_roster_index[0] < party_char_count;
		 member_roster_index[0]++) {
		draw_party_member_panel(member_roster_index[0], 1);
	}

	copy_protection_result = -1;
	game_state = -1;
	while (game_state < 0) {
		/* Enable all nine menu rows before applying the party-state rules. */
		for (member_index = 0; member_index < 9; member_index++)
			menu_options[member_index] = 1;
		menu_selection_state[0] = -1;
		if (party_char_count < 1) {
			menu_options[2] = 0;
			menu_options[3] = 0;
			menu_options[4] = 0;
		}
		menu_options[1] = 0;
		for (member_index = 0; member_index < pc_file_record_count; member_index++) {
			if (pc_file_record_base_hi.availability[member_index] == 1)
				menu_options[1] = 1;
		}
		if (party_char_count > 5)
			menu_options[1] = 0;
		if (party_char_count > 0) {
			menu_options[5] = 0;
			menu_options[7] = 0;
		}
		if (copy_protection_result == 0)
			release_and_exit(21);

		menu_action = select_message_list_entry(1000, 97, 36, 18,
				13, 9, 1, menu_options);
		load_message_string(menu_action + MSG_CHARACTER_MENU, message_text);
		draw_message_box(message_text, menu_selection_index,
				97, 36, 18, 13, 26);

		switch (menu_action) {
		case 1:
			add_character_from_pc_file();
			break;
		case 2:
			member_roster_index[0] = pick_party_member();
			if (member_roster_index[0] != -1) {
				game_state = 17;
				party_return_state = 4;
			}
			break;
		case 3:
			member_roster_index[0] = pick_party_member();
			if (member_roster_index[0] != -1)
				remove_party_member(member_roster_index[0], 1);
			break;
		case 0:
			remove_all_party_members();
			game_state = 16;
			break;
		case 4:
			for (member_index = 0; member_index < party_char_count; member_index++)
				pc_file_record_base_hi.availability[
					member_roster_index[member_index + 1]] = 1;
			begin_game(0);
			break;
		case 5:
			begin_game(1);
			break;
		case 6:
			if (run_configuration_menu(0)) {
				show_centered_message_dialog(2322);
				remove_all_party_members();
				cleanup_game_screen();
				game_state = 3;
			}
			break;
		case 7:
			begin_game(2);
			break;
		case 8:
			remove_all_party_members();
			cleanup_game_screen();
			game_state = 3;
			break;
		}
	}
}
