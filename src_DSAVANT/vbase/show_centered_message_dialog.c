/* Display consecutive messages in a centered dialog, then restore its area. */
extern int message_not_found, message_delay;
extern char message_dialog_temp_file[];
extern int load_message_string(), aztec_strlen(), save_screen_area();
extern int draw_dialog_box(), call_set_text_pos(), call_set_text_color();
extern int draw_text_glyphs(), call_show_area(), wait_for_hotspot_timeout();
extern int restore_saved_screen();

show_centered_message_dialog(first_message)
int first_message;
{
	int line_number, box_width, box_height, left, top, right, bottom;
	unsigned char message_text[80];
	int saved_area, longest_line;

	line_number = 0;
	longest_line = 0;
	/* Measure visible text, excluding the initial color byte. */
	do {
		load_message_string(first_message + line_number, message_text);
		if (message_not_found == 0) {
			if (aztec_strlen(message_text) - 1 > longest_line)
				longest_line = aztec_strlen(message_text) - 1;
			line_number++;
		}
	} while (message_not_found == 0);
	/* Six-pixel text cells and a twelve-pixel border, centered on 320x200. */
	box_width = 6 * longest_line + 12;
	box_height = 6 * line_number + 12;
	left = 160 - box_width / 2;
	top = 100 - box_height / 2;
	right = left + box_width - 1;
	bottom = top + box_height - 1;
	saved_area = save_screen_area(left - 1, top - 1, right + 1, bottom + 1,
		message_dialog_temp_file);
	draw_dialog_box(left, top, right, bottom);
	line_number = 0;
	/* Center each line separately and use its leading byte as the color. */
	do {
		load_message_string(first_message + line_number, message_text);
		if (message_not_found == 0) {
			call_set_text_pos(160 - (aztec_strlen(message_text) * 6 - 6) / 2,
				6 * line_number + top + 6);
			call_set_text_color(message_text[0], 0);
			draw_text_glyphs(&message_text[1], 0);
			line_number++;
		}
	} while (message_not_found == 0);
	call_show_area(left - 1, top - 1, right + 1, bottom + 1);
	/* Keep the dialog visible for twice the configured message delay. */
	wait_for_hotspot_timeout(message_delay << 1);
	restore_saved_screen(saved_area, 1);
}
