/* Process scene-message controls and append ordinary text to the line
   buffer. */
extern char scene_message_line_buffer[];
extern char scene_message_control_codes[];
extern char scene_message_separator[];
extern int scene_message_row, scene_running, scene_tick;
extern int strpos();
extern int draw_scene_message_line();
extern int wait_for_scene_input_or_timeout();
extern int dissolve_scene_message_area();
extern int clear_scene_message_area();
extern int wait_and_clear_scene_messages();
extern int refresh_scene_frame_if_active();
extern int aztec_strcpy();
extern int aztec_strcat();
extern int measure_text_width();

process_scene_message_controls(message)
unsigned char *message;
{
	int text_width;
	int control_index;
	int command_character;
	char combined_text[255];

	/* Scan controls until the remaining text needs to be drawn as another
	   line. */
	for (;;) {
		control_index = strpos(scene_message_control_codes, *message);
		if (control_index < 0)
			goto append_text;
		/* Each control token consumes itself before performing its action. */
		switch (control_index) {
		case 0:
			message++;
			draw_scene_message_line(scene_message_line_buffer);
			break;
		case 1:
			message++;
			command_character = *message;
			wait_for_scene_input_or_timeout(command_character * 18);
			message++;
			break;
		case 2:
			message++;
			draw_scene_message_line(scene_message_line_buffer);
			dissolve_scene_message_area();
			break;
		case 3:
			message++;
			clear_scene_message_area();
			scene_message_row = 0;
			break;
		case 4:
			message++;
			draw_scene_message_line(scene_message_line_buffer);
			wait_and_clear_scene_messages();
			break;
		case 5:
			message++;
			scene_tick++;
			break;
		case 6:
			message++;
			scene_running = 1;
			while (scene_running != 0)
				refresh_scene_frame_if_active();
			break;
		}
	}

append_text:
	/* Measure buffered text with this run of characters and its separator. */
	if (scene_message_line_buffer[0] != 0) {
		aztec_strcpy(combined_text, scene_message_line_buffer);
		aztec_strcat(combined_text, scene_message_separator);
		aztec_strcat(combined_text, message);
	} else {
		aztec_strcpy(combined_text, message);
	}
	text_width = measure_text_width(combined_text, 2);
	/* 0x127 is the maximum width accepted in the current message line. */
	if (text_width > 295) {
		draw_scene_message_line(scene_message_line_buffer);
		aztec_strcpy(scene_message_line_buffer, message);
	} else {
		aztec_strcpy(scene_message_line_buffer, combined_text);
	}
	return;
}
