/* Draw and run the configuration dialog, then keep or restore its settings. */
#include "msg.h"
#include "structs/loadrec.h"

extern struct load_header scenario_header_data;
extern char *data_file_path();
extern char palette_definition_filename[], screen_temporary_filename[];
extern char selected_game_directory[], selected_game_filename[];
extern char screen_store_drive[];
extern unsigned char base_palette_rgb[256][3];
extern unsigned char startup_option_byte, startup_aux_option_a;
extern unsigned char startup_aux_option_b, sound_device_setting, video_mode;
extern unsigned char device_option_bytes[], monster_volume, background_volume;
extern unsigned char music_volume, no_dissolve;
extern unsigned char screen_store_1_enabled, screen_store_disk_enabled;
extern char palette_base_setting, palette_scale_setting;
extern int sound_port_setting, sound_aux_setting, mouse_active;
extern int hotspot_hit, spell_dialog_button, configuration_display_value;
extern int hotspot_rects[];
extern int aztec_open(), aztec_read(), aztec_close(), release_and_exit();
extern int save_screen_area(), draw_dialog_box(), draw_message_at_position();
extern int draw_font_glyph(), draw_number_field(), draw_button();
extern int draw_setting_slider_markers(), draw_inset_panel();
extern int load_message_string(), draw_configuration_control();
extern int refresh_configuration_control(), set_hotspot(), call_show_area();
extern int poll_hotspots(), flush_keyboard();
extern unsigned char get_filtered_key();
extern int draw_configuration_text(), input_text_field();
extern int step_device_option_byte(), adjust_palette_base_setting();
extern int adjust_palette_and_rgb_lookup(), aztec_strlen();
extern int flash_button(), write_header_and_apply_devices();
extern int restore_saved_screen();

run_configuration_menu(initial_mode)
int initial_mode;
{
	int number_remainder, key_code, palette_fd;
	int dialog_top, dialog_left, dialog_right, dialog_bottom;
	int reserved_menu_word_a, reserved_menu_word_b;
	int selected_hotspot, selected_control, menu_active;
	char message_buffer[80];
	int saved_screen;
	struct load_header original_header;

	/* Keep a copy for the cancel path and load the 256-entry palette. */
	original_header = scenario_header_data;
	if ((palette_fd = aztec_open(data_file_path(palette_definition_filename, 0),
		0)) == -1)
		release_and_exit(26);
	aztec_read(palette_fd, base_palette_rgb, 768);
	aztec_close(palette_fd);

	/* These fixed margins size the configuration box and its working area. */
	dialog_top = 18;
	dialog_left = 43;
	dialog_right = dialog_top + 283;
	dialog_bottom = dialog_left + 147;
	spell_dialog_button = -1;
	saved_screen = save_screen_area(dialog_top - 1, dialog_left - 1,
		dialog_right + 1, dialog_bottom + 1, screen_temporary_filename);
	draw_dialog_box(dialog_top, dialog_left, dialog_right, dialog_bottom);
	draw_message_at_position(MSG_CRUSADERS_OF_THE_DARK_2300, -1,
		dialog_left + 5, 28);
	draw_message_at_position(MSG_V, dialog_top + 245, dialog_left + 5, 1);
	draw_number_field(configuration_display_value / 100, 1, 0);
	draw_font_glyph(46, 0);
	number_remainder = configuration_display_value % 100;
	if (number_remainder < 10) {
		draw_font_glyph(48, 0);
		draw_number_field(number_remainder, 1, 0);
	} else {
		draw_number_field(number_remainder, 2, 0);
	}

	/* Draw the labels, slider guides, and action buttons at their fixed rows. */
	draw_message_at_position(MSG_GAME_CONFIGURATION, -1, dialog_left + 14, 95);
	draw_message_at_position(MSG_INPUT_DEVICE, dialog_top + 11,
		dialog_left + 27, 1);
	draw_message_at_position(MSG_DELAY, dialog_top + 11,
		dialog_left + 39, 1);
	draw_setting_slider_markers(dialog_top + 47, dialog_left + 39, 30);
	draw_message_at_position(MSG_PATH, dialog_top + 11,
		dialog_left + 57, 1);
	draw_message_at_position(MSG_FILE, dialog_top + 11,
		dialog_left + 69, 1);
	load_message_string(MSG_EFFECTS, message_buffer);
	draw_button(dialog_top + 8, dialog_left + 85, 7, 1, 1, message_buffer);
	draw_message_at_position(MSG_EFFECTS_VOL, dialog_top + 17,
		dialog_left + 99, 1);
	draw_setting_slider_markers(dialog_top + 95, dialog_left + 99, 30);
	draw_message_at_position(MSG_MONSTER_VOL, dialog_top + 17,
		dialog_left + 105, 1);
	draw_setting_slider_markers(dialog_top + 95, dialog_left + 105, 30);
	draw_message_at_position(MSG_BACKGND_VOL, dialog_top + 17,
		dialog_left + 111, 1);
	draw_setting_slider_markers(dialog_top + 95, dialog_left + 111, 30);
	load_message_string(MSG_MUSIC_2311, message_buffer);
	draw_button(dialog_top + 8, dialog_left + 121, 7, 1, 1, message_buffer);
	draw_message_at_position(MSG_MUSIC_VOL, dialog_top + 29,
		dialog_left + 135, 1);
	draw_setting_slider_markers(dialog_top + 95, dialog_left + 135, 30);
	draw_message_at_position(MSG_PLAY_LEVEL, dialog_top + 161,
		dialog_left + 27, 1);
	draw_message_at_position(MSG_FADE, dialog_top + 161,
		dialog_left + 39, 1);
	load_message_string(MSG_MEMORY, message_buffer);
	draw_button(dialog_top + 161, dialog_left + 55, 6, 1, 1, message_buffer);
	draw_message_at_position(MSG_RAMNAME, dialog_top + 161,
		dialog_left + 69, 1);
	draw_message_at_position(MSG_GRAPHICS, dialog_top + 161,
		dialog_left + 87, 1);
	draw_message_at_position(MSG_BRIGHT, dialog_top + 161,
		dialog_left + 99, 1);
	draw_setting_slider_markers(dialog_top + 221, dialog_left + 99, 36);
	draw_message_at_position(MSG_CONTRAST, dialog_top + 161,
		dialog_left + 105, 1);
	draw_setting_slider_markers(dialog_top + 221, dialog_left + 105, 36);
	draw_inset_panel(dialog_top + 169, dialog_left + 122,
		dialog_top + 275, dialog_left + 140);
	load_message_string(MSG_SAVE_2320, message_buffer);
	draw_button(dialog_top + 178, dialog_left + 127, 6, 1, 1, message_buffer);
	load_message_string(MSG_CANCEL_2321, message_buffer);
	draw_button(dialog_top + 230, dialog_left + 127, 6, 1, 1, message_buffer);

	/* Draw the numbered controls once before accepting input. */
	for (number_remainder = 0; number_remainder < 17; ++number_remainder)
		draw_configuration_control(number_remainder, dialog_top, dialog_left);

	/* Register the screen controls and the save/cancel buttons. */
	set_hotspot(0, dialog_top + 92, dialog_left + 25,
		dialog_top + 146, dialog_left + 33, 0, 0);
	set_hotspot(1, dialog_top + 47, dialog_left + 39,
		dialog_top + 52, dialog_left + 44, 0, 0);
	set_hotspot(2, dialog_top + 77, dialog_left + 39,
		dialog_top + 82, dialog_left + 44, 0, 0);
	set_hotspot(3, dialog_top + 39, dialog_left + 56,
		dialog_top + 149, dialog_left + 62, 0, 0);
	set_hotspot(4, dialog_top + 39, dialog_left + 68,
		dialog_top + 149, dialog_left + 74, 0, 0);
	set_hotspot(5, dialog_top + 8, dialog_left + 85,
		dialog_top + 56, dialog_left + 93, 0, 0);
	set_hotspot(6, dialog_top + 95, dialog_left + 99,
		dialog_top + 100, dialog_left + 104, 0, 0);
	set_hotspot(7, dialog_top + 125, dialog_left + 99,
		dialog_top + 130, dialog_left + 104, 0, 0);
	set_hotspot(8, dialog_top + 95, dialog_left + 105,
		dialog_top + 100, dialog_left + 110, 0, 0);
	set_hotspot(9, dialog_top + 125, dialog_left + 105,
		dialog_top + 130, dialog_left + 110, 0, 0);
	set_hotspot(10, dialog_top + 95, dialog_left + 111,
		dialog_top + 100, dialog_left + 116, 0, 0);
	set_hotspot(11, dialog_top + 125, dialog_left + 111,
		dialog_top + 130, dialog_left + 116, 0, 0);
	set_hotspot(12, dialog_top + 8, dialog_left + 121,
		dialog_top + 56, dialog_left + 129, 0, 0);
	set_hotspot(13, dialog_top + 95, dialog_left + 135,
		dialog_top + 100, dialog_left + 140, 0, 0);
	set_hotspot(14, dialog_top + 125, dialog_left + 135,
		dialog_top + 130, dialog_left + 140, 0, 0);
	set_hotspot(15, dialog_top + 230, dialog_left + 25,
		dialog_top + 272, dialog_left + 33, 0, 0);
	set_hotspot(16, dialog_top + 194, dialog_left + 37,
		dialog_top + 218, dialog_left + 45, 0, 0);
	set_hotspot(17, dialog_top + 161, dialog_left + 55,
		dialog_top + 203, dialog_left + 63, 0, 0);
	set_hotspot(18, dialog_top + 213, dialog_left + 68,
		dialog_top + 275, dialog_left + 74, 0, 0);
	set_hotspot(19, dialog_top + 221, dialog_left + 99,
		dialog_top + 226, dialog_left + 104, 0, 0);
	set_hotspot(20, dialog_top + 257, dialog_left + 99,
		dialog_top + 262, dialog_left + 104, 0, 0);
	set_hotspot(21, dialog_top + 221, dialog_left + 105,
		dialog_top + 226, dialog_left + 110, 0, 0);
	set_hotspot(22, dialog_top + 257, dialog_left + 105,
		dialog_top + 262, dialog_left + 110, 0, 0);
	set_hotspot(23, dialog_top + 178, dialog_left + 127,
		dialog_top + 220, dialog_left + 135, 0, 0);
	set_hotspot(24, dialog_top + 230, dialog_left + 127,
		dialog_top + 272, dialog_left + 135, 27, 0);
	set_hotspot(25, -1, 0, 0, 0, 0, 0);
	call_show_area(dialog_top - 1, dialog_left - 1,
		dialog_right + 1, dialog_bottom + 1);

	/* Start on control zero; each pass polls the pointer or a filtered key. */
	menu_active = 1;
	selected_control = 0;
	do {
		if (mouse_active != 0) {
			selected_hotspot = poll_hotspots(hotspot_rects) - 1;
		} else {
			hotspot_hit = 0;
			refresh_configuration_control(selected_control,
				dialog_top, dialog_left);
			key_code = get_filtered_key(1);
			/* Route recognized keys to navigation or the selected control. */
			switch (key_code) {
			case 9:
				/* Arrow keys move the selection, skipping the noninteractive row. */
				draw_configuration_control(selected_control, dialog_top, dialog_left);
				selected_control = (selected_control + 18) % 19;
				if (selected_control == 14)
					--selected_control;
				call_show_area(dialog_top - 1, dialog_left - 1,
					dialog_right + 1, dialog_bottom + 1);
				break;
			case 11:
				draw_configuration_control(selected_control, dialog_top, dialog_left);
				selected_control = (selected_control + 1) % 19;
				if (selected_control == 14)
					++selected_control;
				call_show_area(dialog_top - 1, dialog_left - 1,
					dialog_right + 1, dialog_bottom + 1);
				break;
			case 13:
				selected_hotspot = -1;
				switch (selected_control) {
				case 0: selected_hotspot = 0; break;
				case 2: selected_hotspot = 3; break;
				case 3: selected_hotspot = 4; break;
				case 4: selected_hotspot = 5; break;
				case 8: selected_hotspot = 12; break;
				case 10: selected_hotspot = 15; break;
				case 11: selected_hotspot = 16; break;
				case 12: selected_hotspot = 17; break;
				case 13: selected_hotspot = 18; break;
				case 17: selected_hotspot = 23; break;
				case 18: selected_hotspot = 24; break;
				}
				if (selected_hotspot != -1)
					hotspot_hit = 1;
				break;
			case 10:
			case 43:
			case 61:
				selected_hotspot = -1;
				switch (selected_control) {
				case 1: selected_hotspot = 2; break;
				case 5: selected_hotspot = 7; break;
				case 6: selected_hotspot = 9; break;
				case 7: selected_hotspot = 11; break;
				case 9: selected_hotspot = 14; break;
				case 15: selected_hotspot = 20; break;
				case 16: selected_hotspot = 22; break;
				}
				if (selected_hotspot != -1)
					hotspot_hit = 1;
				break;
			case 8:
			case 45:
				selected_hotspot = -1;
				switch (selected_control) {
				case 1: selected_hotspot = 1; break;
				case 5: selected_hotspot = 6; break;
				case 6: selected_hotspot = 8; break;
				case 7: selected_hotspot = 10; break;
				case 9: selected_hotspot = 13; break;
				case 15: selected_hotspot = 19; break;
				case 16: selected_hotspot = 21; break;
				}
				if (selected_hotspot != -1)
					hotspot_hit = 1;
				break;
			case 27:
				selected_hotspot = 24;
				hotspot_hit = 1;
				break;
			}
		}

		if (hotspot_hit == 1) {
			switch (selected_hotspot) {
			case 0:
				startup_aux_option_b = (startup_aux_option_b + 1) % 2;
				draw_configuration_control(0, dialog_top, dialog_left);
				break;
			case 1:
				if (startup_option_byte > 0) {
					--startup_option_byte;
					draw_configuration_control(1, dialog_top, dialog_left);
				}
				break;
			case 2:
				if (startup_option_byte < 99) {
					++startup_option_byte;
					draw_configuration_control(1, dialog_top, dialog_left);
				}
				break;
			case 3:
				flush_keyboard();
				draw_configuration_text(selected_game_directory,
					dialog_top + 39, dialog_left + 56, 18);
				input_text_field(selected_game_directory,
					dialog_top + 41, dialog_left + 57,
					16, 0, 1, 0);
				draw_configuration_control(2, dialog_top, dialog_left);
				break;
			case 4:
				flush_keyboard();
				draw_configuration_text(selected_game_filename,
					dialog_top + 39, dialog_left + 68, 18);
				input_text_field(selected_game_filename,
					dialog_top + 41, dialog_left + 69,
					16, 0, 1, 0);
				draw_configuration_control(3, dialog_top, dialog_left);
				break;
			case 5:
				if (initial_mode == 0) {
					do {
						sound_device_setting = (sound_device_setting + 1) % 7;
					} while (sound_device_setting == 5);
					draw_configuration_control(4, dialog_top, dialog_left);
				}
				if (sound_device_setting > 0)
					sound_port_setting = 544;
				else
					sound_port_setting = 0;
				break;
			case 6:
				step_device_option_byte(0, -1, 10);
				draw_configuration_control(5, dialog_top, dialog_left);
				break;
			case 7:
				step_device_option_byte(0, 1, 10);
				draw_configuration_control(5, dialog_top, dialog_left);
				break;
			case 8:
				step_device_option_byte(1, -1, 10);
				draw_configuration_control(6, dialog_top, dialog_left);
				break;
			case 9:
				step_device_option_byte(1, 1, 10);
				draw_configuration_control(6, dialog_top, dialog_left);
				break;
			case 10:
				step_device_option_byte(2, -1, 10);
				draw_configuration_control(7, dialog_top, dialog_left);
				break;
			case 11:
				step_device_option_byte(2, 1, 10);
				draw_configuration_control(7, dialog_top, dialog_left);
				break;
			case 12:
				if (initial_mode == 0) {
					do {
						video_mode = (video_mode + 1) % 7;
					} while (video_mode == 2 || video_mode == 3);
					draw_configuration_control(8, dialog_top, dialog_left);
				}
				if (video_mode > 0)
					sound_aux_setting = 544;
				else
					sound_aux_setting = 0;
				break;
			case 13:
				step_device_option_byte(3, -1, 10);
				draw_configuration_control(9, dialog_top, dialog_left);
				break;
			case 14:
				step_device_option_byte(3, 1, 10);
				draw_configuration_control(9, dialog_top, dialog_left);
				break;
			case 15:
				startup_aux_option_a = (startup_aux_option_a + 1) % 3;
				draw_configuration_control(10, dialog_top, dialog_left);
				break;
			case 16:
				no_dissolve = (no_dissolve + 1) % 2;
				draw_configuration_control(11, dialog_top, dialog_left);
				break;
			case 17:
				/* Cycle among disabled, disk-backed, and memory storage. */
				key_code = screen_store_1_enabled == 1 ? 1 :
					screen_store_disk_enabled == 1 ? 2 : 0;
				key_code = (key_code + 1) % 3;
				screen_store_1_enabled = 0;
				screen_store_disk_enabled = 0;
				switch (key_code) {
				case 1:
					screen_store_1_enabled = 1;
					break;
				case 2:
					screen_store_disk_enabled = 1;
					break;
				}
				draw_configuration_control(12, dialog_top, dialog_left);
				call_show_area(dialog_top - 1, dialog_left - 1,
					dialog_right + 1, dialog_bottom + 1);
				/* Switching to an unnamed disk store prompts for its drive. */
			case 18:
				if (selected_hotspot == 18 || (screen_store_disk_enabled == 1 &&
					aztec_strlen(screen_store_drive) == 0)) {
					flush_keyboard();
					draw_configuration_text(screen_store_drive,
						dialog_top + 213, dialog_left + 68, 10);
					input_text_field(screen_store_drive,
						dialog_top + 215, dialog_left + 69,
						10, 0, 1, 0);
					draw_configuration_control(13, dialog_top, dialog_left);
				}
				break;
			case 19:
				adjust_palette_base_setting(0, -1, -99);
				draw_configuration_control(15, dialog_top, dialog_left);
				adjust_palette_and_rgb_lookup(palette_base_setting,
					palette_scale_setting);
				break;
			case 20:
				adjust_palette_base_setting(0, 1, 99);
				draw_configuration_control(15, dialog_top, dialog_left);
				adjust_palette_and_rgb_lookup(palette_base_setting,
					palette_scale_setting);
				break;
			case 21:
				adjust_palette_base_setting(1, -1, -99);
				draw_configuration_control(16, dialog_top, dialog_left);
				adjust_palette_and_rgb_lookup(palette_base_setting,
					palette_scale_setting);
				break;
			case 22:
				adjust_palette_base_setting(1, 1, 99);
				draw_configuration_control(16, dialog_top, dialog_left);
				adjust_palette_and_rgb_lookup(palette_base_setting,
					palette_scale_setting);
				break;
			case 23:
				flash_button(dialog_top + 178, dialog_left + 127, 6, 1, 1);
				flash_button(dialog_top + 178, dialog_left + 127, 6, 1, 0);
				spell_dialog_button =
					sound_device_setting != original_header.sound_device ||
					video_mode != original_header.video ? 1 : 0;
				menu_active = 0;
				write_header_and_apply_devices();
				break;
			case 24:
				flash_button(dialog_top + 230, dialog_left + 127, 6, 1, 1);
				flash_button(dialog_top + 230, dialog_left + 127, 6, 1, 0);
				spell_dialog_button = 0;
				menu_active = 0;
				scenario_header_data = original_header;
				adjust_palette_and_rgb_lookup(palette_base_setting,
					palette_scale_setting);
				break;
			}
			if (menu_active != 0 && mouse_active == 0)
				refresh_configuration_control(selected_control,
					dialog_top, dialog_left);
			call_show_area(dialog_top - 1, dialog_left - 1,
				dialog_right + 1, dialog_bottom + 1);
		}
	} while (menu_active != 0);

	/* Restore the captured dialog area and expose the underlying screen. */
	restore_saved_screen(saved_screen, 1);
	call_show_area(dialog_top - 1, dialog_left - 1,
		dialog_right + 1, dialog_bottom + 1);
	return spell_dialog_button;
}
