/* Edits an NPC dialog line and carries overflow text to the next row. */
extern int text_line_index;
extern char text_line_buffer[];
extern int text_line_color[];
extern int last_npc_text_entry_key;
extern int call_set_text_pos(), call_set_text_color(), draw_text_glyphs();
extern int show_area_set(), edit_npc_text_entry(), strpos();
extern int redraw_area_set(), next_text_line();
extern int aztec_strlen(), aztec_strncpy(), aztec_strcpy(), aztec_strcat();

/* Edit the current line, splitting at the last word when it overflows. */
edit_npc_dialog_text_line(editable_line, text)
char *editable_line;
char *text;
{
	int edit_result;
	int suffix_length;
	int suffix_start;
	int accepted;
	int edit_lefts[2];
	int edit_widths[2];
	char original_line[80];
	char suffix[80];

	edit_widths[0] = (184 - aztec_strlen(text) * 6) / 6;
	edit_widths[1] = 30;
	edit_lefts[0] = aztec_strlen(text) * 6 + 68;
	edit_lefts[1] = 68;
	call_set_text_pos(68, 12 * text_line_index + 151);
	call_set_text_color(1, 0);
	draw_text_glyphs(text, 0);
	show_area_set(3);
	accepted = 0;
	editable_line[0] = 0;
	do {
		edit_result = edit_npc_text_entry(editable_line, edit_lefts[accepted],
			12 * text_line_index + 151, edit_widths[accepted], 1, 55, 0, accepted);
		if (edit_result == 1) {
			if (last_npc_text_entry_key != 32 &&
				strpos(editable_line, 32) != -1) {
				suffix_length = aztec_strlen(editable_line);
				suffix_start = suffix_length;
				while (editable_line[suffix_start - 1] != ' ')
					--suffix_start;
				aztec_strncpy(suffix,
					editable_line + suffix_start,
					suffix_length - suffix_start);
				suffix[suffix_length - suffix_start] = 0;
				editable_line[suffix_start] = 0;
			} else
				suffix[0] = 0;
			suffix_length = aztec_strlen(suffix);
			suffix[suffix_length] = last_npc_text_entry_key;
			suffix[suffix_length + 1] = 0;
			aztec_strcpy(text_line_buffer + (text_line_index << 7), text);
			aztec_strcat(text_line_buffer + (text_line_index << 7),
				editable_line);
			text_line_color[text_line_index] = 0;
			next_text_line();
			aztec_strcpy(original_line, editable_line);
			aztec_strcpy(editable_line, suffix);
			accepted = 1;
		} else if (edit_result == -1) {
			redraw_area_set(3);
			--text_line_index;
			aztec_strcpy(editable_line, original_line);
			accepted = 0;
		}
	} while (edit_result != 0);

	if (accepted == 0)
		aztec_strcpy(text_line_buffer + (text_line_index << 7), text);
	else
		text_line_buffer[text_line_index << 7] = 0;
	aztec_strcat(text_line_buffer + (text_line_index << 7), editable_line);
	text_line_color[text_line_index] = 0;
	next_text_line();
	if (accepted != 0) {
		aztec_strcpy(suffix, editable_line);
		aztec_strcpy(editable_line, original_line);
		aztec_strcat(editable_line, suffix);
	}
}
