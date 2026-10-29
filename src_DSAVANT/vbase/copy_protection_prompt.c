/* draws four clue lines built from the code characters and reads the answer
   word */

#include "msg.h"

extern char screen_temp_file[];		/* "V.$$$" */
extern unsigned char code_characters[];	/* 100-byte clue-character table */
extern int code_index_1, code_index_2, code_index_3, code_index_4;
extern char answer_word[];
extern char known_spell_names[];

copy_protection_prompt()
{
	int box_x0, box_y0, box_x1, box_y1;	/* dialog box corners */
	char message[80], clue[80];
	int saved_area;

	box_x0 = 55;
	box_y0 = 143;
	box_x1 = 264;
	box_y1 = 197;
	saved_area = save_screen_area(box_x0 - 1, box_y0 - 1, box_x1 + 1, box_y1 + 1,
		screen_temp_file);
	draw_dialog_box(box_x0, box_y0, box_x1, box_y1);
	call_set_text_color(28, 0);
	load_message_string(MSG_SECURITY_CLEARANCE, message);	/* heading */
	/* 21 glyph cells 6 px wide; the +2 rounds to the nearer cell */
	call_set_text_pos(((21 - aztec_strlen(message)) * 6 + 2) / 2 + box_x0 + 41,
		box_y0 + 5);
	draw_text_glyphs(message, 0);
	call_set_text_color(1, 194);
	load_message_string(MSG_PLEASE_TURN_TO_PAGE_OF_YOUR, message);
	format_int_decimal(code_characters[code_index_1],
		clue);	/* first clue character */
	str_subst_char(message, clue, '$');
	call_set_text_pos(((21 - aztec_strlen(message)) * 6 + 2) / 2 + box_x0 + 41,
		box_y0 + 15);
	draw_text_glyphs(message, 0);
	load_message_string(MSG_MANUAL_AND_ENTER_THE_WORD, message);
	load_message_string(MSG_ORDINAL_BASE + code_characters[code_index_4],
		clue);	/* word chosen by the fourth clue character */
	str_subst_char(message, clue, '$');
	call_set_text_pos(((21 - aztec_strlen(message)) * 6 + 2) / 2 + box_x0 + 41,
		box_y0 + 21);
	draw_text_glyphs(message, 0);
	load_message_string(MSG_LOCATED_IN_PARAGRAPH_LINE, message);
	format_int_decimal(code_characters[code_index_2],
		clue);	/* second clue character */
	str_subst_char(message, clue, '^');
	format_int_decimal(code_characters[code_index_3],
		clue);	/* third clue character */
	str_subst_char(message, clue, '%');
	call_set_text_pos(((21 - aztec_strlen(message)) * 6 + 2) / 2 + box_x0 + 41,
		box_y0 + 27);
	draw_text_glyphs(message, 0);
	known_spell_names[0] = 0;	/* name buffer doubles as entry buffer */
	draw_text_list(box_x0 + 41, box_y0 + 40, 21, 1, 0, 0,
		1);	/* 21-column, one-row panel */
	call_show_area(box_x0 - 1, box_y0 - 1, box_x1 + 1, box_y1 + 1);
	play_sound_effect(0);
	flush_keyboard();
	draw_text_list(box_x0 + 41, box_y0 + 40, 21, 1, 0, 0, 1);
	call_show_area(box_x0 + 41, box_y0 + 40, box_x0 + 169,
		box_y0 + 47);	/* just the entry row */
	input_text_field(known_spell_names, box_x0 + 43, box_y0 + 41, 20, 0, 1,
		0);	/* max 20 chars, printable */
	draw_text_list(box_x0 + 41, box_y0 + 40, 21, 1, 0, -1,
		1);	/* no highlighted row */
	call_show_area(box_x0 + 41, box_y0 + 40, box_x0 + 169, box_y0 + 47);
	restore_saved_screen(saved_area, 1);
	call_show_area(box_x0 - 1, box_y0 - 1, box_x1 + 1, box_y1 + 1);
	aztec_strcpy(answer_word,
		known_spell_names);	/* leave the answer where the caller checks it */
}
