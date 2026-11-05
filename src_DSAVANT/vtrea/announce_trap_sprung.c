/* A trap went off: queue its panel animation (or, for a negative animation,
 * the fail sound), then show OOPS! and the trap's name. */
#include "msg.h"

extern int pending_panel_call;
extern int pending_panel_arg0, pending_panel_arg1;
extern int animation_index, sound_request;
extern int treasure_message_row;
extern char chest_trap_name[];
extern int load_message_string(), show_treasure_message();

announce_trap_sprung(panel_member, panel_animation)
int panel_member, panel_animation;
{
	char message[80];

	if (panel_animation >= 0) {
		pending_panel_call = 1;
		pending_panel_arg0 = panel_member;
		pending_panel_arg1 = panel_animation;
	} else {
		animation_index = 0;
		sound_request = 1;
	}
	load_message_string(MSG_OOPS_5227, message);
	show_treasure_message(message, treasure_message_row, 0, 1);
	show_treasure_message(chest_trap_name, treasure_message_row, 0, 184);
}
