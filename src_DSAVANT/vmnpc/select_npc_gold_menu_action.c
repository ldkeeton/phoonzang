/* Shows a member's name and gold above an action menu and returns the
   chosen action. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int redraw_area_set();
extern int draw_npc_gold_frame();
extern int draw_centered_text_at_x();
extern int format_long_decimal();
extern char *aztec_strcat();
extern int draw_npc_dialog_action_menu();

select_npc_gold_menu_action(member_index, first_label_msg_id, title, suffix,
			   entry_count, entry_values)
int member_index;
int first_label_msg_id;
char *title;
char *suffix;
int entry_count;
int *entry_values;
{
	int nonzero_count;
	int selected_entry;
	char amount_text[80];

	redraw_area_set(3);
	draw_npc_gold_frame();
	draw_centered_text_at_x(title, 160, 147, 1);
	format_long_decimal(party_records[member_index].gold, amount_text);
	aztec_strcat(amount_text, suffix);
	draw_centered_text_at_x(amount_text, 160, 154, 179);

	nonzero_count = 0;
	selected_entry = 0;
	for (; selected_entry <= entry_count; ++selected_entry) {
		if (entry_values[selected_entry] != 0)
			++nonzero_count;
	}
	selected_entry =
		draw_npc_dialog_action_menu(first_label_msg_id, 3, 9, 231, 166, 6, 42, 10,
				  nonzero_count < 5 ? 2 : 3, 0, 1,
				  entry_values);
	redraw_area_set(0);
	draw_centered_text_at_x(title, 160, 147, 1);
	draw_centered_text_at_x(amount_text, 160, 154, 179);
	return selected_entry;
}
