/* Draws the visible rows of the NPC item list. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern unsigned char npc_item_list_profession_mask[];
extern unsigned char npc_item_list_race_mask[];
extern unsigned char npc_item_list_gender_mask[];
extern unsigned char npc_item_list_item_type[];
extern unsigned char npc_item_list_glyph[];
extern unsigned long npc_item_list_value[];
extern unsigned int npc_item_list_item_count[];
extern char npc_item_list_name[][22];
extern unsigned char item_type_counted[];
extern char npc_item_value_unit_text[];
extern int test_bit();
extern int call_set_text_pos(), call_set_text_color(), call_fill_area();
extern int load_message_string(), draw_text_glyphs(), draw_padded_number();
extern int draw_font_glyph(), draw_split_two_line_text(), draw_number_field();

draw_npc_item_list_rows(member_index, panel_x, panel_y, panel_width,
	visible_rows, first_item_index, selected_item_index)
int member_index;
int panel_x;
int panel_y;
int panel_width;
int visible_rows;
int first_item_index;
int selected_item_index;
{
	int row;
	int selected_color;
	char item_name[80];

	for (row = 0; row < visible_rows; ++row) {
		call_set_text_pos(panel_x + 2,
			panel_y + row * 14 + 1);
		call_set_text_color(155, 195);
		if (!(test_bit(npc_item_list_profession_mask +
				(first_item_index + row) * 2,
			party_records[member_index].profession) &&
		    test_bit(npc_item_list_race_mask +
				(first_item_index + row) * 2,
			party_records[member_index].race) &&
		    test_bit(npc_item_list_gender_mask + first_item_index + row,
			party_records[member_index].gender))) {
			load_message_string(MSG_UNUSABLE_1567, item_name);
		} else {
			load_message_string(MSG_WEAPON_S +
				npc_item_list_item_type[first_item_index + row], item_name);
		}
		draw_text_glyphs(item_name, 0);
		call_set_text_pos(panel_x + 2,
			panel_y + row * 14 + 7);
		call_set_text_color(1, 195);
		draw_padded_number(npc_item_list_value[first_item_index + row], 8, 0);
		call_set_text_color(27, 195);
		draw_text_glyphs(npc_item_value_unit_text, 0);
		if (first_item_index + row == selected_item_index) {
			call_fill_area(panel_x + 83, panel_y + row * 14 + 1,
				panel_x + panel_width * 6 + 2,
				panel_y + row * 14 + 13, 1);
			selected_color = 0;
		} else {
			selected_color = 180;
		}
		call_set_text_pos(panel_x + 70, panel_y + row * 14 + 1);
		draw_font_glyph(npc_item_list_glyph[first_item_index + row], 4);
		draw_split_two_line_text(npc_item_list_name[first_item_index + row],
			panel_x + 84, panel_y + row * 14 + 2, selected_color);
		if (item_type_counted[npc_item_list_item_type[first_item_index + row]]
			== 1) {
			call_set_text_pos(panel_x + 126, panel_y + row * 14 + 8);
			call_set_text_color(first_item_index + row == selected_item_index
				? selected_color : 2, 0);
			draw_number_field(npc_item_list_item_count[first_item_index + row],
				3, 0);
		}
	}
}
