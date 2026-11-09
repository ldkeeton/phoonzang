/* Mark a combatant dead, release its battle cell, and award monster
   experience. */

#include "structs/member.h"
#include "structs/pcrec.h"
#include "structs/slotstat.h"
#include "structs/loadrec.h"
extern struct load_header scenario_header;

extern struct pc_rec party_records[];
extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct slot_record slot_records[];
extern int party_char_count, acting_group, acting_unit;
extern int selected_item_slot, effect_frame_phase;
extern int cell_effect_frame[3][3], cell_slot_ref[3][3];
extern long battle_experience;
extern int set_bitmap_bit();
extern void run_combat_screen_animation();

kill_combatant(group, unit)
int group, unit;
{
	int row, col;

	if (group != 0) {
		if (acting_group == 0 && acting_unit >= 0 &&
		    acting_unit < party_char_count)
			party_records[acting_unit].marks++;
		if ((battle_group_ext[group]->flags & 1) != 0)
			set_bitmap_bit(scenario_header.action_bitmap,
				battle_group_ext[group]->bitmap_bit, 1);
		if (battle_group_ext[group]->slot_index != -1) {
			slot_records[battle_group_ext[group]->slot_index].health = 0;
			selected_item_slot = battle_group_ext[group]->slot_index;
		}
		if (battle_groups[group]->unit[unit].cell != -1) {
			row = battle_groups[group]->unit[unit].cell / 10;
			col = battle_groups[group]->unit[unit].cell % 10;
			cell_effect_frame[row][col] = 0;
			effect_frame_phase = 0;
			run_combat_screen_animation();
			cell_slot_ref[row][col] = 0;
		}
	}
	battle_groups[group]->unit[unit].cell = -1;
	battle_groups[group]->unit[unit].state = 3;
	battle_groups[group]->unit[unit].hp = 0;
	battle_groups[group]->unit[unit].stamina = 0;
	battle_groups[group]->unit[unit].countdown = 0;
	battle_groups[group]->unit[unit].countdown_roll = 0;
	for (row = 0; row < 4; row++)
		battle_groups[group]->unit[unit].action_speed[row] = 0;
	if (group >= 1 && group <= 5)
		battle_experience += battle_group_ext[group]->experience;
}
