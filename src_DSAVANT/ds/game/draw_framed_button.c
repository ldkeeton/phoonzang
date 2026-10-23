/* draws a frame w character cells wide and h rows tall at x,y, then
   the label centred inside it */
draw_framed_button(x, y, w, h, label)
char *label;
{
	/* frame spans 6 pixels per cell; 2 extra pixels below the last row */
	draw_bevel_frame(x, y, w * 6 + x, h * 6 + y + 2, 1);	/* 1: add the outer bevel */
	gfx_set_text_color(85, 192);
	/* centre in w cells; glyphs are 6 pixels wide */
	gfx_set_text_pos((w - aztec_strlen(label)) * 6 / 2 + x + 1, y + 2);
	draw_text_glyphs(label, 0);
}
