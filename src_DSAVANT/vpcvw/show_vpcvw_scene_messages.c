/* Load and display consecutive scene message strings. */
extern long roster_screen;
extern int scene_message_last_x, scene_message_line_index;
extern unsigned char scene_message_text_buffer[];
extern int message_not_found;
extern int call_restore_screen();
extern int load_message_string();
extern int process_scene_message_words();
extern int draw_scene_message_line();
extern int wait_for_scene_message_page();

/* Load messages until the first missing string, then wait for input. */
show_vpcvw_scene_messages(message_id)
int message_id;
{
	char message[86];

	call_restore_screen(roster_screen, 0, 0);
	scene_message_last_x = 4;
	scene_message_line_index = 0;
	scene_message_text_buffer[0] = 0;
	do {
		load_message_string(message_id, message);
		if (message_not_found == 0) {
			process_scene_message_words(message);
			message_id++;
		}
	} while (message_not_found == 0);
	if (scene_message_text_buffer[0] != 0)
		draw_scene_message_line(scene_message_text_buffer);
	wait_for_scene_message_page();
}
