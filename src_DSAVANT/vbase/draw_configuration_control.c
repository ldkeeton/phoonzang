/* Draw one configuration-screen control at the supplied origin. */
#include "msg.h"
#include "structs/loadrec.h"
extern struct load_header scenario_header;

#define MSG_SCREEN_STORAGE 2365

extern int load_message_string(), draw_button();
extern int draw_inset_two_digit_number(), draw_inset_panel();
extern int draw_configuration_box_text(), call_set_text_color(),
	call_set_text_pos();
extern int draw_number_field();

draw_configuration_control(control_number, dialog_left, dialog_top)
int control_number, dialog_left, dialog_top;
{
	int storage_mode;
	char message_buffer[80];

	switch (control_number) {
	case 0:
		load_message_string(MSG_KEYBOARD + scenario_header.use_mouse,
			message_buffer);
		draw_button(dialog_left + 92, dialog_top + 25, 8, 1, 1,
			message_buffer);
		break;
	case 1:
		draw_inset_two_digit_number(scenario_header.combat_delay,
			dialog_left + 57, dialog_top + 38);
		break;
	case 2:
		draw_configuration_box_text(scenario_header.paths[PATH_SAVE_DIR],
			dialog_left + 39,
			dialog_top + 56, 18);
		break;
	case 3:
		draw_configuration_box_text(scenario_header.paths[PATH_SAVE_FILE],
			dialog_left + 39,
			dialog_top + 68, 18);
		break;
	case 4:
		load_message_string(MSG_PC_SPEAKER + scenario_header.sound_device,
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
		draw_number_field(scenario_header.volumes[0], 2, 0);
		call_set_text_pos(dialog_left + 107, dialog_top + 105);
		draw_number_field(scenario_header.volumes[VOLUME_MONSTER], 2, 0);
		call_set_text_pos(dialog_left + 107, dialog_top + 111);
		draw_number_field(scenario_header.volumes[VOLUME_BACKGROUND], 2, 0);
		break;
	case 8:
		load_message_string(MSG_NONE_2374 + scenario_header.music_device,
			message_buffer);
		draw_configuration_box_text(message_buffer, dialog_left + 63,
			dialog_top + 122, 14);
		break;
	case 9:
		draw_inset_two_digit_number(scenario_header.volumes[VOLUME_MUSIC],
			dialog_left + 105, dialog_top + 134);
		break;
	case 10:
		load_message_string(MSG_NORMAL + scenario_header.difficulty,
			message_buffer);
		draw_button(dialog_left + 230, dialog_top + 25, 6, 1, 1,
			message_buffer);
		break;
	case 11:
		load_message_string(MSG_ON_2363 + scenario_header.no_dissolve,
			message_buffer);
		draw_button(dialog_left + 194, dialog_top + 37, 3, 1, 1,
			message_buffer);
		break;
	case 12:
		/* Choose the first available screen storage destination. */
		storage_mode = scenario_header.store_ems == 1 ? 1 :
			scenario_header.store_ramdisk == 1 ? 2 : 0;
		load_message_string(MSG_SCREEN_STORAGE + storage_mode, message_buffer);
		draw_configuration_box_text(message_buffer, dialog_left + 213,
			dialog_top + 56, 10);
		break;
	case 13:
		draw_configuration_box_text(scenario_header.store_drive, dialog_left + 213,
			dialog_top + 68, 10);
		break;
	case 14:
		load_message_string(MSG_RAMDISK + scenario_header.graphics_mode,
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
		draw_number_field(scenario_header.palette[PALETTE_BASE], 3, 0);
		call_set_text_pos(dialog_left + 233, dialog_top + 105);
		draw_number_field(scenario_header.palette[PALETTE_SCALE], 3, 0);
		break;
	}
}
