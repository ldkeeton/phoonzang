/* Rotates the NPC text rows forward and clears the last row. */
extern char text_line_buffer[];
extern int text_line_color[];
extern int text_line_index;

/* Moves each displayed row and its color up one slot. */
rotate_npc_text_lines()
{
	int slot;

	for (slot = 0; slot < 3; ++slot) {
		aztec_strcpy(text_line_buffer + slot * 128,
			text_line_buffer + (slot + 1) * 128);
		text_line_color[slot] = text_line_color[slot + 1];
	}
	text_line_buffer[3 * 128] = 0;
	text_line_color[3] = 0;
	text_line_index = 3;
}
