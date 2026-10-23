/* draws a button label w character cells wide at x,y: framed when boxed,
   otherwise plain centred text */
draw_button(x, y, w, h, boxed, label)
char *label;
{
	if (boxed)
		draw_framed_button(x, y, w, h, label);
	else {
		gfx_set_text_color(1, 194);
		/* centre in w cells; glyphs are 6 pixels wide */
		gfx_set_text_pos((w - aztec_strlen(label)) * 6 / 2 + x + 1, y + 2);
		draw_text_glyphs(label, 0);
	}
}
