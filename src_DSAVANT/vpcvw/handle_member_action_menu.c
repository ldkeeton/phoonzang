/* Show the member action menu until the player chooses to leave. */
extern int select_grid_text_option();
extern int rename_party_member();
extern int choose_member_portrait();
extern int change_character_profession();
extern int refresh_member_inventory_panel();

/* Dispatch each selected action and refresh the member panel. */
int handle_member_action_menu(member_index)
int member_index;
{
	int option_index;
	int selected_option;
	int option_flags[10];

	for (;;) {
		for (option_index = 0; option_index <= 4; ++option_index)
			option_flags[option_index] = 1;
		option_flags[3] = 0;
		option_flags[5] = -1;
		selected_option = select_grid_text_option(1140, 0, 4, 188,
			11, 70, 12, 1, 6, 1, -1, 0, option_flags);
		switch (selected_option) {
		case 0:
			rename_party_member(member_index);
			break;
		case 1:
			choose_member_portrait(member_index);
			break;
		case 2:
			change_character_profession(member_index);
			break;
		}
		refresh_member_inventory_panel(member_index, 0);
		if (selected_option == 4)
			break;
	}
	return;
}
