/* Spring the chest's trap: apply the effects of trap_type to the party. */
#include "structs/pcrec.h"
#include "structs/randstep.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int party_char_count, treasure_message_row, message_delay;
extern int redraw_treasure_caption();
extern int load_message_string(), show_treasure_message();
extern int announce_trap_sprung();
extern int choose_random_party_segment();
extern int random_below(), random_unexcluded_member();
extern int aztec_setmem();
extern int damage_party_member(), inflict_member_status();
extern int inflict_member_state();
extern int draw_centered_character_message(), draw_party_member_panel();
extern int wait_treasure_input_or_timeout();
extern struct random_step_spec *store_word_and_pair();
extern int add_random_steps(), clamp_between();
extern char empty_demonic_attack_fragment[], empty_demonic_attack_suffix[];
extern char empty_battering_fragment[], empty_battering_suffix[];
extern char empty_magic_power_suffix[], empty_hit_point_suffix[];
extern char empty_vitality_suffix[];

spring_chest_trap(trap_type, trigger_member, trap_power)
int trap_type, trigger_member, trap_power;
{
	int member, effect_index, unused_trap_margin, group_start, group_size;
	int random_member;
	int excluded[6];
	char message[80];
	char second_message[80];

	redraw_treasure_caption(1);
	if (trap_type == 0) {
		load_message_string(MSG_THE_CHEST_WAS_NOT_TRAPPED, message);
		show_treasure_message(message, treasure_message_row, 0, 1);
		return;
	}
	aztec_setmem(excluded, 12, 0);
	for (member = 0; member < party_char_count; member++)
		if (party_records[member].state >= 3)
			excluded[member] = 1;

	switch (trap_type) {
	case 1:
		announce_trap_sprung(0, 12);
		choose_random_party_segment(&group_start, &group_size, &random_member, 3, 3);
		for (member = group_start; member < group_start + group_size; member++) {
			if (!excluded[member] &&
				(random_below(100) > party_records[member].resistance_rows.named.resist[1]
					|| member == random_member))
				damage_party_member(member, trap_power / 2 + 1, 7);
		}
		break;
	case 2:
		announce_trap_sprung(0, 6);
		choose_random_party_segment(&group_start, &group_size, &random_member, 2, 2);
		for (member = group_start; member < group_start + group_size; member++) {
			if (!excluded[member] &&
				(random_below(100) > party_records[member].resistance_rows.named.resist[7]
					|| member == random_member) &&
				damage_party_member(member, 1, 6))
				inflict_member_status(member, MSG_POISONED_5255, 6, 5,
					trap_power / 2 + 1, 10, 50);
		}
		break;
	case 3:
		announce_trap_sprung(0, -1);
		break;
	case 4:
		member = random_unexcluded_member(excluded);
		if (member != -1) {
			announce_trap_sprung(member, 22);
			load_message_string(MSG_A_DEMONIC_FORCE_APPEARS, message);
			show_treasure_message(message, treasure_message_row, 1, 184);
			load_message_string(MSG_IS_ATTACKED, message);
			draw_centered_character_message(member, message,
				empty_demonic_attack_fragment, empty_demonic_attack_suffix,
				1, 65, 0, 0);
			wait_treasure_input_or_timeout(message_delay);
			if (damage_party_member(member, trap_power + 1, 8)) {
				if (random_below(21) > party_records[member].stat[7]) {
					load_message_string(MSG_IS_BATTERED_ABOUT, message);
						draw_centered_character_message(member, message,
							empty_battering_fragment, empty_battering_suffix,
							1, 65, 0, 0);
					wait_treasure_input_or_timeout(message_delay);
						if (damage_party_member(member, trap_power * 2 + 2, 8) &&
						random_below(21) > party_records[member].stat[7])
						inflict_member_state(member, MSG_IS_RIPPED_TO_SHREADS, 11, 3);
				}
			}
			load_message_string(MSG_THE_DEMONIC_FORCE_SMILES, message);
			show_treasure_message(message, treasure_message_row, 1, 184);
		}
		break;
	case 5:
		announce_trap_sprung(0, 0);
		choose_random_party_segment(&group_start, &group_size, &random_member, 3, 3);
		for (member = group_start; member < group_start + group_size; member++)
			if (!excluded[member] &&
				(random_below(100) > party_records[member].resistance_rows.named.resist[7]
					|| member == random_member))
				damage_party_member(member, trap_power / 2 + 1, 6);
		break;
	case 6:
		announce_trap_sprung(0, 23);
		choose_random_party_segment(&group_start, &group_size, &random_member, 6, 0);
		for (member = group_start; member < group_start + group_size; member++)
			if (!excluded[member] &&
				(random_below(100) > party_records[member].resistance_rows.named.resist[5]
					|| member == random_member) &&
				damage_party_member(member, trap_power / 2 + 1, 4))
				inflict_member_status(member, MSG_NAUSEATED, 5, 8, 10, 10, 50);
		break;
	case 7:
		announce_trap_sprung(0, 14);
		choose_random_party_segment(&group_start, &group_size, &random_member, 4, 2);
		for (member = group_start; member < group_start + group_size; member++)
			if (!excluded[member] &&
				(random_below(100) > party_records[member].resistance_rows.named.resist[10]
					|| member == random_member) &&
				damage_party_member(member, trap_power / 2 + 1, 7))
				inflict_member_status(member, MSG_VEGGIFIED, 0, 7, 10, 10, 50);
		break;
	case 8:
		announce_trap_sprung(0, 12);
		choose_random_party_segment(&group_start, &group_size, &random_member, 4, 2);
		for (member = group_start; member < group_start + group_size; member++) {
			if (excluded[member]) continue;
			if (!(random_below(
				100) > party_records[member].resistance_rows.named.resist[2]
				|| member == random_member)) continue;
		switch (random_below(6)) {
		case 0: damage_party_member(member, trap_power + 1, 24); break;
		case 1: inflict_member_status(member, MSG_BLINDED_5254, 0, 4, 10, 10,
			50); break;
		case 2: inflict_member_status(member, MSG_FALLS_ASLEEP_5252, 0, 2, 10,
			10, 50); break;
		case 3: inflict_member_status(member, MSG_PARALYZED_5253, 0, 3, 10, 10,
			50); break;
		case 4: inflict_member_state(member, MSG_SLAIN_5260, 0, 3); break;
		case 5: inflict_member_state(member, MSG_TURNS_TO_STONE_5263, 0,
			2); break;
		}
		}
		break;
	case 9:
		announce_trap_sprung(0, 8);
		choose_random_party_segment(&group_start, &group_size, &random_member, 4, 2);
		for (member = group_start; member < group_start + group_size; member++)
			if (!excluded[member] &&
				(random_below(100) > party_records[member].resistance_rows.named.resist[1]
					|| member == random_member))
				damage_party_member(member, trap_power / 2 + 1, 10);
		break;
	case 10:
		announce_trap_sprung(member, 14);
		member = random_unexcluded_member(excluded);
		if (member != -1) inflict_member_state(member, MSG_TURNS_TO_STONE_5263,
			0, 2);
		break;
	case 11:
		announce_trap_sprung(0, 12);
		choose_random_party_segment(&group_start, &group_size, &random_member, 4, 2);
		for (member = group_start; member < group_start + group_size; member++)
			if (!excluded[member])
				inflict_member_status(
					member, MSG_PARALYZED_5253,
					member == random_member ? 0 : 4, 3, 10, 10, 50);
		break;
	case 12:
		announce_trap_sprung(0, 22);
		choose_random_party_segment(&group_start, &group_size, &random_member, 6, 0);
		for (member = group_start; member < group_start + group_size; member++) {
			if (excluded[member]) continue;
			if (!(random_below(
				100) > party_records[member].resistance_rows.named.resist[12]
				|| member == random_member)) continue;
			for (effect_index = 0; effect_index < 6; effect_index++) {
				party_records[member].realm_points[effect_index][0] = clamp_between(
					party_records[member].realm_points[effect_index][0] -
					add_random_steps(*store_word_and_pair(trap_power + 1, 8,
						trap_power)),
					0, party_records[member].realm_points[effect_index][1]);
			}
			load_message_string(MSG_LOST, message);
			load_message_string(MSG_MAGIC_POWER, second_message);
				draw_centered_character_message(member, message, second_message,
					empty_magic_power_suffix, 1, 184, 184, 0);
			draw_party_member_panel(member, 1);
			wait_treasure_input_or_timeout(message_delay);
		}
		break;
	case 13: announce_trap_sprung(0, -1); break;
	case 14: announce_trap_sprung(0, 22); break;
	case 15:
		member = random_unexcluded_member(excluded);
		if (member != -1) {
			announce_trap_sprung(member, 12);
			party_records[member].hp[1] =
				clamp_between(party_records[member].hp[1] - random_below(4) + 1,
				1, party_records[member].hp[1]);
				if (party_records[member].hp[0] > party_records[member].hp[1])
					party_records[member].hp[0] = party_records[member].hp[1];
			load_message_string(MSG_LOST, message);
			load_message_string(MSG_HIT_POINTS_5269, second_message);
			draw_centered_character_message(member, message, second_message,
				empty_hit_point_suffix, 1, 184, 184, 0);
			wait_treasure_input_or_timeout(message_delay);
			if (random_below(
				100) > party_records[member].resistance_rows.named.resist[11] + 25
				&& party_records[member].stat[3] > 3) {
				party_records[member].stat[3]--;
				load_message_string(MSG_LOST, message);
				load_message_string(MSG_VITALITY_5268, second_message);
				draw_centered_character_message(member, message, second_message,
					empty_vitality_suffix, 1, 184, 184, 0);
				wait_treasure_input_or_timeout(message_delay);
			}
		}
		break;
	case 16: announce_trap_sprung(0, 15); break;
	case 17:
		announce_trap_sprung(0, 23);
		choose_random_party_segment(&group_start, &group_size, &random_member, 6, 0);
		for (member = group_start; member < group_start + group_size; member++)
			if (!excluded[member]) inflict_member_state(member, MSG_SLAIN_5260, 11,
				3);
		break;
	}
}
