/* Apply the alternate treasure and party spell effects. */
#include "structs/pcrec.h"
#include "structs/member.h"
#include "structs/randstep.h"

extern struct pc_rec party_records[];
extern int party_char_count;
extern int chest_trap_type, trap_row_index, chest_trap_power;
extern int detection_spell_bonus, detection_spell_threshold;
extern int party_status_timer, party_status_offset;
extern int spell_49_turns, spell_49_strength, levitation_turns, spell_46_turns;
extern int party_buff_turns, party_buff_charge;
extern char trap_row_codes[], member_trap_clues[];
extern int adjust_spell_value();
extern int try_open_treasure_chest();
extern int random_below();
extern struct random_step_spec *store_word_and_pair();
extern int add_random_steps();
extern int clamp_between();
extern int draw_party_member_panel();

/* Update party spell state for the selected member and target. */
apply_spell_effect_alt(member, spell, power, target)
int member, spell, power, target;
{
	int index, limit, count, span;

	switch (spell) {
	case 63:
		detection_spell_bonus += 50 * power;
		detection_spell_threshold = adjust_spell_value(5 * power + 70,
			detection_spell_threshold, 0);
		break;
	case 82:
		party_status_timer += 35 * power;
		party_status_offset = adjust_spell_value((power - 1) / 2 + 1,
			party_status_offset, 0);
		break;
	case 49:
		spell_49_turns += 50 * power;
		spell_49_strength = adjust_spell_value((power - 1) / 2 + 1,
			spell_49_strength, 0);
		break;
	case 37:
		levitation_turns += 5 * power;
		break;
	case 46:
		spell_46_turns += 100 * power;
		break;
	case 84:
		party_buff_turns += 50 * power;
		party_buff_charge = adjust_spell_value(5 * power,
			party_buff_charge, 0);
		break;
	case 47:
		try_open_treasure_chest(member, power);
		break;
	case 62:
		count = 0;
		do {
			if (random_below(100) < 10 * power + 35 - 2 * chest_trap_power) {
				for (index = 0; index < party_char_count; index++) {
					if (chest_trap_type > 0 &&
						trap_row_index != -1) {
						member_trap_clues[index * 10 + count] =
							trap_row_codes[trap_row_index * 10 + count] == '-' ? '-'
								: '*';
					} else
						member_trap_clues[index * 10 + count] = '-';
				}
			}
		} while (++count < 8);
		break;
	case 12:
	case 19:
		index = spell != 19 ? target : 0;
		limit = spell == 19 ? party_char_count : target + 1;
		count = spell == 19 ? power : power * 2;
		span = spell != 19 ? power : 0;
		for (; index < limit; index++) {
			party_records[index].stamina[0] = clamp_between(
				party_records[index].stamina[0] +
				add_random_steps(*store_word_and_pair(count, 8, span)),
				0, party_records[index].stamina[1]);
			draw_party_member_panel(index, 1);
		}
		break;
	case 17:
		index = party_records[target].status[3] - 25 * power;
		if (index < 0)
			index = 0;
		party_records[target].status[3] = index;
		draw_party_member_panel(target, 1);
		break;
	case 33:
		index = party_records[target].poison_strength - power;
		if (index <= 0) {
			index = 0;
			party_records[target].status[5] = 0;
		}
		party_records[target].poison_strength = index;
		index = party_records[target].status[5] - 5 * power;
		if (index <= 0) {
			index = 0;
			party_records[target].poison_strength = 0;
		}
		party_records[target].status[5] = index;
		draw_party_member_panel(target, 1);
		break;
	case 56:
		if (party_records[target].state == 2 &&
			3 * power > 21 - party_records[target].stat[3]) {
			party_records[target].stat[3]--;
			party_records[target].age_days += random_below(183) + 183;
			if (random_below(18) > party_records[target].stat[3]) {
				party_records[target].state = 3;
				party_records[target].hp[0] = 0;
				party_records[target].stamina[0] = 0;
			} else
				party_records[target].state = 0;
			draw_party_member_panel(target, 1);
		}
		break;
	case 69:
		index = party_records[target].status[7] - 25 * power;
		if (index < 0)
			index = 0;
		party_records[target].status[7] = index;
		draw_party_member_panel(target, 1);
		break;
	case 25:
		if (3 * power > 18 - party_records[target].stat[3])
			party_records[target].status[6] = 0;
		draw_party_member_panel(target, 1);
		break;
	case 66:
		for (index = 0; index < party_char_count; index++) {
			limit = party_records[target].status[2] - (power * power + 4);
			if (limit < 0)
				limit = 0;
			party_records[target].status[2] = limit;
			draw_party_member_panel(index, 1);
		}
		break;
	case 61:
		for (limit = 1; limit <= 9; limit++) {
			if (limit == 1 || limit == 2 || limit == 4 ||
				limit == 8 || limit == 9) {
				index = party_records[target].status[limit] - (power * power + 4);
				if (index < 0)
					index = 0;
				party_records[target].status[limit] = index;
			}
		}
		draw_party_member_panel(target, 1);
		break;
	case 78:
	case 88:
		index = spell != 88 ? target : 0;
		limit = spell == 88 ? party_char_count : target + 1;
		count = spell != 88 ? 7 : 4;
		span = spell != 88 ? power : 0;
		for (; index < limit; index++) {
			party_records[index].hp[0] = clamp_between(
				party_records[index].hp[0] + add_random_steps(
					*store_word_and_pair(power, count, span)),
				0, party_records[index].hp[1]);
			party_records[index].age_days++;
			draw_party_member_panel(index, 1);
		}
		break;
	case 94:
		if (party_records[target].state == 3 &&
			3 * power > 21 - party_records[target].stat[3]) {
			party_records[target].stat[3]--;
			party_records[target].state = 0;
			party_records[target].hp[0] = clamp_between(
				party_records[target].hp[1] / 3, 1,
				party_records[target].hp[1]);
			party_records[target].stamina[0] =
				party_records[target].stamina[1] / 10;
			party_records[target].deaths++;
			party_records[target].age_days += random_below(183) + 365;
			draw_party_member_panel(target, 1);
		}
		break;
	case 97:
		index = add_random_steps(*store_word_and_pair(power, 8, power));
		party_records[member].stamina[0] += index;
		if (party_records[member].stamina[0] >
			party_records[member].stamina[1])
			party_records[member].stamina[0] =
				party_records[member].stamina[1];
		index = add_random_steps(*store_word_and_pair(power, 2, 0));
		party_records[member].hp[0] += index;
		if (party_records[member].hp[0] > party_records[member].hp[1])
			party_records[member].hp[0] = party_records[member].hp[1];
		draw_party_member_panel(member, 1);
		break;
	case 98:
		for (index = 0; index < 6; index++) {
			limit = add_random_steps(*store_word_and_pair(power, 10, 0));
			party_records[member].realm_points[index][0] += limit;
			if (party_records[member].realm_points[index][0] >
				party_records[member].realm_points[index][1])
				party_records[member].realm_points[index][0] =
					party_records[member].realm_points[index][1];
		}
		draw_party_member_panel(member, 1);
		break;
	}
}
