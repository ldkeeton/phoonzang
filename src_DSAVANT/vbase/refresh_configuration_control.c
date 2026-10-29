/* Refresh one configuration control relative to the dialog origin. */
extern int refresh_configuration_button(), draw_configuration_number(),
	draw_configuration_text();
extern int call_fill_area(), call_set_text_pos(), call_set_text_color();
extern int draw_number_field(), call_show_area();
extern unsigned char startup_option_byte, device_option_bytes[];
extern unsigned char monster_volume, background_volume, music_volume;
extern char selected_game_directory[], selected_game_filename[];
extern char screen_store_drive[], palette_base_setting, palette_scale_setting;

refresh_configuration_control(control_number, dialog_left, dialog_top)
int control_number, dialog_left, dialog_top;
{
	char reserved_workspace[82]; /* Reserved stack space, unused in this code. */

	/* Coordinates and widths below are the configuration control layout. */
	switch (control_number) {
	case 0:
		refresh_configuration_button(dialog_left + 92, dialog_top + 25, 8);
		break;
	case 1:
		draw_configuration_number(startup_option_byte, dialog_left + 57,
			dialog_top + 38);
		break;
	case 2:
		draw_configuration_text(selected_game_directory, dialog_left + 39,
			dialog_top + 56, 18);
		break;
	case 3:
		draw_configuration_text(selected_game_filename, dialog_left + 39,
			dialog_top + 68, 18);
		break;
	case 4:
		refresh_configuration_button(dialog_left + 8, dialog_top + 85, 7);
		break;
	case 5:
		draw_configuration_number(device_option_bytes[0], dialog_left + 105,
			dialog_top + 98);
		break;
	case 6:
		draw_configuration_number(monster_volume, dialog_left + 105,
			dialog_top + 104);
		break;
	case 7:
		draw_configuration_number(background_volume, dialog_left + 105,
			dialog_top + 110);
		break;
	case 8:
		refresh_configuration_button(dialog_left + 8, dialog_top + 121, 7);
		break;
	case 9:
		draw_configuration_number(music_volume, dialog_left + 105, dialog_top + 134);
		break;
	case 10:
		refresh_configuration_button(dialog_left + 230, dialog_top + 25, 6);
		break;
	case 11:
		refresh_configuration_button(dialog_left + 194, dialog_top + 37, 3);
		break;
	case 12:
		refresh_configuration_button(dialog_left + 161, dialog_top + 55, 6);
		break;
	case 13:
		draw_configuration_text(screen_store_drive, dialog_left + 213,
			dialog_top + 68, 10);
		break;
	/* Control 14 has no drawing action. */
	case 15:
		/* Clear, draw and expose the three-column palette base value. */
		call_fill_area(dialog_left + 231, dialog_top + 98,
			dialog_left + 251, dialog_top + 104, 1);
		call_set_text_pos(dialog_left + 233, dialog_top + 99);
		call_set_text_color(0, 1);
		draw_number_field(palette_base_setting, 3, 0);
		call_show_area(dialog_left + 231, dialog_top + 98,
			dialog_left + 251, dialog_top + 104);
		break;
	case 16:
		/* The scale value uses the next six-pixel row. */
		call_fill_area(dialog_left + 231, dialog_top + 104,
			dialog_left + 251, dialog_top + 110, 1);
		call_set_text_pos(dialog_left + 233, dialog_top + 105);
		call_set_text_color(0, 1);
		draw_number_field(palette_scale_setting, 3, 0);
		call_show_area(dialog_left + 231, dialog_top + 104,
			dialog_left + 251, dialog_top + 110);
		break;
	case 17:
		refresh_configuration_button(dialog_left + 178, dialog_top + 127, 6);
		break;
	case 18:
		refresh_configuration_button(dialog_left + 230, dialog_top + 127, 6);
		break;
	}
}
