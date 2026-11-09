/* let pc pick and cast a spell: pay its points, apply it, drain stamina by a
   roll;
   then refresh the party */

#include "structs/pcrec.h"
#include "structs/spell.h"
#include "msg.h"

extern struct spell_table_view spell_table;
extern struct pc_rec party_records[];
extern int cast_spell_target, dialog_selection;

cast_spell_from_dialog(pc)
int pc;
{
	int spell, power;

	/* zero: a spell was chosen */
	if (pick_spell_dialog(pc, MSG_CAST, 1, 1) == 0) {
		power = dialog_selection / 256;	/* (power << 8) + spell + 0x100 */
		spell = dialog_selection % 256;
		if (spell_table.spell[spell].targeted == 1) {
			if ((cast_spell_target = pick_party_member()) == -1)	/* -1: Esc */
				;
		}
		if (spell >= 0) {
			party_records[pc].realm_points[
				spell_table.spell[spell].realm][0] -=
				spell_table.spell[spell].cost * power;
			apply_treasure_spell_effect(pc, spell, power, cast_spell_target);
			party_records[pc].stamina[0] -=
				random_below(power) + spell_table.spell[spell].level
					+ power;
			if (party_records[pc].stamina[0] < 0) {
				party_records[pc].stamina[0] = 0;
				party_records[pc].status[2] = random_below(6) + 6;	/* 6..11 */
			}
			draw_party_member_panel(pc, 1);
		}
	}
}
