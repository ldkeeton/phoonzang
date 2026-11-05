/* Spell 47 cast at a chest: open it (removing the trap), spring the trap, or
   fail. */
#include "msg.h"

extern int random_below();
extern int load_message_string(), show_treasure_message();
extern int chest_trap_power, chest_trap_type, chest_open_result;
extern int glyph_painter, treasure_message_row;

/* rolls the spell power against chest_trap_power; sets chest_open_result */
try_open_treasure_chest(member, power)
int member, power;
{
	int roll, success_chance;
	char message[80];

	success_chance = power * 10 + 50 - chest_trap_power * 5;
	if (success_chance > 95)
		success_chance = 95;
	if (success_chance < 5)
		success_chance = 5;
	roll = random_below(100);
	if (roll < success_chance) {
		chest_trap_type = 0;
		chest_open_result = 1;
		glyph_painter = 1;
		load_message_string(MSG_THE_CHEST_OPENS, message);
		show_treasure_message(message, treasure_message_row, 2, 1);
	} else if (100 - (100 - success_chance) / 3 < roll) {
		chest_open_result = -1;
	} else {
		chest_open_result = 0;
		load_message_string(MSG_THE_CHEST_DID_NOT_OPEN, message);
		show_treasure_message(message, treasure_message_row, 1, 1);
	}
}
