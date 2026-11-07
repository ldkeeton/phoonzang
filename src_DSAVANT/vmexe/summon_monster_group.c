/* Summon a monster group (the ally group for the party side), roll its
   fighters and announce it. */
#include "structs/member.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern int startup_option, acting_group, monster_group_count;
extern int combat_wait_occurred, loaded_sound_id;
extern char combat_action_name_buffer[], combat_action_message_buffer[];
extern char combat_action_suffix_buffer[];
extern int wait_for_combat_input(), random_below(), display_combat_message();
extern int setmem(), data_record_io(), check_monster_picture_space();
extern int add_random_steps(), ensure_sound_loaded(), format_int_decimal();
extern int strcpy(), load_message_string(),
	draw_centered_text_fragments();
extern int play_sound_effect(), wait_and_free_sound();

summon_monster_group(kind0, kind1, kind2, kind3, kind4, kind5, count)
int kind0, kind1, kind2, kind3, kind4, kind5, count;
{
	int unit_index, group;
	struct member_rec cleared_group;
	int kind, attempts, saved_sound;
	wait_for_combat_input(startup_option / 2);
	combat_wait_occurred = 0;
	if (acting_group == 0 || acting_group == 6) {
		group = 6;
		if (battle_groups[group]->unit_count > 0) {
			display_combat_message(MSG_NOTHING_APPEARS, 65, 2);
			return;
		}
	} else if (count > 0 && monster_group_count < 5) {
		group = ++monster_group_count;
	} else {
		display_combat_message(MSG_NOTHING_APPEARS, 65, 2);
		return;
	}
	setmem(battle_groups[group], 420, 0);
	attempts = 0;
	do {
		attempts++;
		count--;
	} while (count > 0 && random_below(3) == 0 && attempts < 3);
	switch (count) {
	case 0: kind = kind0; break;
	case 1: kind = kind1; break;
	case 2: kind = kind2; break;
	case 3: kind = kind3; break;
	case 4: kind = kind4; break;
	case 5: kind = kind5; break;
	case 6: kind = kind5; break;
	default: kind = kind0; break;
	}
	data_record_io(4, battle_group_ext[group], kind, 0);
	if (acting_group != 0 && acting_group != 6 &&
	    check_monster_picture_space(battle_group_ext[group]->kind) == -1) {
		monster_group_count--;
		display_combat_message(MSG_NOTHING_APPEARS, 65, 2);
		return;
	}
	battle_groups[group]->kind = kind;
	battle_group_ext[group]->member_count_spec.span += attempts - 1;
	battle_groups[group]->unit_count = add_random_steps(
		battle_group_ext[group]->member_count_spec);
	if (battle_groups[group]->unit_count < 1)
		battle_groups[group]->unit_count = 1;
	if (battle_groups[group]->unit_count > 9)
		battle_groups[group]->unit_count = 9;
	for (unit_index = 0; unit_index < 6; unit_index++)
		battle_groups[group]->ward[unit_index] = 0;
	for (unit_index = 0; unit_index < 6; unit_index++)
		battle_groups[group]->cloud_power[unit_index] = 0;
	battle_groups[group]->unidentified = 0;
	for (unit_index = 0; unit_index < battle_groups[group]->unit_count;
	     unit_index++) {
		battle_groups[group]->unit[unit_index].level =
			battle_group_ext[group]->hp_spec.count;
		battle_groups[group]->unit[unit_index].hp_max =
			add_random_steps(battle_group_ext[group]->hp_spec);
		battle_groups[group]->unit[unit_index].hp =
			battle_groups[group]->unit[unit_index].hp_max;
		battle_groups[group]->unit[unit_index].stamina_max =
			add_random_steps(battle_group_ext[group]->stamina_spec);
		battle_groups[group]->unit[unit_index].stamina =
			battle_groups[group]->unit[unit_index].stamina_max;
		battle_groups[group]->unit[unit_index].cell = -1;
		battle_groups[group]->unit[unit_index].action_kind = 10;
		battle_groups[group]->unit[unit_index].attack_cycle = 0;
		battle_groups[group]->unit[unit_index].action_speed[0] = 0;
	}
	saved_sound = loaded_sound_id;
	ensure_sound_loaded(17);
	format_int_decimal(battle_groups[group]->unit_count,
		combat_action_name_buffer);
	strcpy(combat_action_message_buffer,
		*((battle_groups[group]->unit_count == 1 ? 0 : 1) +
		  battle_group_ext[group]->name[0]));
	load_message_string(battle_groups[group]->unit_count == 1 ?
		MSG_APPEARS : MSG_APPEAR, combat_action_suffix_buffer);
	draw_centered_text_fragments(2, combat_action_name_buffer,
		combat_action_message_buffer, combat_action_suffix_buffer, 1, 65, 65);
	play_sound_effect(16);
	if (saved_sound != -1)
		ensure_sound_loaded(saved_sound);
	else {
		wait_and_free_sound(16);
		loaded_sound_id = -1;
	}
}
