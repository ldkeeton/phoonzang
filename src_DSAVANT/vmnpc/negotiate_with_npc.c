/* Negotiates with the NPC and adjusts its attitudes toward the party. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int party_char_count;
extern int npc_record_index;
extern unsigned char npc_level;
extern unsigned char current_faction_index;
extern char faction_attitudes[];
extern int npc_charm_bonus;
extern int member_item_count;
extern int npc_negotiation_tactic;
extern int npc_dialog_initial_state;
extern int load_message_string();
extern int aztec_strcpy();
extern int build_member_item_list();
extern int select_npc_gold_menu_action();
extern int member_is_active();
extern int npc_item_action_menu();
extern int pool_party_gold();
extern int random_below();
extern int match_npc_event_trigger();
extern int redraw_area_set();
extern int draw_centered_text_at_x();
extern int show_area_set();
extern int clamp_between();
extern int str_subst_char();
extern int display_npc_text_message();
extern int try_raise_member_skill();
extern int show_npc_message();
extern int adjust_npc_attitudes();

/* Runs the PEACE/BRIBE/FORCE/GIVE/POOL/EXIT menu, then rolls the NPC
   reaction: 1 pleased, 0 reserved or exited, -1 angry. */
negotiate_with_npc(member_index)
int member_index;
{
	int negotiation_score;
	int reaction_roll;
	int first_attitude_change;
	int second_attitude_change;
	int result;
	char negotiation_message[80];
	int repeat_menu;
	int member_cursor;
	int selection;
	int action_enabled[10];
	char member_name[80];
	char gold_suffix[10];
	long bribe_amount;

	aztec_strcpy(member_name, party_records[member_index].name);
	load_message_string(MSG_GP_1512, gold_suffix);
	build_member_item_list(member_index);

	negotiation_score = 0;
	repeat_menu = 1;
	do {
		for (selection = 0; selection <= 5; ++selection)
			action_enabled[selection] = 1;
		action_enabled[6] = -1;
		if (party_records[member_index].gold == 0)
			action_enabled[1] = 0;
		if (member_item_count == 0)
			action_enabled[3] = 0;
		selection = select_npc_gold_menu_action(member_index, 1490,
			member_name, gold_suffix, 5, action_enabled);
		switch (selection) {
		case 0:
			negotiation_score += party_records[member_index].level / 2
				+ party_records[member_index].skills[28] / 2
				+ party_records[member_index].stat[6];
			if (party_records[member_index].profession == 10 ||
				party_records[member_index].profession == 9)
				negotiation_score += party_records[member_index].stat[6];
			repeat_menu = 0;
			break;
		case 2:
			npc_negotiation_tactic = 1;
			for (member_cursor = 0; member_cursor < party_char_count;
				++member_cursor) {
				if (member_is_active(member_cursor))
					negotiation_score += party_records[member_cursor].level;
			}
			negotiation_score -= npc_level * 5;
			repeat_menu = 0;
			break;
		case 3:
			if (npc_item_action_menu(member_index, MSG_1583, 1, 1)) {
				selection = 5;
				repeat_menu = 0;
			}
			break;
		case 1:
		case 4:
			if (selection == 4) {
				pool_party_gold(member_index);
			} else {
				npc_negotiation_tactic = 2;
				bribe_amount = (random_below(4) * 10 + 20) *
				npc_level;
				if (bribe_amount > party_records[member_index].gold)
					bribe_amount = party_records[member_index].gold;
				party_records[member_index].gold -= bribe_amount;
				negotiation_score += (int)(bribe_amount / 10L /
					npc_level);
				if (match_npc_event_trigger(member_index, 2,
					(int)(bribe_amount / 256L),
					(unsigned char)(bribe_amount % 256L), 0)) {
					selection = 5;
					repeat_menu = 0;
				}
			}
			redraw_area_set(2);
			draw_centered_text_at_x(member_name, 160, 147, 1);
			show_area_set(2);
			break;
		case 5:
			repeat_menu = 0;
			break;
		}
	} while (repeat_menu != 0);
	if (selection == 5)
		return 0;

	negotiation_score = party_records[member_index].stat[7]
		+ (party_records[member_index].pad1[npc_record_index]
			+ npc_charm_bonus) / 3
		+ negotiation_score - 10;
	negotiation_score = clamp_between(negotiation_score
		+ (faction_attitudes[current_faction_index]
			+ npc_charm_bonus) / 3, 0, 95);
	reaction_roll = random_below(100) + npc_dialog_initial_state;
	npc_dialog_initial_state = random_below(5) +
		npc_dialog_initial_state + 10;
	load_message_string(MSG_ENTERS_NEGOTIATIONS, negotiation_message);
	str_subst_char(negotiation_message, &party_records[member_index], 94);
	display_npc_text_message(negotiation_message, 1, 0, 85);

	result = 0;
	if (reaction_roll < negotiation_score) {
		if (npc_negotiation_tactic == 3)
			try_raise_member_skill(member_index, 28, 3);
		show_npc_message(MSG_LOOKS_PLEASED, 1, 1, 85);
		first_attitude_change = random_below(10) + 5;
		second_attitude_change = random_below(10) + 5;
		result = 1;
	} else if (negotiation_score * npc_negotiation_tactic < reaction_roll ||
		reaction_roll >= 95) {
		show_npc_message(MSG_BECOMES_ANGRY, 1, 1, 22);
		first_attitude_change = 0 - (random_below(10) + 10);
		second_attitude_change = 0 - (random_below(10) + 10);
		result = -1;
	} else {
		show_npc_message(MSG_APPEARS_RESERVED, 1, 1, 85);
		first_attitude_change = random_below(10) - 5;
		second_attitude_change = random_below(10) - 5;
		result = 0;
	}
	adjust_npc_attitudes(member_index, first_attitude_change,
		second_attitude_change);
	return result;
}
