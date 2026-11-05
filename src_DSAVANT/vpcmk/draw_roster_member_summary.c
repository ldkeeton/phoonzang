/* Draw a party member's roster summary and realm points. */
#include "msg.h"
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int summary_panel_cache_low, summary_panel_cache_high;
extern int detail_panel_cache_low, detail_panel_cache_high;
extern int banner_offset, banner_plain_flag, banner_animation_frame;
extern char stamina_percent_suffix[];
extern int call_restore_screen(), call_set_text_color(), call_set_text_pos();
extern int aztec_strlen(), draw_text_glyphs(), draw_font_glyph();
extern int load_message_string(), draw_number_field(), draw_padded_number();
extern int clamp_between(), draw_title_banner(), format_int_decimal();
extern int draw_member_realm_points();

draw_roster_member_summary(member_index)
int member_index;
{
	int reserved;
	int percent;
	unsigned char text[80];

	call_restore_screen(summary_panel_cache_low,
		summary_panel_cache_high, 0, 0);
	call_restore_screen(detail_panel_cache_low,
		detail_panel_cache_high, 0, 0);
	call_set_text_color(0, 0);
	call_set_text_pos(40 - aztec_strlen(party_records[member_index].name) * 6 / 2,
		76);
	draw_text_glyphs(party_records[member_index].name, 0);
	call_set_text_color(1, 0);
	call_set_text_pos(90, 6);
	load_message_string(MSG_MALE + party_records[member_index].gender, text);
	draw_font_glyph(text[0], 0);
	draw_font_glyph(45, 0);
	load_message_string(MSG_RACE_BASE + party_records[member_index].race, text);
	draw_text_glyphs(text, 0);
	call_set_text_color(132, 0);
	call_set_text_pos(90, 12);
	load_message_string(MSG_CLASS_BASE + party_records[member_index].profession,
		text);
	draw_text_glyphs(text, 0);
	call_set_text_color(132, 0);
	call_set_text_pos(90, 18);
	load_message_string(MSG_LVL, text);
	draw_text_glyphs(text, 0);
	draw_number_field(party_records[member_index].level, 4, 0);

	banner_offset = ((20 - (((party_records[member_index].age_days / 365
		- 18) / 4 + party_records[member_index].deaths) - 1))
		* party_records[member_index].stat[3]) / 18;
	banner_offset = clamp_between(banner_offset, 0, 20);
	banner_plain_flag = party_records[member_index].state >= 3;
	banner_animation_frame = 0;
	draw_title_banner(banner_animation_frame);
	call_set_text_color(253, 0);
	load_message_string(MSG_RNK, text);
	call_set_text_pos(228, 6);
	draw_text_glyphs(text, 0);
	load_message_string(MSG_RANK_BASE +
		party_records[member_index].profession * 10 +
		party_records[member_index].rank, text);
	call_set_text_pos((52 - aztec_strlen(text)) * 6, 6);
	draw_text_glyphs(text, 0);
	call_set_text_color(71, 0);
	load_message_string(MSG_EXP, text);
	call_set_text_pos(228, 12);
	draw_text_glyphs(text, 0);
	draw_font_glyph(32, 0);
	draw_padded_number(party_records[member_index].experience, 10, 0);
	load_message_string(MSG_MKS, text);
	call_set_text_pos(228, 18);
	draw_text_glyphs(text, 0);
	draw_font_glyph(32, 0);
	draw_padded_number(party_records[member_index].marks, 10, 0);
	call_set_text_color(29, 0);
	load_message_string(MSG_HP, text);
	call_set_text_pos(6, 93);
	draw_text_glyphs(text, 0);
	draw_font_glyph(32, 0);
	call_set_text_color(27, 0);
	format_int_decimal(party_records[member_index].hp[0], text);
	draw_text_glyphs(text, 0);
	draw_font_glyph(47, 0);
	format_int_decimal(party_records[member_index].hp[1], text);
	draw_text_glyphs(text, 0);
	call_set_text_color(29, 0);
	load_message_string(MSG_ST, text);
	call_set_text_pos(6, 99);
	draw_text_glyphs(text, 0);
	draw_font_glyph(32, 0);
	call_set_text_color(27, 0);
	percent = party_records[member_index].stamina[0] * 100 /
		party_records[member_index].stamina[1];
	percent = percent < 1 && party_records[member_index].stamina[0] > 0
		? 1 : percent;
	format_int_decimal(percent, text);
	draw_text_glyphs(text, 0);
	draw_text_glyphs(stamina_percent_suffix, 0);
	call_set_text_color(29, 0);
	draw_font_glyph(40, 0);
	format_int_decimal(party_records[member_index].stamina[1], text);
	draw_text_glyphs(text, 0);
	draw_font_glyph(41, 0);
	draw_member_realm_points(member_index);
}
