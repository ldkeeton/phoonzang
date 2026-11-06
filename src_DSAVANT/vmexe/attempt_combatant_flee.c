/* Try to flee: roll against the opposing side's strength and, on success,
   run the retreat animation and leave the battle (phase 2). */
#include "structs/member.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern int acting_group, acting_unit, monster_group_count;
extern int party_entry_flag, party_screen_animation_state;
extern int selected_item_record, startup_option, screen_cache_index;
extern int party_status_frame;
extern char combat_action_suffix_buffer[];
extern int cell_overlay_y_offset[][3];
extern int action_overlay_steps[][4];
extern int cell_slot_ref[][3];
extern char combat_action_name_buffer[], combat_action_message_buffer[];
extern int copy_combatant_name();
extern int load_message_string();
extern int draw_centered_text_fragments();
extern int wait_for_combat_input();
extern int random_below();
extern int display_combat_message();
extern int check_party_redraw_interval();
extern int step_combat_screen_animation();
extern int queue_cell_action_overlay();
extern int queue_cell_effect_overlay();
extern int queue_marker_overlay();
extern int draw_party_status_glyphs();
extern int run_combat_screen_animation();

attempt_combatant_flee(actor)
struct combatant *actor;
{
	int group_index;
	int row;
	int column;
	int cell_row;
	int cell_column;
	int height;
	int flee_chance;
	int redraw;

	copy_combatant_name(combat_action_name_buffer, acting_group, acting_unit);
	load_message_string(MSG_RUNS, combat_action_message_buffer);
	combat_action_suffix_buffer[0] = 0;
	flee_chance = actor->level + 90;
	if (acting_group == 0) {
		group_index = 1;
		for (; group_index <= monster_group_count; group_index++) {
			flee_chance = flee_chance -
				battle_group_ext[group_index]->hp_spec.count *
				battle_groups[group_index]->unit_count -
				(battle_group_ext[group_index]->combat_stats[3] -
				battle_group_ext[acting_group]->combat_stats[3]) * 2;
		}
	} else {
		flee_chance = flee_chance -
			battle_groups[actor->target_group]->unit[
				actor->target_unit].level -
			(battle_group_ext[actor->target_group]->combat_stats[3] -
			battle_group_ext[acting_group]->combat_stats[3]) * 2;
		if ((battle_group_ext[acting_group]->flags & 8) != 0)
			load_message_string(MSG_FLIES, combat_action_message_buffer);
	}
	if (party_entry_flag == 1)
		flee_chance = 0;
	draw_centered_text_fragments(0, combat_action_name_buffer,
		combat_action_message_buffer, combat_action_suffix_buffer,
		acting_group == 0 ? 1 : 67, 67, 0);
	wait_for_combat_input(startup_option / 2);
	if (random_below(100) < flee_chance) {
		if (acting_group != 0 && acting_group != 6 &&
			(battle_group_ext[acting_group]->flags & 1) != 0)
			selected_item_record = 0;
		actor->phase = 2;
		display_combat_message(MSG_AWAY, 67, 2);
		if (actor->cell != -1) {
			cell_row = actor->cell / 10;
			cell_column = actor->cell % 10;
			redraw = check_party_redraw_interval();
			group_index = 0;
			while (1) {
				party_screen_animation_state = -2;
				step_combat_screen_animation();
				for (row = 0; row < 3; row++) {
					for (column = 0; column < 3; column++) {
						height = column % 2 == 1 || column == 0 ?
							0 - action_overlay_steps[1][group_index] :
							action_overlay_steps[1][group_index];
						queue_cell_action_overlay(row, column,
							cell_row == row && cell_column == column ? height : 0,
							100 - cell_overlay_y_offset[row][column], 72,
							248, redraw);
						queue_cell_effect_overlay(row, column);
					}
				}
				queue_marker_overlay();
				draw_party_status_glyphs();
				party_screen_animation_state = 0;
				do {
					step_combat_screen_animation();
				} while (party_screen_animation_state != -2);
				redraw = check_party_redraw_interval();
				if (redraw != 0) {
					screen_cache_index = (screen_cache_index + 1) % 2;
					party_status_frame = (party_status_frame + 1) % 2;
				}
				if (redraw == 0) {
					continue;
				} else {
					group_index++;
					if (group_index >= 4)
						break;
				}
			}
			row = actor->cell / 10;
			column = actor->cell % 10;
			cell_slot_ref[row][column] = 0;
			actor->cell = -1;
			run_combat_screen_animation();
		} else {
			wait_for_combat_input(startup_option / 2);
		}
	} else {
	display_combat_message(MSG_BLOCKED, 67, 2);
	wait_for_combat_input(startup_option / 2);
}
}
