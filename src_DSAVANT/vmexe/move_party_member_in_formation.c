/* Move a party member through the formation and announce the direction. */

#include "msg.h"

extern int acting_unit, acting_group, startup_option;
extern char combat_action_name_buffer[], combat_action_message_buffer[],
	combat_action_suffix_buffer[];
extern int load_message_string();
extern int copy_combatant_name();
extern int swap_party_member_slots();
extern int draw_centered_text_fragments();
extern int wait_for_combat_input();

move_party_member_in_formation(member_index, destination_index)
int member_index, destination_index;
{
	int movement;
	int parity_step;
	int next_index;

	if (member_index == destination_index)
		return;

	if (member_index % 2 == destination_index % 2)
		parity_step = 0;
	else if (destination_index % 2 == 0)
		parity_step = 1;
	else
		parity_step = -1;

	copy_combatant_name(combat_action_name_buffer, acting_group, acting_unit);
	if (member_index > destination_index) {
		load_message_string(MSG_ADVANCES_3513, combat_action_message_buffer);
		movement = -2;
	} else {
		load_message_string(MSG_RETREATS, combat_action_message_buffer);
		movement = 2;
	}

	combat_action_suffix_buffer[0] = 0;
	draw_centered_text_fragments(0, combat_action_name_buffer,
		combat_action_message_buffer, combat_action_suffix_buffer, 1, 67, 0);
	wait_for_combat_input(6);

	while (destination_index + parity_step != member_index) {
		next_index = member_index + movement;
		swap_party_member_slots(member_index, next_index);
		member_index += movement;
	}
	if (parity_step != 0)
		swap_party_member_slots(destination_index + parity_step,
			destination_index);

	wait_for_combat_input(startup_option);
}
