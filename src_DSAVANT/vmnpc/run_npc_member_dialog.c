/* Runs the NPC conversation loop for a selected party member. */
#include "structs/pcrec.h"
#include "msg.h"
#include "structs/npc.h"
extern struct npc_dialog_state npc_dialog;

extern struct pc_rec party_records[];
extern int npc_message_ready;
extern int npc_dialog_mode;
extern int npc_dialog_text_has_question, npc_record_index;
extern char far *mouse_pointer_shape;
extern int text_line_index, text_line_color[];
extern char text_line_buffer[];
extern unsigned char npc_dialog_phoonzang_prefix[];
extern int npc_member_index, ;
extern int load_message_string(), str_subst_char(), set_mouse_pointer_shape();
extern int aztec_setmem();
extern int call_mouse_glide_to(), call_mouse_glide_back();
extern int redraw_area_set(), show_area_set(), edit_npc_dialog_text_line();
extern int normalize_npc_dialog_text(), aztec_strlen(), aztec_strncmp();
extern int expand_npc_dialog_text(), process_npc_dialog_response();
extern int word_end_index(), build_npc_dialog_choice_reply(),
	save_npc_dialog_default_choice();

/* Presents the NPC dialog and processes each response word. */
run_npc_member_dialog(member_index)
int member_index;
{
	int text_length;
	int choice_start;
	int special_prefix;
	char text[80];
	char member_name[20];

	npc_member_index = member_index;
	npc_message_ready = 0;
	aztec_setmem(&npc_dialog, sizeof(npc_dialog), 0);
	npc_dialog.default_choice_index = -1;
	npc_dialog.default_choice_value = 0;
	npc_dialog.choice_backup = -1;
	npc_dialog.response_value = -1;
	for (text_line_index = 0; text_line_index < 4; text_line_index++) {
		text_line_buffer[text_line_index * 128] = 0;
		text_line_color[text_line_index] = 0;
	}
	text_line_index = 0;
	load_message_string(MSG_1513, member_name);
	str_subst_char(member_name, &party_records[member_index], 94);
	set_mouse_pointer_shape(mouse_pointer_shape);
	call_mouse_glide_to(302, 164, 0);
	redraw_area_set(3);
	show_area_set(3);

	do {
		edit_npc_dialog_text_line(text, member_name);
		normalize_npc_dialog_text(text);
		text_length = aztec_strlen(text);
		text[text_length] = ' ';
		text[text_length + 1] = 0;
		special_prefix = aztec_strncmp(text, npc_dialog_phoonzang_prefix, 9) == 0;
		expand_npc_dialog_text(text);
		text_length = 0;
		npc_dialog.choice_index = -1;
		npc_dialog.choice_auxiliary = 0;
		npc_dialog.primary_choice = -1;
		npc_dialog.choice_code = -1;
		npc_dialog.topic_0_enabled = 0;
		npc_dialog.topic_1_enabled = 0;
		npc_dialog.topic_2_enabled = 0;
		npc_dialog.topic_3_enabled = 0;
		npc_dialog.topic_4_enabled = 0;
		npc_dialog.topic_5_enabled = 0;
		npc_dialog.topic_6_enabled = 0;
		npc_dialog.empty_choice_seen = 0;
		npc_dialog.response_active = npc_dialog_text_has_question;
		npc_dialog.mode7_seen = 0;
		npc_dialog.prefix_matched = 0;
		npc_dialog.response_flag_2 = 0;
		npc_dialog.response_flag_3 = 0;
		npc_dialog.response_flag_4 = 0;
		npc_dialog.response_flag_0 = 0;
		npc_dialog.response_flag_1 = 0;
		npc_dialog.response_state_extra = 0;
		npc_dialog.response_flag_5 = 0;
		npc_dialog.response_flag_6 = 0;
		npc_dialog.choice_value_a = 0;
		npc_dialog.choice_value_b = 1;
		npc_dialog.latest_choice = -1;
		npc_dialog.alt_choice_index = -1;
		npc_dialog.alt_choice_value = 0;
		npc_dialog.secondary_choice = -1;
		npc_dialog_mode = 10;

		do {
			while (text[text_length] == ' ')
				text_length++;
			npc_dialog_mode = process_npc_dialog_response(text + text_length);
		} while ((text_length = word_end_index(text, text_length)) != -1);
		if (npc_record_index == 45 || npc_record_index == 81 ||
			npc_record_index == 83 ||
			(npc_record_index == 77 && special_prefix == 0))
			text[0] = 0;
		if (aztec_strlen(text) > 0 && build_npc_dialog_choice_reply() == 0)
			save_npc_dialog_default_choice();
	} while (npc_dialog.response_flag_1 != 1);
	redraw_area_set(3);
	show_area_set(3);
	call_mouse_glide_back(302, 164, 0);
	set_mouse_pointer_shape((char far *)0L);
	npc_message_ready = 1;
}
