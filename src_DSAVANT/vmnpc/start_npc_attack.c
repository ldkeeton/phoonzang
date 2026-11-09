/* The NPC attacks: ends the dialog and starts combat. */
#include "msg.h"
#include "structs/npc.h"
extern struct npc_record npc_record;

extern int npc_id, party_entry_mode, party_entry_flag;
extern int npc_dialog_departure_flag, game_state, party_return_state;
extern int call_wait_sound(), show_npc_message();

start_npc_attack(show_attacks_message)
int show_attacks_message;
{
	call_wait_sound(1);
	if (show_attacks_message)
		show_npc_message(MSG_ATTACKS, 1, 1, 85);
	npc_id = npc_record.attack_encounter_id;
	party_entry_mode = 1;
	party_entry_flag = 0;
	npc_dialog_departure_flag = 0;
	game_state = 10;
	party_return_state = 18;
}
