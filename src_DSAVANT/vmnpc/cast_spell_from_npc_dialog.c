/* cast a selected spell from the NPC spell dialog */
#include "structs/pcrec.h"
#include "structs/spell.h"
#include "msg.h"

extern struct spell_table_view spell_table;
extern struct pc_rec party_records[];
extern int dialog_selection, npc_spell_target;
extern int redraw_area_set(), wait_for_npc_screen_animation();
extern int pick_npc_spell_dialog(), pick_party_member();
extern int apply_spell_to_npc(), random_below();
extern int draw_party_member_panel();

/* charge spell points and stamina, apply the spell, and redraw the caster */
cast_spell_from_npc_dialog(pc)
int pc;
{
	int spell, power;

	redraw_area_set(0);
	wait_for_npc_screen_animation();
	if (pick_npc_spell_dialog(pc, MSG_CAST, 1, 1) == 0) {
		power = dialog_selection / 256;
		spell = dialog_selection % 256;
		if (spell_table.spell[spell].targeted == 1) {
			npc_spell_target = pick_party_member();
			if (npc_spell_target == -1)
				spell = -1;
		}
		if (spell >= 0) {
			party_records[pc].realm_points[
				spell_table.spell[spell].realm][0] -=
				spell_table.spell[spell].cost * power;
			apply_spell_to_npc(pc, spell, power, npc_spell_target);
			party_records[pc].stamina[0] -= random_below(power) +
				spell_table.spell[spell].level + power;
			if (party_records[pc].stamina[0] < 0) {
				party_records[pc].stamina[0] = 0;
				party_records[pc].status[2] = random_below(6) + 6;
			}
			draw_party_member_panel(pc, 1);
		}
	}
}
