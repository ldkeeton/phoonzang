/* Advances the melee turn and refreshes each party member's panel. */
#include "structs/member.h"
#include "structs/pcrec.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct pc_rec party_records[];
extern int party_char_count, monster_group_count;
extern int party_screen_done, party_return_state, game_state, npc_id;
extern int e1_event_flag, message_delay;
extern int tick_party_combatants(), process_monster_groups();
extern int tick_monster_group(), decay_wards_and_clouds();
extern int redraw_glyph_strip(), copy_member_party_record();
extern int draw_party_member_panel(), close_party_screen();
extern int titlecase_string(), load_message_string();
extern int show_centered_message(), wait_ticks_with_events();
extern int aztec_strcpy(), aztec_strlen();

advance_melee_turn()
{
	int member_index, status_index, name_length;
	char message[80];

	tick_party_combatants();
	process_monster_groups();
	tick_monster_group(6);
	decay_wards_and_clouds();
	for (member_index = 0; member_index < party_char_count; member_index++) {
		/* Keep each party combat copy's group reference in range. */
		if (battle_groups[0]->unit[member_index].target_group < 1
		    || battle_groups[0]->unit[member_index].target_group
		    	> monster_group_count)
			battle_groups[0]->unit[member_index].target_group = 1;
	}
	redraw_glyph_strip(1);
	if (party_screen_done == 1) {
		for (member_index = 0; member_index < party_char_count; member_index++) {
			if (party_return_state == 15 && e1_event_flag == 1 && npc_id == 225) {
				/* Restore the special character after the encounter. */
				battle_groups[0]->unit[member_index].state = 0;
				battle_groups[0]->unit[member_index].stamina =
					battle_groups[0]->unit[member_index].stamina_max;
				battle_groups[0]->unit[member_index].hp =
					battle_groups[0]->unit[member_index].hp_max;
				for (status_index = 0; status_index < 10; status_index++)
					battle_groups[0]->unit[member_index].status[status_index] = 0;
				aztec_strcpy(message, party_records[member_index].name);
				titlecase_string(message);
				name_length = aztec_strlen(message);
				message[name_length] = ' ';
				load_message_string(MSG_BLESSED_AGAIN, message + name_length + 1);
				copy_member_party_record(member_index);
				draw_party_member_panel(member_index, 1);
				show_centered_message(message, 10);
				wait_ticks_with_events(message_delay);
			} else {
				copy_member_party_record(member_index);
				draw_party_member_panel(member_index, 1);
			}
		}
		close_party_screen();
		game_state = party_return_state;
	} else {
		game_state = 11;
	}
}
