/* Draw the spell cost when it is within the available point limit. */

extern int draw_inset_panel(), call_fill_area(), call_set_text_pos();
extern int call_set_text_color(), draw_number_field(), draw_text_glyphs();
extern int realm_point_text_colors[6][2];
extern char spell_cost_panel_text[];

draw_spell_cost(panel_x, panel_y, realm, cost, point_limit)
int panel_x, panel_y, realm, cost, point_limit;
{
	draw_inset_panel(panel_x, panel_y, panel_x + 20, panel_y + 6);
	call_fill_area(panel_x, panel_y, panel_x + 20, panel_y + 6,
		realm_point_text_colors[realm][1]);
	call_set_text_pos(panel_x + 2, panel_y + 1);

	/* Show the numeric cost only when it is positive and within the limit. */
	if (cost > 0 && cost <= point_limit) {
		call_set_text_color(1, 0);
		draw_number_field(cost, 3, 0);
	} else {
		call_set_text_color(0, 0);
		draw_text_glyphs(spell_cost_panel_text, 0);
	}
}
