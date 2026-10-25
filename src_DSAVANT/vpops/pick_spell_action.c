/* let pc pick a spell and, for a targeted one, pick the member it lands on */

#include "structs/spell.h"

extern struct spell_info spell_table[];
extern char *party_char[];
extern int spell_dialog_result;

void wait_for_party_redraw();
int action_spell_dialog();
int pick_party_member();

int pick_spell_action(pc)
int pc;
{
	int result, button, power, spell, target;

	wait_for_party_redraw();
	button = action_spell_dialog(pc, 2026, 1, 1);	/* 0x7ea: button labels */
	result = spell_dialog_result;
	if (button == 1)	/* second button: cancelled */
		return -1;
	power = result / 256;			/* high byte: power */
	spell = result % 256;			/* low byte: spell id */
	if (spell_table[spell].targeted == 1) {	/* 1: needs a party member */
		target = pick_party_member();
		if (target == -1)	/* -1: Esc */
			return -1;
		party_char[0][pc * 44 + 31] = 0;	/* 0x2c-byte slot records */
		party_char[0][pc * 44 + 32] = target;
	}
	if (spell == 19 || spell == 88 || spell == 66)	/* ids that also clear +0x1f */
		party_char[0][pc * 44 + 31] = 0;
	return (power << 8) + spell;	/* drop the dialog's 0x100 bias */
}
