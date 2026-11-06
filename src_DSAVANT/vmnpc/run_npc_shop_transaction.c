/* Runs a party member through the NPC shop's purchase and gold menus. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern unsigned char npc_effect_flags;
extern int npc_item_list_count;
extern int member_item_count;
extern int load_message_string();
extern int aztec_strcpy();
extern int build_member_item_list();
extern int select_npc_gold_menu_action();
extern int select_npc_item_to_buy();
extern int npc_item_action_menu();
extern int pool_party_gold();
extern int redraw_area_set();
extern int draw_centered_text_at_x();
extern int show_area_set();

/* Selects purchases, sales, or gold pooling until the member exits. */
run_npc_shop_transaction(member_index)
int member_index;
{
	int action_enabled[12];
	char member_name[80];
	char gold_suffix[10];

	for (action_enabled[10] = 0; action_enabled[10] <= 4; ++action_enabled[10])
		action_enabled[action_enabled[10]] = 1;
	if (npc_effect_flags & 2) {
		action_enabled[0] = 0;
		action_enabled[1] = 0;
	}
	action_enabled[5] = -1;
	aztec_strcpy(member_name, party_records[member_index].name);
	load_message_string(MSG_GP_1512, gold_suffix);
	build_member_item_list(member_index);
	for (;;) {
		if (npc_item_list_count <= 0)
			action_enabled[0] = 0;
		if (member_item_count == 0) {
			action_enabled[1] = 0;
			action_enabled[2] = 0;
		}
		switch (action_enabled[10] = select_npc_gold_menu_action(member_index,
			1520, member_name, gold_suffix, 4, action_enabled)) {
		case 0:
			select_npc_item_to_buy(member_index);
			break;
		case 1:
			if (npc_item_action_menu(member_index, MSG_1580, 1, 0))
				action_enabled[10] = 4;
			break;
		case 2:
			if (npc_item_action_menu(member_index, MSG_1583, 1, 1))
				action_enabled[10] = 4;
			break;
		case 3:
			pool_party_gold(member_index);
			redraw_area_set(2);
			draw_centered_text_at_x(member_name, 160, 147, 1);
			show_area_set(2);
			break;
		}
		if (action_enabled[10] == 4)
			break;
	}
	return;
}
