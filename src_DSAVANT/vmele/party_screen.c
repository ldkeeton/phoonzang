/* Reorders monster groups for the party screen and updates their overlays. */
#include "structs/member.h"
#include "structs/slotrec.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct slot_rec slot_recs[];
extern int monster_group_count, party_char_count;
extern int cell_action_marks[3][3], cell_slot_ref[3][3];
extern int random_below(), redraw_glyph_strip(), wait_ticks_with_events();
extern int titlecase_string(), aztec_strlen(), load_message_string();
extern int show_centered_message(), play_action_overlays();
extern int run_party_screen_animation(), setup_monster_pictures();
extern int advance_group_toward_party(), fill_row_action_slots();
extern int aztec_strcpy(), aztec_swapmem();

party_screen()
{
	int group_index, unit_index, cell_row, cell_column;
	int inner_index, target_total, party_index;
	int group_score[7];
	char message[80];
	char unused_frame[652];

	/* Calculate each group's score from the living units' remaining HP. */
	for (group_index = 1; group_index <= monster_group_count; group_index++) {
		group_score[group_index] = 0;
		for (unit_index = 0; unit_index < battle_groups[group_index]->unit_count;
			unit_index++) {
			if (battle_groups[group_index]->unit[unit_index].state == 0 &&
			    battle_groups[group_index]->unit[unit_index].status[2] == 0 &&
			    battle_groups[group_index]->unit[unit_index].status[3] == 0) {
				target_total = 0;
				for (inner_index = 0; inner_index < 10; inner_index++) {
					if (battle_groups[group_index]->unit[unit_index].status[inner_index] > 0)
						target_total += battle_groups[group_index]->unit[unit_index].hp / 4;
				}
				if (battle_groups[group_index]->unit[unit_index].hp > target_total)
					group_score[group_index] +=
						battle_groups[group_index]->unit[unit_index].hp - target_total;
			}
		}
		if (battle_group_ext[group_index]->special_spell_chance > 0)
			group_score[group_index] /=
				battle_group_ext[group_index]->special_spell_chance / 10 + 1;
		if (battle_group_ext[group_index]->special_action_chance > 0)
			group_score[group_index] +=
				(long)group_score[group_index] *
				battle_group_ext[group_index]->special_action_chance / 100;
		if (battle_group_ext[group_index]->f_00b1 > 0)
			group_score[group_index] +=
				(long)group_score[group_index] *
				battle_group_ext[group_index]->f_00b1 / 100;
		if (battle_groups[group_index]->slot != -1 &&
		    slot_recs[battle_groups[group_index]->slot].forced != 0)
			group_score[group_index] = 0;
	}

	/* Randomly compare adjacent scores to choose which group advances. */
	for (group_index = monster_group_count; group_index >= 2; group_index--) {
		if (random_below(group_score[group_index]) >
		    random_below(group_score[group_index - 1])) {
			redraw_glyph_strip(1);
			wait_ticks_with_events(1);
			aztec_strcpy(message,
				battle_group_ext[group_index]->name[
					battle_groups[group_index]->unidentified]
					[battle_groups[group_index]->unit_count == 1 ? 0 : 1]);
			titlecase_string(message);
			inner_index = aztec_strlen(message);
			message[inner_index] = ' ';
			load_message_string(
				battle_groups[group_index]->unit_count == 1
					? MSG_ADVANCES_3510 : MSG_ADVANCE,
				message + inner_index + 1);
			show_centered_message(message, 17);

			for (unit_index = 0;
				unit_index < battle_groups[group_index - 1]->unit_count; unit_index++) {
				if (battle_groups[group_index - 1]->unit[unit_index].cell != -1) {
					cell_row = battle_groups[group_index - 1]->unit[unit_index].cell / 10;
					cell_column = battle_groups[group_index - 1]->unit[unit_index].cell % 10;
					cell_action_marks[cell_row][cell_column] = 1;
				}
			}
			play_action_overlays(1);
			for (unit_index = 0;
				unit_index < battle_groups[group_index - 1]->unit_count; unit_index++) {
				if (battle_groups[group_index - 1]->unit[unit_index].cell != -1) {
					cell_row = battle_groups[group_index - 1]->unit[unit_index].cell / 10;
					cell_column = battle_groups[group_index - 1]->unit[unit_index].cell % 10;
					cell_slot_ref[cell_row][cell_column] = 0;
					battle_groups[group_index - 1]->unit[unit_index].cell = 255;
				}
			}
			run_party_screen_animation();
			cell_row = group_score[group_index];
			group_score[group_index] = group_score[group_index - 1];
			group_score[group_index - 1] = cell_row;
			aztec_swapmem(battle_groups[group_index], battle_groups[group_index - 1],
				420);
			aztec_swapmem(battle_group_ext[group_index],
				battle_group_ext[group_index - 1],
				232);
			/* Repair party members' references to the exchanged group numbers. */
			for (party_index = 0; party_index < party_char_count; party_index++) {
				if (battle_groups[0]->unit[party_index].target_group == group_index)
					battle_groups[0]->unit[party_index].target_group = group_index - 1;
				else if (battle_groups[0]->unit[party_index].target_group
					== group_index - 1)
					battle_groups[0]->unit[party_index].target_group = group_index;
			}
			setup_monster_pictures();
			advance_group_toward_party(group_index - 1);
			fill_row_action_slots();
			play_action_overlays(0);
		}
	}
}
