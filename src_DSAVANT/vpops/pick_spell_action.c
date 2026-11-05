/* let pc pick a spell and, for a targeted one, pick the member it lands on */

#include "structs/spell.h"
#include "structs/member.h"
#include "msg.h"

extern struct spell_table_view spell_table[];
extern struct member_rec *battle_groups[];
extern int dialog_selection;

void wait_for_party_screen_animation();
int action_spell_dialog();
int pick_party_member();

int pick_spell_action(pc)
int pc;
{
	int result, button, power, spell, target;

	wait_for_party_screen_animation();
	button = action_spell_dialog(pc, MSG_CAST, 1, 1);	/* button labels */
	result = dialog_selection;
	if (button == 1)	/* second button: cancelled */
		return -1;
	power = result / 256;				/* high byte: power */
	spell = result % 256;				/* low byte: spell id */
	if (spell_table->spell[spell].targeted == 1) {	/* 1: needs a party member */
		target = pick_party_member();
		if (target == -1)	/* -1: Esc */
			return -1;
		battle_groups[0]->unit[pc].target_group = 0;
		battle_groups[0]->unit[pc].target_unit = target;
	}
	if (spell == 19 || spell == 88 || spell == 66)	/* ids that also clear +0x1f */
		battle_groups[0]->unit[pc].target_group = 0;
	return (power << 8) + spell;	/* drop the dialog's 0x100 bias */
}
