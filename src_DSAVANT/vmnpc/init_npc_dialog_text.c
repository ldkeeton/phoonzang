/* Clears the NPC dialog text lines and loads the dialog word tables. */
#include "msg.h"

extern int text_line_index, text_line_color[];
extern char text_line_buffer[];
extern int npc_dialog_first_choice_msg_id;
extern int npc_dialog_response_name_msg_id;
extern int npc_dialog_response_wait_msg_id;
extern int npc_first_choice_message_base, npc_second_choice_message_base;
extern int npc_dialog_response_name, npc_dialog_response_wait;
extern char npc_dialog_verb_words[], npc_dialog_filler_words[];
extern char npc_dialog_modal_words[], npc_dialog_question_words[];
extern char npc_dialog_pronoun_words[], npc_dialog_interjection_words[];
extern char npc_dialog_not_word[];
extern char npc_dialog_to_word[];
extern int collect_npc_dialog_choices();
extern int load_message_batch(), load_message_string();
extern int load_npc_pronoun_swaps(), load_npc_dialog_messages();

/* Clears the four visible lines and initializes NPC dialog message buffers. */
init_npc_dialog_text()
{
	for (text_line_index = 0; text_line_index < 4; ++text_line_index) {
		text_line_buffer[text_line_index << 7] = 0;
		text_line_color[text_line_index] = 0;
	}
	text_line_index = 0;
	npc_second_choice_message_base = 8000;
	npc_first_choice_message_base = npc_dialog_first_choice_msg_id;
	npc_dialog_response_name = npc_dialog_response_name_msg_id;
	npc_dialog_response_wait = npc_dialog_response_wait_msg_id;
	collect_npc_dialog_choices(npc_first_choice_message_base,
		npc_second_choice_message_base);
	load_message_batch(7000, 10, npc_dialog_verb_words);
	load_message_batch(7030, 7, npc_dialog_question_words);
	load_message_string(MSG_NOT, npc_dialog_not_word);
	load_message_string(MSG_TO_7041, npc_dialog_to_word);
	load_message_batch(7050, 7, npc_dialog_modal_words);
	load_npc_pronoun_swaps(7070, 5);
	load_message_batch(7090, 11, npc_dialog_pronoun_words);
	load_message_batch(7120, 10, npc_dialog_interjection_words);
	load_message_batch(7140, 7, npc_dialog_filler_words);
	load_npc_dialog_messages(7160, 38);
}
