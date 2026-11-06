/* Hit each unit in range that fails resistance 2 with one of ten random
   effects (damage, blindness, sleep, paralysis, death, ...). */

#include "structs/member.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern int random_below();
extern int select_battle_unit_range();
extern void deal_resisted_damage();
extern int apply_status_to_unit_range();
extern int refresh_combat_glyph_strip();
extern int copy_combatant_name();
extern int draw_centered_menu_text_row();
extern int display_combat_message();
extern int wait_for_combat_input();
extern int startup_option;
extern char combat_action_name_buffer[];

apply_random_condition(group, unit_or_count, power, resistance_floor)
int group, unit_or_count, power, resistance_floor;
{
	int unit_index;
	int selected_unit;
	int selected_count;

	select_battle_unit_range(group, unit_or_count, &selected_unit,
		&selected_count);
	unit_index = selected_unit;
	for (; selected_unit + selected_count > unit_index; unit_index++) {
		if (battle_groups[group]->unit[unit_index].state < 3) {
			if (random_below(100)
				> battle_group_ext[group]->resistance[2] - resistance_floor) {
				switch (random_below(10)) {
				case 0:
					deal_resisted_damage(group, unit_index, 4, 7,
						power, 12, resistance_floor);
					break;
				case 1:
					apply_status_to_unit_range(group, unit_index,
						MSG_BLINDED_3476, 2, 4, resistance_floor,
						0, power * 2, 4, power);
					break;
				case 2:
					apply_status_to_unit_range(group, unit_index,
						MSG_FALLS_ASLEEP_3474, 9, 2,
						resistance_floor, 0, power, 2, 0);
					break;
				case 3:
					apply_status_to_unit_range(group, unit_index,
						MSG_PARALYZED_3475, 4, 3, resistance_floor,
						0, power * 2, 1, power);
					break;
				case 4:
					apply_status_to_unit_range(group, unit_index,
						MSG_NAUSEOUS_3480, 5, 8, resistance_floor,
						0, power, 4, power);
					break;
				case 5:
					apply_status_to_unit_range(group, unit_index,
						MSG_WHITHERS_AND_DIES, 11, 3,
						resistance_floor - 25, 1, 0, 0, 0);
					break;
				case 6:
					deal_resisted_damage(group, unit_index, power * 2,
						4, power * 2, 0, resistance_floor);
					break;
				case 7:
					apply_status_to_unit_range(group, unit_index,
						MSG_GOES_INSANE, 10, 7, resistance_floor,
						0, power, 2, power);
					break;
				case 8:
					apply_status_to_unit_range(group, unit_index,
						MSG_TURNS_TO_STONE_3485, 11, 2,
						resistance_floor - 25, 1, 0, 0, 0);
					break;
				case 9:
					deal_resisted_damage(group, unit_index, 4, 7,
						power, 1, resistance_floor);
					break;
				}
			} else if (battle_groups[group]->unit[unit_index].phase == 0) {
				refresh_combat_glyph_strip(2, 4);
				copy_combatant_name(combat_action_name_buffer, group,
					unit_index);
				draw_centered_menu_text_row(combat_action_name_buffer,
					group == 0 ? 1 : 67, 2);
				display_combat_message(MSG_UNAFFECTED_3471, 65, 3);
				wait_for_combat_input(startup_option);
			}
		}
	}
}
