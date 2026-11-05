/* applies random-step damage to one party member and reports the result */
#include "structs/pcrec.h"
#include "structs/randstep.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int message_delay;
extern struct random_step_spec *store_word_and_pair();
extern int add_random_steps();
extern int format_int_decimal();
extern int load_message_string();
extern int draw_centered_character_message();
extern int wait_treasure_input_or_timeout();
extern int inflict_member_state();
extern int draw_party_member_panel();
extern int play_sound_effect();

/* rolls damage, updates hit points, and reports whether the member survives */
damage_party_member(pc, count, span)
int pc, count, span;
{
	int damage;
	char takes_text[20];
	char damage_text[20];
	char damage_message[20];

	damage = add_random_steps(*store_word_and_pair(count, span, 0));
	if (damage == 0 || party_records[pc].state >= 3)
		return 0;
	format_int_decimal(damage, damage_text);
	load_message_string(MSG_TAKES, takes_text);
	load_message_string(MSG_DAMAGE_5232, damage_message);
	if (party_records[pc].hp[0] < damage)
		damage = party_records[pc].hp[0];
	party_records[pc].hp[0] -= damage;
	draw_centered_character_message(pc, takes_text, damage_text, damage_message,
		1,
		67, 65, 67);
	draw_party_member_panel(pc, 1);
	if (party_records[pc].hp[0] <= 0) {
		wait_treasure_input_or_timeout(4);
		inflict_member_state(pc, MSG_DIES_5264, 0, 3);
		return 0;
	}
	play_sound_effect(party_records[pc].gender + 2);
	wait_treasure_input_or_timeout(message_delay);
	return 1;
}
