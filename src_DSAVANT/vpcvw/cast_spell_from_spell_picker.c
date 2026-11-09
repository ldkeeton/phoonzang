/* Cast a picked spell, charge its realm points and stamina, and apply it. */

#include "structs/pcrec.h"
#include "structs/spell.h"
#include "msg.h"

extern struct spell_table_view spell_table;
extern struct pc_rec party_records[];
extern int dialog_selection;
extern int selected_spell_target_member;

/* Pick and apply a spell for pc when mode permits casting. */
cast_spell_from_spell_picker(pc, mode)
int pc, mode;
{
	int spell, power;

	if (pick_spell_dialog_keep_frames(pc,
		mode ? MSG_CAST : MSG_SPELLS_2033, mode, mode) == 0) {
		power = dialog_selection / 256;
		spell = dialog_selection % 256;
		if (spell_table.spell[spell].targeted == 1) {
			selected_spell_target_member = select_party_member_from_roster();
			if (selected_spell_target_member == -1)
				spell = -1;
		}
		if (spell >= 0) {
			party_records[pc].realm_points[
				spell_table.spell[spell].realm][0] -=
				spell_table.spell[spell].cost * power;
			party_records[pc].stamina[0] -= random_below(power) +
				spell_table.spell[spell].level + power;
			if (party_records[pc].stamina[0] < 0) {
				party_records[pc].stamina[0] = 0;
				party_records[pc].status[2] = random_below(6) + 6;
			}
			apply_char_view_spell_effect(pc, spell, power,
				selected_spell_target_member);
		}
	}
}
