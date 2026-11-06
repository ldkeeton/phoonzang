/* Reveal the current NPC dialog line across the text panel. */
extern int cell_slot_ref[3][3];
extern int text_line_index;
extern int text_line_color[];
extern char text_line_buffer[];
extern unsigned char hardware_mode_setting;
extern int measure_text_width();
extern int call_set_text_pos(), call_set_text_color();
extern int draw_text_glyphs(), call_show_area();
extern int step_npc_screen_animation();
extern int poll_filtered_key(), get_filtered_key();
extern int wait_for_spacebar_prompt(), delay_ms();

reveal_text_line()
{
	int horizontal_position;
	int line_extent;
	int reveal_x;
	int key;
	int reveal_step;
	int occupied_cells;
	int delay;

	occupied_cells = 0;
	for (line_extent = 0; line_extent < 3; ++line_extent)
		for (horizontal_position = 0; horizontal_position < 3;
			horizontal_position++)
			if (cell_slot_ref[line_extent][horizontal_position] != 0)
				++occupied_cells;
	delay = 10 - occupied_cells * 4;
	line_extent = measure_text_width(
		text_line_buffer + (text_line_index << 7), 2);
	horizontal_position = 160 - (line_extent + 1) / 2;
	call_set_text_pos(horizontal_position,
		12 * text_line_index +
		(text_line_color[text_line_index] != 0 ? 146 : 151));
	call_set_text_color(text_line_color[text_line_index] != 0 ? 85 : 1, 0);
	draw_text_glyphs(text_line_buffer + (text_line_index << 7),
		text_line_color[text_line_index]);
	reveal_step = hardware_mode_setting == 2 ? 1 : 0;
	for (reveal_x = horizontal_position;
		reveal_x < horizontal_position + line_extent;
		reveal_x += reveal_step + 1) {
		call_show_area(reveal_x, 12 * text_line_index + 146,
			reveal_x + reveal_step,
			12 * text_line_index + 158);
		step_npc_screen_animation();
		if (poll_filtered_key(1)) {
			key = (unsigned char)get_filtered_key(1);
			if (key == 32)
				wait_for_spacebar_prompt();
		}
		if (delay > 0)
			delay_ms(delay);
	}
}
