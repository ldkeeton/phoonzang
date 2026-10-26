/* Adjust and distribute the survivor experience reward. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int party_char_count, treasure_message_row;
extern long item_action_reward;
extern int load_message_string(), format_long_decimal(), str_subst_char();
extern int show_treasure_message();

/* Divide the adjusted reward among records whose state is zero. */
distribute_survivor_experience()
{
	int member, survivors;
	long share;
	char message[80], decimal[80];

	survivors = 0;
	for (member = 0; member < party_char_count; member++)
		if (party_records[member].state == 0) /* only zero-state records share */
			survivors++;
	share = item_action_reward / 20L * (party_char_count - survivors);
		/* 5% per excluded record */
	item_action_reward += share;
	share = item_action_reward / survivors;
	load_message_string(MSG_EVERY_SURVIVOR_EARNS_EXP, message);
	format_long_decimal(share, decimal);
	str_subst_char(message, decimal, '$'); /* reward placeholder */
	show_treasure_message(message, treasure_message_row, 0,
		65);	/* message color */
	for (member = 0; member < party_char_count; member++)
		if (party_records[member].state == 0)
			party_records[member].experience += share;
}
