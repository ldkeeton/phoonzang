/* Loads and displays an NPC message after substituting the NPC name. */
#include "structs/npc.h"
extern struct npc_record npc_record;
extern int load_message_string(), str_subst_char(), display_npc_text_message();

/* Loads, personalizes, and displays a message on the NPC screen. */
show_npc_message(message_number, row, play_sound, text_color)
int message_number;
int row;
int play_sound;
int text_color;
{
	char message[80];

	load_message_string(message_number, message);
	str_subst_char(message, npc_record.name, '^');
	display_npc_text_message(message, row, play_sound, text_color);
}
