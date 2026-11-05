/* Show a fatal message, mark every party member dead, then set game_state
   8. */
extern int party_char_count, message_delay, game_state;
extern int redraw_maze_view(), show_message();
extern int mark_party_member_dead(), wait_ticks_or_key(), call_show_area();

kill_party_with_message(message_id)
int message_id;
{
	int member_index;

	redraw_maze_view();
	show_message(message_id);
	for (member_index = 0; member_index < party_char_count; member_index++)
		mark_party_member_dead(member_index, 2);
	wait_ticks_or_key(message_delay * 2);
	call_show_area(0, 146, 319, 152);
	game_state = 8;
}
