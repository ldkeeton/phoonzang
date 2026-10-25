/* draw party member pc's panel: slot icon, name, two cell icons, three bars;
   reveal makes the drawn area visible */

#include "structs/pcrec.h"
#include "structs/spell.h"

extern char spell_table[];		/* the spell entries and the tables after */
extern struct pc_rec party_records[];
extern long panel_area[];
extern int member_icon[];
extern gfx_restore_area(), gfx_set_text_pos(), draw_font_glyph(),
	gfx_set_text_color(), draw_text_glyphs(), load_message_string(),
	draw_power_bar(), gfx_show_area();

draw_party_member_panel(pc, reveal)
int pc, reveal;
{
	int i, key, icon, best, x, y, sum_cur, sum_max;
	char name[40];
	int glyph_base;

	gfx_restore_area(panel_area[pc], 0);
	x = pc % 2 * 252 + 5;			/* two columns 252 px apart */
	y = pc / 2 * 45 + 18;			/* rows 45 px apart */
	gfx_set_text_pos(x, y);
	draw_font_glyph((unsigned char)member_icon[pc], 5);
	gfx_set_text_color(1, 0);
	gfx_set_text_pos(x + 4, y + 32);		/* below the slot icon */
	draw_text_glyphs(party_records[pc].name, 0);	/* member name */
	gfx_set_text_color(132, 0);
	gfx_set_text_pos(x + 4, y + 38);
	load_message_string(120 + party_records[pc].label,
		name);
	name[7] = 0;		/* keep seven characters */
	draw_text_glyphs(name, 0);
	icon = ((struct spell_table_view *)spell_table)
		->state_icon[party_records[pc].state];
	/* -1 becomes 0 or 1 once the matching per-member counter is set */
	icon = (icon == -1
		&& party_records[pc].status[2] > 0) ? 0 : icon;
	icon = (icon <= 0
		&& party_records[pc].status[3] > 0) ? 1 : icon;
	if (icon != -1) {
		gfx_set_text_pos(x + 28, y + 21);
		draw_font_glyph((unsigned char)icon, 6);
	}
	/* ten status bytes: keep the icon with the largest weight */
	icon = -1;
	best = -1;
	for (i = 0; i < 10; i++) {
		if (party_records[pc].status[i] > 0 &&
		    ((struct spell_table_view *)spell_table)->status_weight[i]
			> best) {
			icon = ((struct spell_table_view *)spell_table)
				->status_icon[i];
			best = ((struct spell_table_view *)spell_table)
				->status_weight[i];
		}
	}
	if (icon != -1) {
		gfx_set_text_pos(x + 38, y + 21);
		draw_font_glyph((unsigned char)icon, 6);
	}
	/* kinds 0x13/0x19 use base 10, else the word glyph_set picks */
	glyph_base = (party_records[pc].kind == 19 ||
		  party_records[pc].kind == 25)
		? 10 : ((struct spell_table_view *)spell_table)
		  ->glyph_base[party_records[pc].glyph_set];
	for (i = 0; i < 2; i++) {	/* two cells, 14 px apart */
		gfx_set_text_pos(i * 14 + x + 30, y + 7);
		key = party_records[pc].order[i];
		if (key != 255 &&
		    party_records[pc].cell[0][key].key > 0) {
			draw_font_glyph(party_records[pc].cell[0][key].glyph, 4);
		} else {
			draw_font_glyph((unsigned char)(glyph_base + i), 7);
		}
	}
	/* three 3x22 bars at x+0x30, +0x34, +0x38 in colours 0x1b/0x56/0x98 */
	draw_power_bar(x + 48, y + 21, 3, 22,
		party_records[pc].pair_a[0],
		party_records[pc].pair_a[1], 27);
	draw_power_bar(x + 52, y + 21, 3, 22,
		party_records[pc].pair_b[0], party_records[pc].pair_b[1], 86);
	sum_cur = 0;
	sum_max = 0;
	for (i = 0; i < 6; i++) {	/* six realms */
		sum_cur += party_records[pc].realm_points[i][0];
		sum_max += party_records[pc].realm_points[i][1];
	}
	draw_power_bar(x + 56, y + 21, 3, 22, sum_cur, sum_max, 152);
	if (reveal)
		gfx_show_area(x, y, x + 59, y + 43);
}
