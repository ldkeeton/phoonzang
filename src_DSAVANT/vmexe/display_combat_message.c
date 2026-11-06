/* Load and display one centered combat message. */
extern int load_message_string();
extern int draw_centered_menu_text_row();

display_combat_message(message_id, color, row)
int message_id, color, row;
{
	char message_text[80];

	load_message_string(message_id, message_text);
	draw_centered_menu_text_row(message_text, color, row);
}
