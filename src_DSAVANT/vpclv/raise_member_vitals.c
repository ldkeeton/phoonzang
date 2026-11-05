/* Raise a member's vital totals after gaining a level. */
#include "structs/pcrec.h"
#include "msg.h"
extern struct pc_rec party_records[];
extern char stamina_percent_open_text[], stamina_percent_close_text[],
	hit_points_separator_text[], empty_vitals_suffix_text[];

/* Increase hit points and stamina, recalculate capacity, and refresh the
   display. */
raise_member_vitals(member)
int member;
{
	int hp_gain, stamina_gain, strength, vitality, stamina_percent, capacity_base;
	char message[80], number[80];
	strength = party_records[member].stat[0];
	vitality = party_records[member].stat[3];
	switch (party_records[member].profession) {
	case 0: case 4: case 10: hp_gain = random_below(5) + 6; break;
	case 1: hp_gain = random_below(3) + 2; break;
	case 2: case 5: case 12: hp_gain = random_below(4) + 4; break;
	case 3: hp_gain = random_below(4) + 3; break;
	case 6: case 7: case 9: hp_gain = random_below(3) + 3; break;
	case 8: case 11: hp_gain = random_below(5) + 5; break;
	case 13: hp_gain = random_below(5) + 4; break;
	}
	stamina_gain = random_below(4) + (strength + vitality) / 6;
	capacity_base = (2 * strength + vitality) * 3;
	if (vitality < 8) hp_gain--;
	if (vitality > 15) hp_gain++;
	if (vitality > 17) hp_gain++;
	if (strength > 15) capacity_base += strength;
	if (strength > 17) capacity_base += strength;
	if (hp_gain < 1) hp_gain = 1;
	if (party_records[member].level < party_records[member].pre_drain_level) {
		hp_gain = 1;
		stamina_gain = 1;
	}
	party_records[member].hp[0] += hp_gain;
	party_records[member].hp[1] += hp_gain;
	party_records[member].stamina[0] += stamina_gain;
	party_records[member].stamina[1] += stamina_gain;
	party_records[member].carry_capacity = 15 * capacity_base;
	if (party_records[member].race == 5)
		party_records[member].carry_capacity =
			party_records[member].carry_capacity * 2 / 3;
	stamina_percent =
		100 * party_records[member].stamina[0] / party_records[member].stamina[1];
	stamina_percent = stamina_percent < 1 && party_records[member].stamina[0] > 0
		? 1 : stamina_percent;
	draw_message_number_line(0, 6, 99, stamina_percent,
		party_records[member].stamina[1], MSG_ST, stamina_percent_open_text,
		stamina_percent_close_text, 24, 1);
	load_message_string(MSG_YOU_INCREASED_STAMINA, message);
	display_centered_message(message, 1);
	draw_member_summary_panel(member);
	call_show_area(6, 6, 162, 103);
	draw_message_number_line(0, 6, 93, party_records[member].hp[0],
		party_records[member].hp[1], MSG_HP, hit_points_separator_text,
		empty_vitals_suffix_text, 24, 1);
	load_message_string(hp_gain == 1 ? MSG_YOU_GAINED_HIT_POINT
		: MSG_YOU_GAINED_HIT_POINTS, message);
	format_int_decimal(hp_gain, number);
	str_subst_char(message, number, 36);
	display_centered_message(message, 1);
	draw_member_summary_panel(member);
	call_show_area(6, 6, 162, 103);
}
