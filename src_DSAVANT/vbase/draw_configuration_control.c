/* Draw one configuration-screen control at the supplied origin. */
#include "msg.h"

#define MSG_SCREEN_STORAGE 2365

extern int load_message_string(), draw_button();
extern int draw_inset_two_digit_number(), draw_inset_panel();
extern int draw_configuration_box_text(), call_set_text_color(),
	call_set_text_pos();
extern int draw_number_field();
extern unsigned char startup_aux_option_b, startup_option_byte;
extern unsigned char sound_device_setting, device_option_bytes[];
extern unsigned char monster_volume, background_volume, video_mode;
extern unsigned char music_volume, startup_aux_option_a, no_dissolve;
extern unsigned char screen_store_1_enabled, screen_store_disk_enabled;
extern unsigned char hardware_mode_setting;
extern char palette_base_setting, palette_scale_setting;
extern char selected_game_directory[], selected_game_filename[];
extern char screen_store_drive[];

draw_configuration_control(control_number, dialog_left, dialog_top)
int control_number, dialog_left, dialog_top;
{
	int storage_mode;
	char message_buffer[80];

	switch (control_number) {
	case 0:
		load_message_string(MSG_KEYBOARD + startup_aux_option_b,
			message_buffer);
		draw_button(dialog_left + 92, dialog_top + 25, 8, 1, 1,
			message_buffer);
		break;
	case 1:
		draw_inset_two_digit_number(startup_option_byte,
			dialog_left + 57, dialog_top + 38);
		break;
	case 2:
		draw_configuration_box_text(selected_game_directory, dialog_left + 39,
			dialog_top + 56, 18);
		break;
	case 3:
		draw_configuration_box_text(selected_game_filename, dialog_left + 39,
			dialog_top + 68, 18);
		break;
	case 4:
		load_message_string(MSG_PC_SPEAKER + sound_device_setting,
			message_buffer);
		draw_configuration_box_text(message_buffer, dialog_left + 63,
			dialog_top + 86, 14);
		break;
	case 5:
	case 6:
	case 7:
		draw_inset_panel(dialog_left + 105, dialog_top + 98,
			dialog_left + 119, dialog_top + 116);
		call_set_text_color(180, 195);
		call_set_text_pos(dialog_left + 107, dialog_top + 99);
		draw_number_field(device_option_bytes[0], 2, 0);
		call_set_text_pos(dialog_left + 107, dialog_top + 105);
		draw_number_field(monster_volume, 2, 0);
		call_set_text_pos(dialog_left + 107, dialog_top + 111);
		draw_number_field(background_volume, 2, 0);
		break;
	case 8:
		load_message_string(MSG_NONE_2374 + video_mode, message_buffer);
		draw_configuration_box_text(message_buffer, dialog_left + 63,
			dialog_top + 122, 14);
		break;
	case 9:
		draw_inset_two_digit_number(music_volume,
			dialog_left + 105, dialog_top + 134);
		break;
	case 10:
		load_message_string(MSG_NORMAL + startup_aux_option_a,
			message_buffer);
		draw_button(dialog_left + 230, dialog_top + 25, 6, 1, 1,
			message_buffer);
		break;
	case 11:
		load_message_string(MSG_ON_2363 + no_dissolve, message_buffer);
		draw_button(dialog_left + 194, dialog_top + 37, 3, 1, 1,
			message_buffer);
		break;
	case 12:
		/* Choose the first available screen storage destination. */
		storage_mode = screen_store_1_enabled == 1 ? 1 :
			screen_store_disk_enabled == 1 ? 2 : 0;
		load_message_string(MSG_SCREEN_STORAGE + storage_mode, message_buffer);
		draw_configuration_box_text(message_buffer, dialog_left + 213,
			dialog_top + 56, 10);
		break;
	case 13:
		draw_configuration_box_text(screen_store_drive, dialog_left + 213,
			dialog_top + 68, 10);
		break;
	case 14:
		load_message_string(MSG_RAMDISK + hardware_mode_setting,
			message_buffer);
		draw_configuration_box_text(message_buffer, dialog_left + 213,
			dialog_top + 86, 10);
		break;
	case 15:
	case 16:
		draw_inset_panel(dialog_left + 231, dialog_top + 98,
			dialog_left + 251, dialog_top + 110);
		call_set_text_color(180, 195);
		call_set_text_pos(dialog_left + 233, dialog_top + 99);
		draw_number_field(palette_base_setting, 3, 0);
		call_set_text_pos(dialog_left + 233, dialog_top + 105);
		draw_number_field(palette_scale_setting, 3, 0);
		break;
	}
}
