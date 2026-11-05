/* Select the encumbrance penalties and display values for one member. */
#include "structs/encstyle.h"
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern struct encumbrance_style window_record;

struct encumbrance_style *
select_encumbrance_style(member_index)
int member_index;
{
	struct encumbrance_style style;
	long carry_percentage;

	/* Defaults apply through 50 percent of carry capacity. */
	style.tier = 0;
	style.penalty_a = 0;
	style.penalty_b = 0;
	style.stat4_cap = party_records[member_index].adjusted_stat4;
	style.stat5_cap = party_records[member_index].adjusted_stat5;
	style.stamina_drain = 0;
	style.text_color = 9;

	/* Compare the carried weight as an integer percentage. */
	carry_percentage =
		(long) party_records[member_index].carried_weight * 100L /
		party_records[member_index].carry_capacity;

	if (carry_percentage <= 50L) {
		/* The defaults already apply. */
	} else if (carry_percentage <= 66L) {
		/* The 51-66 percent band raises the two penalties. */
		style.penalty_a = 5;
		style.penalty_b = 10;
		if (style.stat4_cap > 3)
			style.stat4_cap = 3;
		if (style.stat5_cap > 3)
			style.stat5_cap = 3;
	} else if (carry_percentage <= 75L) {
		/* The 67-75 percent band limits stats and drains stamina. */
		style.tier = 1;
		style.penalty_a = 10;
		style.penalty_b = 20;
		if (style.stat4_cap > 2)
			style.stat4_cap = 2;
		if (style.stat5_cap > 2)
			style.stat5_cap = 2;
		/* This band divides maximum stamina by 100. */
		style.stamina_drain =
			party_records[member_index].stamina[1] / 100;
		style.text_color = 131; /* color selected for this band */
	} else if (carry_percentage <= 90L) {
		/* The 76-90 percent band uses the next tier. */
		style.tier = 2;
		style.penalty_a = 20;
		style.penalty_b = 40;
		style.stat4_cap = 1;
		style.stat5_cap = 1;
		/* This band divides maximum stamina by 50. */
		style.stamina_drain =
			party_records[member_index].stamina[1] / 50;
		style.text_color = 84; /* color selected for this band */
	} else {
		/* Above 90 percent, the final tier uses the strongest drain. */
		style.tier = 4;
		style.penalty_a = 40;
		style.penalty_b = 80;
		style.stat4_cap = 1;
		style.stat5_cap = 1;
		/* The heaviest band divides maximum stamina by 25. */
		style.stamina_drain =
			party_records[member_index].stamina[1] / 25;
		style.text_color = 22; /* color selected for this band */
	}

	/* Return the selected style through the shared window record. */
	window_record = style;
	return &window_record;
}
