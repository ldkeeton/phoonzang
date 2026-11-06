/* Reads and displays consecutive NPC message lines. */
extern char text_line_buffer[];
extern int text_line_index;
extern int message_not_found;
extern char far *mouse_pointer_shape;
extern char npc_message_line_separator[];
extern int load_message_string(), aztec_strcat(), aztec_strcpy();
extern int wrap_npc_message(), reveal_text_line(), next_text_line();
extern int call_mouse_glide_back(), call_mouse_glide_to();
extern int set_mouse_pointer_shape(), poll_fullscreen_hotspot();
extern int step_npc_screen_animation(), wait_ticks_abortable();

/* Displays messages starting at message_number using the requested mode. */
display_npc_message_sequence(message_number, display_mode)
int message_number;
int display_mode;
{
	char message[255];

	do {
		load_message_string(message_number, message);
		if (message_not_found == 0) {
			if (text_line_buffer[text_line_index << 7] != 0)
				aztec_strcat(text_line_buffer + (text_line_index << 7),
					npc_message_line_separator);
			aztec_strcat(text_line_buffer + (text_line_index << 7), message);
			aztec_strcpy(message,
				text_line_buffer + (text_line_index << 7));
			wrap_npc_message(message);
			++message_number;
		}
	} while (message_not_found == 0);

	reveal_text_line();
	switch (display_mode) {
	case 0:
		next_text_line();
		break;
	case 1:
		call_mouse_glide_back(302, 164, 0);
		set_mouse_pointer_shape(0L);
		while (!poll_fullscreen_hotspot())
			step_npc_screen_animation();
		set_mouse_pointer_shape(mouse_pointer_shape);
		call_mouse_glide_to(302, 164, 0);
		break;
	case 2:
		wait_ticks_abortable(54, 1);
		next_text_line();
		break;
	}
}
