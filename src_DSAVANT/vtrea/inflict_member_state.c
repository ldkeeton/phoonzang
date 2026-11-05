/* Raise one member's state (3 and up is dead) unless resisted, and report
   it. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int message_delay;
extern char empty_character_message_first[];
extern char empty_character_message_second[];
extern int random_below();
extern int load_message_string();
extern int draw_centered_character_message();
extern int play_sound_effect();
extern int draw_party_member_panel();
extern int wait_treasure_input_or_timeout();

inflict_member_state(member, message_id, resist_index, new_state)
int member, message_id, resist_index, new_state;
{
	char message[80];
	int unused_message_padding[5];

	if (resist_index == 0 ||
		random_below(100)
			> party_records[member].resistance_rows.named.resist[resist_index]) {
		if (party_records[member].state < new_state) {
			party_records[member].state = new_state;
			if (new_state >= 3) {
				party_records[member].hp[0] = 0;
				party_records[member].stamina[0] = 0;
			}
			load_message_string(message_id, message);
			draw_centered_character_message(member, message,
				empty_character_message_first,
				empty_character_message_second, 1, 65, 0, 0);
			if (party_records[member].state >= 3)
				play_sound_effect(party_records[member].gender + 8);
			draw_party_member_panel(member, 1);
			wait_treasure_input_or_timeout(message_delay);
		}
	}
}
