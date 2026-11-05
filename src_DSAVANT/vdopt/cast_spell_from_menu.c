/* let pc pick and cast a spell: pay its points, apply it, drain stamina by a
   roll;
   then show any pending event */

#include "structs/pcrec.h"
#include "structs/spell.h"
#include "msg.h"

extern struct spell_table_view spell_table[];
extern struct pc_rec party_records[];
extern int party_redraw_interval, spell_target, dialog_selection,
	pending_event;

cast_spell_from_menu(pc)
int pc;
{
	int spell, power;

	party_redraw_interval = 5;
	/* zero: a spell was chosen */
	if (pick_spell_dialog(pc, MSG_CAST, 1, 1) == 0) {
		power = dialog_selection / 256;	/* (power << 8) + spell + 0x100 */
		spell = dialog_selection % 256;
		if (spell_table->spell[spell].targeted == 1) {
			if ((spell_target = pick_party_member()) == -1)	/* -1: Esc */
				;
		}
		if (spell >= 0) {
			party_records[pc].realm_points[
				spell_table->spell[spell].realm_level.bytes.realm][0] -=
				spell_table->spell[spell].cost_effect.bytes.cost * power;
			apply_spell_effect(pc, spell, power, spell_target);
			party_records[pc].stamina[0] -=
				random_below(power) + spell_table->spell[spell].realm_level.bytes.level
					+ power;
			if (party_records[pc].stamina[0] < 0) {
				party_records[pc].stamina[0] = 0;
				party_records[pc].status[2] = random_below(6) + 6;	/* 6..11 */
			}
		}
	}
	if (pending_event > 0)
		show_event_message(pending_event);
}
