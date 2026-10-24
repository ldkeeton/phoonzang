/* draw party member pc's panel: slot icon, name, two cell icons, three bars;
   reveal makes the drawn area visible */

struct pc_rec {		/* 0x248-byte records */
	int cap;		/* +0 */
	int w2;			/* +2 */
	int points[6][2];	/* +4: [cur, max] per realm */
	char pad[584 - 28];
};
extern char spell_table[];	/* 6-byte entries, plus word arrays at +0x300 */
extern struct pc_rec pc_records[];
extern struct pc_rec pc_spell_power_cap[];
extern char member_state[], cell_key_grid[], party_records[],
	member_pair_points[];
extern gfx_restore_area(), gfx_set_text_pos(), draw_font_glyph(),
	gfx_set_text_color(), draw_text_glyphs(), load_message_string(),
	draw_power_bar(), gfx_show_area();

draw_party_member_panel(pc, reveal)
int pc, reveal;
{
	int i, key, icon, best, x, y, sum_cur, sum_max;
	char name[40];
	int glyph_base;

	gfx_restore_area(*(long *)(member_state + pc * 4 + 2938), 0);
	x = pc % 2 * 252 + 5;			/* two columns 252 px apart */
	y = pc / 2 * 45 + 18;			/* rows 45 px apart */
	gfx_set_text_pos(x, y);
	draw_font_glyph(*(unsigned char *)(member_state + pc * 2 + 2962), 5);
	gfx_set_text_color(1, 0);
	gfx_set_text_pos(x + 4, y + 32);		/* below the slot icon */
	draw_text_glyphs(party_records + pc * 584, 0);	/* member name */
	gfx_set_text_color(132, 0);
	gfx_set_text_pos(x + 4, y + 38);
	load_message_string(120 + *(unsigned char *)(member_state + pc * 584 + 3),
		name);
	name[7] = 0;		/* keep seven characters */
	draw_text_glyphs(name, 0);
	icon = *(int *)(spell_table + 768 +
		2 * *(unsigned char *)(member_state + pc * 584 + 5));
	/* -1 becomes 0 or 1 once the matching per-member counter is set */
	icon = (icon == -1
		&& *(unsigned char *)(cell_key_grid + pc * 584 + 296) > 0) ? 0 : icon;
	icon = (icon <= 0
		&& *(unsigned char *)(cell_key_grid + pc * 584 + 297) > 0) ? 1 : icon;
	if (icon != -1) {
		gfx_set_text_pos(x + 28, y + 21);
		draw_font_glyph((unsigned char)icon, 6);
	}
	/* ten entries: keep the icon that goes with the largest +0x320 word */
	icon = -1;
	best = -1;
	for (i = 0; i < 10; i++) {
		if (*(unsigned char *)(cell_key_grid + pc * 584 + i + 294) > 0 &&
		    *(int *)(spell_table + 800 + i * 2) > best) {
			icon = *(int *)(spell_table + 780 + i * 2);
			best = *(int *)(spell_table + 800 + i * 2);
		}
	}
	if (icon != -1) {
		gfx_set_text_pos(x + 38, y + 21);
		draw_font_glyph((unsigned char)icon, 6);
	}
	/* state bytes 0x13/0x19 use base 10, else the word at the member's +1 */
	glyph_base = (*(unsigned char *)(member_state + pc * 584) == 19 ||
		  *(unsigned char *)(member_state + pc * 584) == 25)
		? 10 : *(int *)(spell_table + 820 +
		 2 * *(unsigned char *)(member_state + pc * 584 + 1));
	for (i = 0; i < 2; i++) {	/* two cells, 14 px apart */
		gfx_set_text_pos(i * 14 + x + 30, y + 7);
		key = *(unsigned char *)(cell_key_grid + pc * 584 + i + 276);
		if (key != 255 &&
		    *(short *)(cell_key_grid + pc * 584 + key * 12) > 0) {
			draw_font_glyph(*(unsigned char *)(cell_key_grid + pc * 584 +
				key * 12 + 5), 4);
		} else {
			draw_font_glyph((unsigned char)(glyph_base + i), 7);
		}
	}
	/* three 3x22 bars at x+0x30, +0x34, +0x38 in colours 0x1b/0x56/0x98 */
	draw_power_bar(x + 48, y + 21, 3, 22,
		*(int *)(member_pair_points + pc * 584 + 2),
		*(int *)(member_pair_points + pc * 584 + 4), 27);
	draw_power_bar(x + 52, y + 21, 3, 22,
		pc_records[pc].cap, pc_records[pc].w2, 86);
	sum_cur = 0;
	sum_max = 0;
	for (i = 0; i < 6; i++) {	/* six realms */
		sum_cur += pc_spell_power_cap[pc].points[i][0];
		sum_max += pc_spell_power_cap[pc].points[i][1];
	}
	draw_power_bar(x + 56, y + 21, 3, 22, sum_cur, sum_max, 152);
	if (reveal)
		gfx_show_area(x, y, x + 59, y + 43);
}
