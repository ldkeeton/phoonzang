/* End of round: tick monster groups, close gaps left by dead groups, step
   units toward the party. */
#include "structs/member.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern int next_cell_toward_party[3][3];
extern int cell_slot_ref[3][3];
extern int party_char_count, monster_group_count, party_return_state;
extern int party_screen_done;
extern int tick_monster_group();
extern int advance_group_toward_party();
extern int fill_action_slot_table();
extern int setup_monster_pictures();
extern int identify_monster_groups();

process_monster_groups()
{
	int group_index, unit_index, surviving_group_count, cell;
	int cell_row, cell_column, next_row, next_column, party_index, unused;

	surviving_group_count = 0;
	for (group_index = 1; group_index <= monster_group_count; group_index++) {
		/* Tick each group and skip groups with no living units. */
		tick_monster_group(group_index);
		if (battle_groups[group_index]->unit_count > 0) {
			surviving_group_count++;
			if (surviving_group_count != group_index) {
			/* Move surviving group records down to fill a removed slot. */
			*battle_groups[surviving_group_count] = *battle_groups[group_index];
			*battle_group_ext[surviving_group_count] = *battle_group_ext[group_index];
			for (party_index = 0; party_index < party_char_count; party_index++) {
				if (battle_groups[0]->unit[party_index].target_group == group_index)
					battle_groups[0]->unit[party_index].target_group = surviving_group_count;
			}
			advance_group_toward_party(surviving_group_count);
			battle_groups[group_index]->unit_count = 0;
			} else {
			/* Step each unit one cell toward the party when that cell is free. */
			unit_index = 0;
			goto unit_loop_test;
unit_loop_body:
			{
				cell = battle_groups[surviving_group_count]->unit[unit_index].cell;
				if (cell != -1) {
					cell_row = cell / 10;
					cell_column = cell % 10;
					next_row = next_cell_toward_party[cell_row][cell_column] / 10;
					next_column = next_cell_toward_party[cell_row][cell_column] % 10;
					if (cell_slot_ref[next_row][next_column] == 0) {
						cell_slot_ref[cell_row][cell_column] = 0;
						cell_slot_ref[next_row][next_column] =
							surviving_group_count * 10 + unit_index;
						battle_groups[surviving_group_count]->unit[unit_index].cell =
							next_row * 10 + next_column;
						fill_action_slot_table(surviving_group_count,
							next_row, next_column, -1);
					}
				}
			}
			unit_index++;
unit_loop_test:
			if (battle_groups[surviving_group_count]->unit_count <= unit_index)
				goto unit_loop_done;
			goto unit_loop_body;
unit_loop_done:;
			}
		}
	}
	monster_group_count = surviving_group_count;
	if (monster_group_count == 0) {
		if (party_return_state != 8)
			party_return_state = 15;
		party_screen_done = 1;
	}
	setup_monster_pictures();
	identify_monster_groups();
}
