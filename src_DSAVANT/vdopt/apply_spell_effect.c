/* Apply one spell's effect to party records, counters, or target cells. */
#include "structs/pcrec.h"

struct apply_step_spec {
	int base;
	unsigned char count;
	unsigned char span;
};

extern struct pc_rec party_records[];
extern int party_char_count, party_status_timer, party_status_offset;
extern int party_buff_turns, party_buff_charge;
extern int detection_spell_bonus, detection_spell_threshold;
extern int spell_49_turns, spell_49_strength;
extern int levitation_turns, spell_46_turns;
extern int random_below();
extern int *store_word_and_pair();
extern int add_random_steps();
extern int clamp_between();

apply_spell_effect(pc, spell, power, target)
int pc;
int spell;
int power;
int target;
{
	/* i and n double as scratch values; each case uses them differently. */
	int i, n, field_index, effect_value;

	/* Dispatch the spell ID to its matching state update. */
	switch (spell) {
	case 63:
		/* Increase the detection bonus and raise its threshold to at least the new
		   floor. */
		detection_spell_bonus += 50 * power;
		detection_spell_threshold = adjust_spell_value(
			5 * power + 70, detection_spell_threshold, 0);
		break;
	case 82:
		/* Extend the party status duration and its power-based offset. */
		party_status_timer += 35 * power;
		party_status_offset = adjust_spell_value(
			(power - 1) / 2 + 1, party_status_offset, 0);
		break;
	case 49:
		/* Extend the spell 49 timer and raise its strength. */
		spell_49_turns += 50 * power;
		spell_49_strength = adjust_spell_value(
			(power - 1) / 2 + 1, spell_49_strength, 0);
		break;
	case 37:
		/* Each power point adds five levitation turns. */
		levitation_turns += 5 * power;
		break;
	case 46:
		/* Each power point adds one hundred turns to the spell 46 timer. */
		spell_46_turns += 100 * power;
		break;
	case 84:
		/* Extend buff turns and raise its charge to at least the new floor. */
		party_buff_turns += 50 * power;
		party_buff_charge = adjust_spell_value(
			5 * power, party_buff_charge, 0);
		break;
	case 12:
	case 19:
		i = spell != 19 ? target : 0;
		n = spell != 19 ? target + 1 : party_char_count;
		field_index = spell != 19 ? power * 2 : power;
		effect_value = spell != 19 ? power : 0;
		/* Add random steps to pair_b for one member or the whole party. */
		for (; i < n; ++i) {
			party_records[i].pair_b[0] = clamp_between(
				party_records[i].pair_b[0] +
				add_random_steps(*(struct apply_step_spec *)store_word_and_pair(
					field_index, 8, effect_value)),
				0, party_records[i].pair_b[1]);
		}
		break;
	case 17:
		/* Reduce status byte 3 by 25 per power point, floored at zero. */
		i = party_records[target].status[3] - 25 * power;
		if (i < 0)
			i = 0;
		party_records[target].status[3] = i;
		break;
	case 33:
		/* Reduce status byte 5 and its strength, clearing both when either
		   expires. */
		i = party_records[target].status5_strength - power;
		if (i <= 0) {
			i = 0;
			party_records[target].status[5] = 0;
		}
		party_records[target].status5_strength = i;
		i = party_records[target].status[5] - 5 * power;
		if (i <= 0) {
			i = 0;
			party_records[target].status5_strength = 0;
		}
		party_records[target].status[5] = i;
		break;
	case 56:
		/* A state-2 target loses one stat point before the state roll. */
		if (party_records[target].state == 2) {
			/* Require the power-scaled stat threshold before applying the roll. */
			if (3 * power > 21 - party_records[target].stat[3]) {
				--party_records[target].stat[3];
				party_records[target].w8.dword +=
					random_below(183) + 183;
				if (random_below(18) > party_records[target].stat[3]) {
					party_records[target].state = 3;
					party_records[target].pair_a[0] = 0;
					party_records[target].pair_b[0] = 0;
				} else
					party_records[target].state = 0;
			}
		}
		break;
	case 69:
		/* Reduce status byte 7 by 25 per power point, floored at zero. */
		i = party_records[target].status[7] - 25 * power;
		if (i < 0)
			i = 0;
		party_records[target].status[7] = i;
		break;
	case 25:
		/* Clear status byte 6 after the stat-3 power threshold is crossed. */
		if (3 * power > 18 - party_records[target].stat[3])
			party_records[target].status[6] = 0;
		break;
	case 66:
		/* Reduce status byte 2 once per party member; every pass hits the target. */
		for (i = 0; i < party_char_count;
		     ++i) {
			n = party_records[target].status[2] -
				(power * power + 4);
			if (n < 0)
				n = 0;
			party_records[target].status[2] = n;
		}
		break;
	case 61:
		/* Reduce only the selected status indices: 1, 2, 4, 8, and 9. */
		for (n = 1; n <= 9; ++n) {
			if (n == 1 || n == 2 || n == 4 ||
			    n == 8 || n == 9) {
				i = party_records[target].status[n] -
					(power * power + 4);
				if (i < 0)
					i = 0;
				party_records[target].status[n] = i;
			}
		}
		break;
	case 78:
	case 88:
		i = spell != 88 ? target : 0;
		n = spell != 88 ? target + 1 : party_char_count;
		field_index = spell != 88 ? 7 : 4;
		effect_value = spell != 88 ? power : 0;
		/* Add random steps to pair_a for the selected member range. */
		for (; i < n; ++i) {
			party_records[i].pair_a[0] = clamp_between(
				party_records[i].pair_a[0] +
				add_random_steps(*(struct apply_step_spec *)store_word_and_pair(
					power, field_index, effect_value)),
				0, party_records[i].pair_a[1]);
			++party_records[i].w8.dword;
		}
		break;
	case 94:
		/* A state-3 target can recover, reset its pairs, and bump w26 and w8. */
		if (party_records[target].state == 3 &&
		    3 * power > 21 - party_records[target].stat[3]) {
			--party_records[target].stat[3];
			party_records[target].state = 0;
			party_records[target].pair_a[0] = clamp_between(
				party_records[target].pair_a[1] / 3, 1,
				party_records[target].pair_a[1]);
			party_records[target].pair_b[0] =
				party_records[target].pair_b[1] / 10;
			++party_records[target].w26;
			party_records[target].w8.dword +=
				random_below(183) + 365;
		}
		break;
	case 47:
		/* Attempt the type-7 object claim; the return value is only tested. */
		if (roll_claim_type7_object(power) == -1)
			;
		break;
	case 72:
		/* Show the map view without object marks. */
		show_map_view(power, 0, 0);
		break;
	case 75:
		/* Show the map view with object marks. */
		show_map_view(power, 0, 1);
		break;
	case 97:
		/* Replenish pair_b and pair_a from power-scaled random steps. */
		i = add_random_steps(*(struct apply_step_spec *)
			store_word_and_pair(power, 8, power));
		party_records[pc].pair_b[0] += i;
		if (party_records[pc].pair_b[0] > party_records[pc].pair_b[1])
			party_records[pc].pair_b[0] = party_records[pc].pair_b[1];
		i = add_random_steps(*(struct apply_step_spec *)
			store_word_and_pair(power, 2, 0));
		party_records[pc].pair_a[0] += i;
		if (party_records[pc].pair_a[0] > party_records[pc].pair_a[1])
			party_records[pc].pair_a[0] = party_records[pc].pair_a[1];
		break;
	case 98:
		/* Add random steps to each of the six realm-point pairs, capped above. */
		for (i = 0; i < 6; ++i) {
			n = add_random_steps(*(struct apply_step_spec *)
				store_word_and_pair(power, 10, 0));
			party_records[pc].realm_points[i][0] += n;
			if (party_records[pc].realm_points[i][0] >
			    party_records[pc].realm_points[i][1])
				party_records[pc].realm_points[i][0] =
					party_records[pc].realm_points[i][1];
		}
		break;
	case 99:
		/* Count how many of the three increasing flag thresholds are met. */
		i = 1;
		field_index = 10;
		effect_value = 0;
		do {
			if (party_records[pc].skills[26] >= field_index)
				++i;
			field_index = field_index * 2 + 10;
		} while (++effect_value < 3);
		show_map_view(i, 1, 0);
		break;
	case 77:
		/* Report the target's slot-detection result. */
		roll_slot_detection_report(power);
		break;
	}
}
