/* Draw the overall and per-slot armor class values for one party member. */
#include "msg.h"
#include "structs/encstyle.h"
#include "structs/pcrec.h"

extern int ac_screen_a_handle_high;
extern int ac_screen_a_handle_low;
extern int ac_screen_b_handle_high;
extern int ac_screen_b_handle_low;
extern struct pc_rec party_records[];
extern int call_restore_screen();
extern struct encumbrance_style *select_encumbrance_style();
extern int load_message_string();
extern int aztec_strlen();
extern int format_int_decimal();
extern int call_set_text_color();
extern int call_set_text_pos();
extern int draw_text_glyphs();
extern int draw_font_glyph();

draw_member_armor_class(member_index)
int member_index;
{
	int item_index;
	int text_length;
	int displayed_armor_class;
	int partial_armor_class;
	int encumbrance_adjusted_class;
	struct encumbrance_style encumbrance;
	char text[80];
	int position_layout_pad_top;
	int x_positions[5];
	int position_layout_pad_middle;
	int y_positions[5];

	/* Restore the two cached screen regions before drawing the values. */
	call_restore_screen(ac_screen_a_handle_low, ac_screen_a_handle_high, 0, 0);
	call_restore_screen(ac_screen_b_handle_low, ac_screen_b_handle_high, 0, 0);

	/* The style's first word offsets the member's armor class. */
	encumbrance = *select_encumbrance_style(member_index);
	encumbrance_adjusted_class =
		party_records[member_index].armor_class[1] +
		encumbrance.tier;
	partial_armor_class =
		party_records[member_index].armor_class[2] +
		encumbrance_adjusted_class;
	displayed_armor_class = partial_armor_class +
		party_records[member_index].armor_class[0];

	/* Format the overall AC followed by its parenthesized partial value. */
	load_message_string(MSG_AC_216, text);
	text_length = aztec_strlen(text);
	text[text_length++] = ' ';
	if (displayed_armor_class > 0)
		text[text_length++] = '+';
	format_int_decimal(displayed_armor_class, text + text_length);

	text_length = aztec_strlen(text);
	text[text_length++] = ' ';
	text[text_length++] = '(';
	if (partial_armor_class >= 0)
		text[text_length++] = '+';
	format_int_decimal(partial_armor_class, text + text_length);
	text_length = aztec_strlen(text);
	text[text_length++] = ')';
	text[text_length] = 0;

	call_set_text_color(235, 0);
	/* Six-pixel glyphs center the string at x=0x10e, y=0x1e. */
	call_set_text_pos(270 - (aztec_strlen(text) * 6) / 2, 30);
	draw_text_glyphs(text, 0);

	/* These five x/y pairs place the armor-class values by equipment slot. */
	x_positions[0] = 276;
	y_positions[0] = 46;
	x_positions[1] = 276;
	y_positions[1] = 68;
	x_positions[2] = 276;
	y_positions[2] = 90;
	x_positions[3] = 294;
	y_positions[3] = 79;
	x_positions[4] = 276;
	y_positions[4] = 112;

	for (item_index = 0; item_index < 5; item_index++) {
		call_set_text_pos(x_positions[item_index],
			y_positions[item_index]);
		call_set_text_color(
			party_records[member_index].equipped[item_index + 3] != 255
				? 95 : 235, 0);
		displayed_armor_class = partial_armor_class +
			party_records[member_index].armor_class[item_index + 3];
		if (displayed_armor_class >= 0)
			/* This font glyph precedes nonnegative decimal values. */
			draw_font_glyph(43, 0);
		format_int_decimal(displayed_armor_class, text);
		draw_text_glyphs(text, 0);
	}
}
