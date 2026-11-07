/* Append scene-message text to the current line or start a new line. */
extern unsigned char scene_message_text_buffer[];
extern unsigned char scene_message_separator[];
extern int draw_scene_message_line();
extern int wait_for_scene_message_page();
extern int measure_text_width();
extern unsigned char *strcpy();
extern unsigned char *strcat();

append_scene_message_fragment(text)
unsigned char *text;
{
	int text_width;
	unsigned char composed_text[130];

	if (*text == '!') {
		++text;
		draw_scene_message_line(scene_message_text_buffer);
	} else if (*text == '@') {
		++text;
		draw_scene_message_line(scene_message_text_buffer);
		wait_for_scene_message_page();
	}

	if (scene_message_text_buffer[0] != 0) {
		strcpy(composed_text, scene_message_text_buffer);
		strcat(composed_text, scene_message_separator);
		strcat(composed_text, text);
	} else
		strcpy(composed_text, text);

	text_width = measure_text_width(composed_text, 2);
	if (text_width > 168) {
		draw_scene_message_line(scene_message_text_buffer);
		strcpy(scene_message_text_buffer, text);
	} else
		strcpy(scene_message_text_buffer, composed_text);
}
