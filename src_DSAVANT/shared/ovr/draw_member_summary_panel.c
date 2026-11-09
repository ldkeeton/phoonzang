/* Draw the selected party member's summary, values and status glyphs. */
#include "msg.h"
#include "structs/encstyle.h"
#include "structs/pcrec.h"
#include "structs/spell.h"

extern struct pc_rec party_records[];
extern struct spell_table_view spell_table[];
extern int member_screen_cache_high, member_screen_cache;
extern long member_detail_cache;
extern int banner_offset, banner_plain_flag, banner_animation_frame;
extern char percent_suffix_text[];
extern int call_restore_screen(), draw_doubled_member_portrait();
extern int call_set_text_color(), call_set_text_pos();
extern int aztec_strlen(), draw_text_glyphs(), draw_font_glyph();
extern int load_message_string(), draw_number_field(), draw_padded_number();
extern int clamp_between(), draw_title_banner(), format_int_decimal();
extern int format_long_decimal(), sum_member_item_weight();
extern struct encumbrance_style *select_encumbrance_style();
extern int draw_member_realm_points();

draw_member_summary_panel(member_index)
int member_index;
{
	int stat_index;
	int icon_count;
	int icon;
	int percent;
	unsigned char text[80];
	int status_order[11];	/* Seven used; the frame reserves eleven words. */
	struct encumbrance_style encumbrance;

	call_restore_screen(member_screen_cache,
		member_screen_cache_high, 0, 0);
	call_restore_screen(member_detail_cache, 0, 0);
	draw_doubled_member_portrait(member_index, 14, 18);
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
	call_set_text_pos(90, 18);
	load_message_string(MSG_LVL, text);
	draw_text_glyphs(text, 0);
	draw_number_field(party_records[member_index].level, 4, 0);

	/* The banner shrinks a step per four years past 18 and per death,
	   scaled by VIT (stat[3]); the dead (state >= 3) get the plain one. */
	banner_offset = ((20 - (((party_records[member_index].age_days / 365
		- 18) / 4 + party_records[member_index].deaths) - 1))
		* party_records[member_index].stat[3]) / 18;
	banner_offset = clamp_between(banner_offset, 0, 20);
	banner_plain_flag = party_records[member_index].state >= 3;
	banner_animation_frame = 0;
	draw_title_banner(banner_animation_frame);
	call_set_text_color(85, 0);

	/* Eight displayed stats share one row and one text buffer. */
	for (stat_index = 0; stat_index < 8; stat_index++) {
		call_set_text_pos(115, 35 + stat_index * 6);
		load_message_string(MSG_STR + stat_index, text);
		draw_text_glyphs(text, 0);
		draw_number_field(party_records[member_index].stat[stat_index], 3, 0);
	}
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
	draw_text_glyphs(percent_suffix_text, 0);
	call_set_text_color(29, 0);
	draw_font_glyph(40, 0);
	format_int_decimal(party_records[member_index].stamina[1], text);
	draw_text_glyphs(text, 0);
	draw_font_glyph(41, 0);
	call_set_text_color(196, 0);
	load_message_string(MSG_GP_214, text);
	call_set_text_pos(91, 93);
	draw_text_glyphs(text, 0);
	draw_font_glyph(32, 0);
	format_long_decimal(party_records[member_index].gold, text);
	draw_text_glyphs(text, 0);

	sum_member_item_weight(member_index);
	encumbrance = *select_encumbrance_style(member_index);
	party_records[member_index].stamina_drain = encumbrance.stamina_drain;
	call_set_text_color(encumbrance.text_color, 0);
	load_message_string(MSG_CC, text);
	call_set_text_pos(91, 99);
	draw_text_glyphs(text, 0);
	draw_font_glyph(32, 0);
	format_int_decimal(party_records[member_index].carried_weight / 10, text);
	draw_text_glyphs(text, 0);
	draw_font_glyph(47, 0);
	format_int_decimal(party_records[member_index].carry_capacity / 10, text);
	draw_text_glyphs(text, 0);
	draw_member_realm_points(member_index);

	/* Select at most six distinct status icons, in display priority order. */
	icon_count = 0;
	icon = spell_table->state_icon[party_records[member_index].state];
	icon = icon == -1 && party_records[member_index].status[2] > 0
		? 0 : icon;
	icon = icon <= 0 && party_records[member_index].status[3] > 0
		? 1 : icon;
	if (icon != -1) {
		call_set_text_pos(81, 45);
		draw_font_glyph((unsigned char)icon, 6);
		icon_count++;
	}
	status_order[0] = 6;
	status_order[1] = 7;
	status_order[2] = 5;
	status_order[3] = 4;
	status_order[4] = 8;
	status_order[5] = 9;
	status_order[6] = 1;
	icon = -1;
	for (stat_index = 0; stat_index < 7; stat_index++) {
		percent = status_order[stat_index];	/* reused as the status index */
		if (icon_count < 6 && spell_table->status_icon[percent] != icon
		    && party_records[member_index].status[percent] > 0) {
			call_set_text_pos(81 + icon_count / 3 * 23,
				45 + icon_count % 3 * 11);
			draw_font_glyph((unsigned char)spell_table->status_icon[percent], 6);
			icon = spell_table->status_icon[percent];
			icon_count++;
		}
	}
}
