/* Builds NPC dialog text from the selected and alternate choices. */
#include "msg.h"

extern int npc_dialog_primary_choice, npc_dialog_empty_choice_seen;
extern int npc_alt_choice_index, npc_dialog_choice_auxiliary;
extern int npc_dialog_choice_index, npc_alt_choice_value;
extern int npc_dialog_choice_code, npc_dialog_secondary_choice;
extern int npc_dialog_default_choice_index, npc_dialog_default_choice_value;
extern int npc_dialog_response_value, npc_dialog_response_active;
extern char npc_dialog_verb_words[][10];
extern int npc_dialog_choice_backup, npc_dialog_topic_1_enabled;
extern int copy_npc_choice_text(), wrap_npc_message(), swap_npc_pronoun();
extern int titlecase_string(), load_message_string();
extern int str_subst_char(), append_npc_message_text(), random_below();
extern int strcpy();

build_npc_dialog_choice_reply()
{
	char choice_name[82];
	char message[80];

	if (npc_dialog_primary_choice == -1 &&
	    npc_dialog_empty_choice_seen == 1)
		npc_dialog_primary_choice = 1;
	if (npc_alt_choice_index != -1) {
		copy_npc_choice_text(npc_dialog_choice_index, npc_dialog_choice_auxiliary,
			choice_name);
		swap_npc_pronoun(choice_name);
		titlecase_string(choice_name);
		load_message_string(MSG_ARE_YOU_SPEAKING_OF, message);
		str_subst_char(message, choice_name, '^');
		wrap_npc_message(message);
		copy_npc_choice_text(npc_alt_choice_index, npc_alt_choice_value,
			choice_name);
		swap_npc_pronoun(choice_name);
		titlecase_string(choice_name);
		append_npc_message_text(MSG_OR, choice_name);
		return -1;
	}
	if (npc_dialog_choice_code == -1 && npc_dialog_choice_index == -1) {
		if (npc_dialog_primary_choice != -1) {
			strcpy(choice_name,
				npc_dialog_verb_words[npc_dialog_primary_choice]);
			titlecase_string(choice_name);
			append_npc_message_text(MSG_WHAT_1602, choice_name);
		} else if (random_below(2) == 0)
			append_npc_message_text(MSG_I_DON_T_KNOW_ABOUT_THAT, (unsigned)37108);
		else
			append_npc_message_text(MSG_I_DON_T_UNDERSTAND, (unsigned)37109);
		return -1;
	}
	if (npc_dialog_secondary_choice != -1) {
		if (npc_dialog_choice_index != -1) {
			copy_npc_choice_text(npc_dialog_choice_index, 1, choice_name);
			swap_npc_pronoun(choice_name);
			titlecase_string(choice_name);
			append_npc_message_text(MSG_ARE_YOU_ASKING_ABOUT, choice_name);
			npc_dialog_choice_backup = 1;
			npc_dialog_default_choice_index = npc_dialog_choice_index;
			npc_dialog_default_choice_value = npc_dialog_choice_auxiliary;
			npc_dialog_response_value = 1;
		} else
			append_npc_message_text(MSG_YOUR_WORDS_ARE_CONFUSING, (unsigned)37110);
		return -1;
	}
	if (npc_dialog_choice_code == -1 &&
	    npc_dialog_primary_choice == -1) {
		if (npc_dialog_choice_index != -1) {
			npc_dialog_response_active = 1;
			npc_dialog_topic_1_enabled = 1;
			npc_dialog_primary_choice = 1;
			return 0;
		}
		append_npc_message_text(MSG_HUH_1607, (unsigned)37111);
		return -1;
	}
	return 0;
}
