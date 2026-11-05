/* Raises one member's status counter by a random amount and reports it. */
#include "structs/pcrec.h"
#include "structs/randstep.h"

extern struct pc_rec party_records[];
extern int message_delay;
extern char empty_status_message_fragment[], empty_status_message_suffix[];
extern struct random_step_spec *store_word_and_pair();
extern int add_random_steps();
extern int random_below();
extern int load_message_string();
extern int draw_centered_character_message();
extern int draw_party_member_panel();
extern int wait_treasure_input_or_timeout();

/* Roll and apply a status increase unless the resistance check succeeds. */
inflict_member_status(pc, message, resist_index, status_index,
	base, count, span)
int pc, message, resist_index, status_index, base, count, span;
{
	int unused_a, unused_b;
	int increase;
	char message_text[80];

	if (party_records[pc].state >= 2)
		return;
	increase = add_random_steps(*store_word_and_pair(base, count, span));
	if (resist_index != 0 &&
	    random_below(100)
	    	<= party_records[pc].resistance_rows.values[1][resist_index]) {
	} else {
	if (span == 255)
		party_records[pc].status[status_index] = 255;
	else {
		if (party_records[pc].status[status_index] + increase > 250)
			increase = 250 - party_records[pc].status[status_index];
		party_records[pc].status[status_index] += increase;
	}
	if (status_index == 5)
		party_records[pc].poison_strength = base;
	load_message_string(message, message_text);
	draw_centered_character_message(pc, message_text,
		empty_status_message_fragment, empty_status_message_suffix, 1, 65, 0, 0);
	draw_party_member_panel(pc, 1);
	wait_treasure_input_or_timeout(message_delay);
	}
}
