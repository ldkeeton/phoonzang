/* let pc pick and cast a spell: pay its points, apply it, drain pair_b by a
   roll;
   then show any pending event */

#include "structs/pcrec.h"
#include "structs/spell.h"

extern struct spell_info spell_table[];
extern struct pc_rec party_records[];
extern int party_redraw_mode, spell_target, spell_dialog_result, pending_event;

cast_spell_from_menu(pc)
int pc;
{
	int spell, power;

	party_redraw_mode = 5;
	if (pick_spell_dialog(pc, 2026, 1, 1) == 0) {	/* zero: a spell was chosen */
		power = spell_dialog_result / 256;	/* (power << 8) + spell + 0x100 */
		spell = spell_dialog_result % 256;
		if (spell_table[spell].targeted == 1) {
			if ((spell_target = pick_party_member()) == -1)	/* -1: Esc */
				;
		}
		if (spell >= 0) {
			party_records[pc].realm_points[spell_table[spell].realm][0] -=
				spell_table[spell].cost * power;
			apply_spell_effect(pc, spell, power, spell_target);
			party_records[pc].pair_b[0] -=
				random_below(power) + spell_table[spell].level + power;
			if (party_records[pc].pair_b[0] < 0) {
				party_records[pc].pair_b[0] = 0;
				party_records[pc].status[2] = random_below(6) + 6;	/* 6..11 */
			}
		}
	}
	if (pending_event > 0)
		show_event_message(pending_event);
}
