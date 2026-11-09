/* Apply one spell's effect to party members and shared spell state. */
#include "structs/pcrec.h"
#include "structs/randstep.h"
#include "structs/loadrec.h"
extern struct status_pair party_effects[];

extern struct pc_rec party_records[];
extern int party_char_count;
extern int picked_item_slot, item_page;
extern char item_slot_names[10][22];
extern int adjust_spell_value();
extern int random_below();
extern struct random_step_spec *store_word_and_pair();
extern int add_random_steps();
extern int clamp_between();
extern int show_party_member_overview();
extern int select_inventory_slot();
extern int identify_and_show_item_details();
extern int recharge_inventory_item();

/* Update the party or target member for one spell effect. */
apply_char_view_spell_effect(pc, spell, power, target)
int pc, spell, power, target;
{
	int i, n, field_index, effect_value;

	switch (spell) {
	case 63:
		party_effects[PARTY_EFFECT_DETECTION].timer +=
			50 * power;
		party_effects[PARTY_EFFECT_DETECTION].strength =
			adjust_spell_value(5 * power + 70,
			party_effects[PARTY_EFFECT_DETECTION].strength,
				0);
		break;
	case 82:
		party_effects[PARTY_EFFECT_EVADE].timer += 35 * power;
		party_effects[PARTY_EFFECT_EVADE].strength =
			adjust_spell_value((power - 1) / 2 + 1,
			party_effects[PARTY_EFFECT_EVADE].strength, 0);
		break;
	case 49:
		party_effects[PARTY_EFFECT_SPELL_49].timer +=
			50 * power;
		party_effects[PARTY_EFFECT_SPELL_49].strength =
			adjust_spell_value((power - 1) / 2 + 1,
			party_effects[PARTY_EFFECT_SPELL_49].strength,
				0);
		break;
	case 37:
		party_effects[PARTY_EFFECT_LEVITATION].timer +=
			5 * power;
		break;
	case 46:
		party_effects[PARTY_EFFECT_COMPASS].timer +=
			100 * power;
		break;
	case 84:
		party_effects[PARTY_EFFECT_WARD].timer +=
			50 * power;
		party_effects[PARTY_EFFECT_WARD].strength =
			adjust_spell_value(5 * power, party_effects[PARTY_EFFECT_WARD].strength, 0);
		break;
	case 12:
	case 19:
		i = spell != 19 ? target : 0;
		n = spell != 19 ? target + 1 : party_char_count;
		field_index = spell != 19 ? power * 2 : power;
		effect_value = spell != 19 ? power : 0;
		for (; i < n; ++i) {
			party_records[i].stamina[0] = clamp_between(
				party_records[i].stamina[0] +
				add_random_steps(*store_word_and_pair(
					field_index, 8, effect_value)),
				0, party_records[i].stamina[1]);
			if (spell != 19)
				show_party_member_overview(i);
		}
		break;
	case 17:
		i = party_records[target].status[3] - 25 * power;
		if (i < 0)
			i = 0;
		party_records[target].status[3] = i;
		show_party_member_overview(target);
		break;
	case 33:
		i = party_records[target].poison_strength - power;
		if (i <= 0) {
			i = 0;
			party_records[target].status[5] = 0;
		}
		party_records[target].poison_strength = i;
		i = party_records[target].status[5] - 5 * power;
		if (i <= 0) {
			i = 0;
			party_records[target].poison_strength = 0;
		}
		party_records[target].status[5] = i;
		show_party_member_overview(target);
		break;
	case 56:
		if (party_records[target].state == 2 &&
			3 * power > 21 - party_records[target].stat[3]) {
			--party_records[target].stat[3];
			party_records[target].age_days += random_below(183) + 183;
			if (random_below(18) > party_records[target].stat[3]) {
				party_records[target].state = 3;
				party_records[target].hp[0] = 0;
				party_records[target].stamina[0] = 0;
			} else
				party_records[target].state = 0;
			show_party_member_overview(target);
		}
		break;
	case 69:
		i = party_records[target].status[7] - 25 * power;
		if (i < 0)
			i = 0;
		party_records[target].status[7] = i;
		show_party_member_overview(target);
		break;
	case 25:
		if (3 * power > 18 - party_records[target].stat[3])
			party_records[target].status[6] = 0;
		show_party_member_overview(target);
		break;
	case 66:
		for (i = 0; i < party_char_count; ++i) {
			n = party_records[target].status[2] - (power * power + 4);
			if (n < 0)
				n = 0;
			party_records[target].status[2] = n;
			show_party_member_overview(i);
		}
		break;
	case 61:
		for (n = 1; n <= 9; ++n) {
			if (n == 1 || n == 2 || n == 4 || n == 8 || n == 9) {
				i = party_records[target].status[n] - (power * power + 4);
				if (i < 0)
					i = 0;
				party_records[target].status[n] = i;
			}
		}
		show_party_member_overview(target);
		break;
	case 78:
	case 88:
		i = spell != 88 ? target : 0;
		n = spell != 88 ? target + 1 : party_char_count;
		field_index = spell != 88 ? 7 : 4;
		effect_value = spell != 88 ? power : 0;
		for (; i < n; ++i) {
			party_records[i].hp[0] = clamp_between(
				party_records[i].hp[0] +
				add_random_steps(*store_word_and_pair(power,
					field_index, effect_value)),
				0, party_records[i].hp[1]);
			++party_records[i].age_days;
			if (spell != 88)
				show_party_member_overview(i);
		}
		break;
	case 94:
		if (party_records[target].state == 3 &&
			3 * power > 21 - party_records[target].stat[3]) {
			--party_records[target].stat[3];
			party_records[target].state = 0;
			party_records[target].hp[0] = clamp_between(
				party_records[target].hp[1] / 3, 1,
				party_records[target].hp[1]);
			party_records[target].stamina[0] =
				party_records[target].stamina[1] / 10;
			++party_records[target].deaths;
			party_records[target].age_days += random_below(183) + 365;
			show_party_member_overview(target);
		}
		break;
	case 97:
		i = add_random_steps(*store_word_and_pair(power, 8, power));
		party_records[pc].stamina[0] += i;
		if (party_records[pc].stamina[0] > party_records[pc].stamina[1])
			party_records[pc].stamina[0] = party_records[pc].stamina[1];
		i = add_random_steps(*store_word_and_pair(power, 2, 0));
		party_records[pc].hp[0] += i;
		if (party_records[pc].hp[0] > party_records[pc].hp[1])
			party_records[pc].hp[0] = party_records[pc].hp[1];
		break;
	case 98:
		for (i = 0; i < 6; ++i) {
			n = add_random_steps(*store_word_and_pair(power, 10, 0));
			party_records[pc].realm_points[i][0] += n;
			if (party_records[pc].realm_points[i][0] >
				party_records[pc].realm_points[i][1])
				party_records[pc].realm_points[i][0] =
					party_records[pc].realm_points[i][1];
		}
		break;
	case 64:
		picked_item_slot = select_inventory_slot();
		if (picked_item_slot != -1 &&
			party_records[pc].item_slots[item_page][picked_item_slot].item_id > 0)
			identify_and_show_item_details(pc,
				&party_records[pc].item_slots[item_page][picked_item_slot],
				item_slot_names[picked_item_slot], power);
		break;
	case 87:
		for (n = 0; n < 2; ++n)
			for (i = 0; i < 10; ++i)
				if (random_below(100) < 15 * power)
					party_records[target].item_slots[n][i].flags &= (unsigned)65533;
		break;
	case 92:
		picked_item_slot = select_inventory_slot();
		if (picked_item_slot != -1 &&
			party_records[pc].item_slots[item_page][picked_item_slot].item_id > 0)
			recharge_inventory_item(pc,
				&party_records[pc].item_slots[item_page][picked_item_slot], power);
		break;
	}
}
