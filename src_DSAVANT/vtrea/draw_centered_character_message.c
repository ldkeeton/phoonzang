/* centers a character name and up to three fragments in the message row */
#include "structs/pcrec.h"
extern struct pc_rec party_records[];

draw_centered_character_message(pc, first_text, second_text, third_text,
		name_color, first_color, second_color, third_color)
int pc;
char *first_text;
char *second_text;
char *third_text;
int name_color;
int first_color;
int second_color;
int third_color;
{
	int spaces;

	refresh_treasure_panel_and_wait(1, 1);
	spaces = (first_text[0] ? 1 : 0) + (second_text[0] ? 1 : 0) +
		(third_text[0] ? 1 : 0);
	call_set_text_pos(160 -
		(aztec_strlen(party_records[pc].name) + aztec_strlen(first_text) +
		aztec_strlen(second_text) + aztec_strlen(third_text) + spaces) * 6 / 2,
		163);
	call_set_text_color(name_color, 0);
	draw_text_glyphs(party_records[pc].name, 0);
	draw_font_glyph(32, 0);
	if (first_text[0]) {
		call_set_text_color(first_color, 0);
		draw_text_glyphs(first_text, 0);
		draw_font_glyph(32, 0);
	}
	if (second_text[0]) {
		call_set_text_color(second_color, 0);
		draw_text_glyphs(second_text, 0);
		draw_font_glyph(32, 0);
	}
	if (third_text[0]) {
		call_set_text_color(third_color, 0);
		draw_text_glyphs(third_text, 0);
	}
	call_show_area(25, 163, 295, 169);
}
