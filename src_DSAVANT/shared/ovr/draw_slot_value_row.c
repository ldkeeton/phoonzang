/* Draw the four generated slot values and highlight the selected value. */
extern int call_set_text_color();
extern int call_set_text_pos();
extern int draw_text_glyphs();
extern int format_int_decimal();
extern int aztec_strlen();
extern int draw_font_glyph();
extern int slot_value[];
extern char slot_prompt_text[];
extern int realm_text_colors[];

draw_slot_value_row(selected_index, selected_value)
int selected_index;
int selected_value;
{
	int slot_index;
	int total_text_length;
	int has_previous_value;
	char value_text[4][10];

	call_set_text_color(22, 0);
	call_set_text_pos(6, 174);
	draw_text_glyphs(slot_prompt_text, 0);
	total_text_length = 0;
	has_previous_value = 0;
	slot_index = 0;

	/* Format each slot value, substituting the pending value at the selection.
	   Slot two stays empty unless its stored value is positive. */
	for (;;) {
		value_text[slot_index][0] = 0;
		if (slot_index != selected_index
				&& (slot_value[slot_index] > 0 || slot_index != 2)) {
			if (has_previous_value)
				total_text_length++;
			format_int_decimal(slot_value[slot_index], value_text[slot_index]);
			has_previous_value = 1;
		} else if (slot_index == selected_index) {
			if (has_previous_value)
				total_text_length++;
			format_int_decimal(selected_value, value_text[slot_index]);
			has_previous_value = 1;
		}
		total_text_length += aztec_strlen(value_text[slot_index]);
		if (++slot_index >= 4)
			break;
	}

	/* Center the resulting row using the measured character count. */
	call_set_text_pos((26 - total_text_length) * 6 - 5, 174);
	has_previous_value = 0;
	slot_index = 0;

	/* Draw separators between nonempty values and use each slot's color. */
	do {
		if (aztec_strlen(value_text[slot_index]) > 0) {
			if (has_previous_value) {
				call_set_text_color(1, 0);
				draw_font_glyph(47, 0);
			}
			call_set_text_color(realm_text_colors[slot_index], 0);
			draw_text_glyphs(value_text[slot_index], 0);
			has_previous_value = 1;
		}
	} while (++slot_index < 4);
}
