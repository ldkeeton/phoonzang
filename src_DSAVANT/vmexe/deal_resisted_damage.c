/* Roll repeat_count x dice_count d die_sides damage, reduce it by resistance,
   report it, wake the target (status[2]) and shorten its paralysis
   (status[3]) by 2-4.  The unused_ locals
   keep the original frame size. */

#include "structs/member.h"
#include "structs/pcrec.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct pc_rec party_records[];
extern int combat_message_layout;
extern int combatant_evades_targeting();
extern int random_below();
extern int movmem();
extern int roll_resisted_amount();
extern int refresh_combat_glyph_strip();
extern int copy_combatant_name();
extern int draw_centered_menu_text_row();
extern int display_combat_message();
extern int wait_for_combat_input();
extern int format_int_decimal();
extern int load_message_string();
extern int draw_centered_text_fragments();
extern int set_resisted_combatant_state();
extern int play_sound_effect();
extern int sync_member_party_panel();
extern int startup_option;
extern char combat_action_name_buffer[];
extern char combat_action_message_buffer[];
extern char combat_action_suffix_buffer[];

int deal_resisted_damage(group, unit_index, dice_count,
	die_sides, repeat_count, resistance_index, resistance_floor)
int group, unit_index, dice_count, die_sides;
int repeat_count, resistance_index, resistance_floor;
{
	int damage;
	int unused_1;
	int repeats_remaining;
	int dice_remaining;
	int unused_2;
	int unused_3;
	int paralysis_left;
	int unused_4;
	int unused_5;
	int unused_6;
	int unused_7;
	int unused_8;
	int unused_9;
	int unused_10;
	int unused_11;
	int unused_12;
	int unused_13;

	combat_message_layout = 4;
	if (battle_groups[group]->unit[unit_index].state >= 3 ||
	    combatant_evades_targeting(group, unit_index))
		return 0;
	damage = 0;
	repeats_remaining = repeat_count;
	while (repeats_remaining > 0) {
		dice_remaining = dice_count;
		while (dice_remaining > 0) {
			damage += random_below(die_sides) + 1;
			dice_remaining--;
		}
		repeats_remaining--;
	}
	if (group == 0)
		movmem(party_records[unit_index].resistance_rows.named.resist,
			battle_group_ext[0]->resistance, 14);
	if (random_below(100) >
	    battle_group_ext[group]->resistance[resistance_index] - resistance_floor)
		damage = roll_resisted_amount(group, damage, resistance_index,
			resistance_floor);
	else
		damage = 0;
	refresh_combat_glyph_strip(2, 4);
	copy_combatant_name(combat_action_name_buffer, group, unit_index);
	draw_centered_menu_text_row(combat_action_name_buffer,
		group == 0 ? 1 : 67, 2);
	if (damage > 0) {
		display_combat_message(MSG_HIT, 22, 3);
		wait_for_combat_input(4);
		format_int_decimal(damage, combat_action_name_buffer);
		load_message_string(MSG_DAMAGE_3309,
			combat_action_message_buffer);
		combat_action_suffix_buffer[0] = 0;
		draw_centered_text_fragments(4, combat_action_name_buffer,
			combat_action_message_buffer, combat_action_suffix_buffer,
			65, 65, 65);
		battle_groups[group]->unit[unit_index].hp -= damage;
		battle_groups[group]->unit[unit_index].status[2] = 0;
		paralysis_left =
			battle_groups[group]->unit[unit_index].status[3] -
			(random_below(3) + 2);
		if (paralysis_left < 0)
			paralysis_left = 0;
		battle_groups[group]->unit[unit_index].status[3] =
			paralysis_left;
		if (battle_groups[group]->unit[unit_index].hp <= 0) {
			wait_for_combat_input(startup_option / 2);
			set_resisted_combatant_state(group, unit_index, MSG_DIES_3486,
				0, 3, 0, 3408, 0);
		} else {
			if (group == 0) {
				play_sound_effect(party_records[unit_index].gender + 2);
				sync_member_party_panel(unit_index, 1);
			}
			wait_for_combat_input(startup_option / 2);
		}
	} else
		display_combat_message(MSG_UNAFFECTED_3310, 65, 3);
	wait_for_combat_input(startup_option / 2);
	return damage;
}
