/* Deal resisted dice damage to one unit or a random range of units, after
   the group's wards lower the dice. */
#include "msg.h"
extern int apply_group_spell_wards();
extern void show_combat_message_and_wait();
extern void select_battle_unit_range();
extern void deal_resisted_damage();
extern void sync_member_party_panel();

damage_unit_range(group, unit_or_count, dice_count, die_sides,
					repeat_count, resistance_index, resistance_floor)
int group, unit_or_count, dice_count, die_sides;
int repeat_count, resistance_index, resistance_floor;
{
	int unit_index;
	int selected_count;
	int selected_unit;
	int adjusted_dice_count;
	int adjusted_die_sides;

	if (dice_count > 0)
		adjusted_dice_count =
			apply_group_spell_wards(group, resistance_index, dice_count);
	else
		adjusted_dice_count = dice_count;

	if (die_sides > 0)
		adjusted_die_sides =
			apply_group_spell_wards(group, resistance_index, die_sides);
	else
		adjusted_die_sides = die_sides;

	if (adjusted_dice_count != dice_count || adjusted_die_sides != die_sides)
		show_combat_message_and_wait(MSG_SPELL_REDUCED);

	select_battle_unit_range(group, unit_or_count,
		&selected_unit, &selected_count);
	unit_index = selected_unit;
	for (; unit_index < selected_unit + selected_count; unit_index++) {
		deal_resisted_damage(group, unit_index, adjusted_dice_count,
			adjusted_die_sides, repeat_count, resistance_index,
			resistance_floor);
		if (group == 0)
			sync_member_party_panel(unit_index, 0);
	}
}
