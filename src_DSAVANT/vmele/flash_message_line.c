/* flashes one centred message line on a text row and puts the row back */

extern gfx_show_area(), gfx_set_text_color(), gfx_set_text_pos(),
	draw_text_glyphs(), gfx_restore_area(), flush_keyboard();
extern aztec_strlen();
long gfx_save_area();

flash_message_line(text, line)
char *text;
int line;
{
	int left, right;
	long saved;

	/* 146: top of the message strip, 6: glyph height */
	gfx_show_area(0, 146 + line * 6, 319, 152 + line * 6);
	left = 161 - aztec_strlen(text) * 6 / 2;	/* 161: centre column */
	right = left + aztec_strlen(text) * 6;
	saved = gfx_save_area(left, 146 + line * 6, right, 152 + line * 6);
	gfx_set_text_color(22, 0);
	gfx_set_text_pos(left, 146 + line * 6);
	draw_text_glyphs(text, 0);
	gfx_show_area(left, 146 + line * 6, right, 152 + line * 6);
	gfx_restore_area(saved, 1);
	flush_keyboard();
}
