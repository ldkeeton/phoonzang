/* Draws the gold offer frame and its three labels. */
extern char npc_record_buffer[];
extern char npc_gold_offer_prefix_text[];
extern char npc_gold_offer_suffix_text[];
extern int redraw_area_set();
extern int call_fill_area();
extern int call_set_text_color();
extern int call_set_text_pos();
extern int draw_text_glyphs();

draw_npc_gold_frame()
{
	char unused_local_storage[84];
	redraw_area_set(1);
	call_fill_area(98, 164, 221, 168, 95);
	call_set_text_color(1, 95);
	call_set_text_pos(99, 164);
	draw_text_glyphs(npc_gold_offer_prefix_text, 0);
	draw_text_glyphs(npc_record_buffer, 0);
	call_set_text_pos(206, 164);
	draw_text_glyphs(npc_gold_offer_suffix_text, 0);
}
