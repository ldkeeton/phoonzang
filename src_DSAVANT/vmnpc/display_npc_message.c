/* Display an NPC message, optionally waiting before finishing the dialog. */
extern int npc_message_ready;
extern int begin_npc_message_display();
extern int wrap_npc_message();
extern int reveal_text_line();
extern int next_text_line();
extern int wait_ticks_abortable();
extern int end_npc_message_display();

display_npc_message(message, wait_after)
char *message;
int wait_after;
{
	if (npc_message_ready)
		begin_npc_message_display();
	wrap_npc_message(message);
	reveal_text_line();
	next_text_line();
	if (wait_after)
		wait_ticks_abortable(72, 1);
	if (npc_message_ready)
		end_npc_message_display();
}
