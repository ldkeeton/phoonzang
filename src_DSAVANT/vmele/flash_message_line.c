/* flashes one centred message line on a text row and puts the row back */

extern call_show_area(), call_set_text_color(), call_set_text_pos(),
	draw_text_glyphs(), call_restore_area(), flush_keyboard();
extern aztec_strlen();
long call_save_area();

flash_message_line(text, line)
char *text;
int line;
{
	int left, right;
	long saved;

	/* 146: top of the message strip, 6: glyph height */
	call_show_area(0, 146 + line * 6, 319, 152 + line * 6);
	left = 161 - aztec_strlen(text) * 6 / 2;	/* 161: centre column */
	right = left + aztec_strlen(text) * 6;
	saved = call_save_area(left, 146 + line * 6, right, 152 + line * 6);
	call_set_text_color(22, 0);
	call_set_text_pos(left, 146 + line * 6);
	draw_text_glyphs(text, 0);
	call_show_area(left, 146 + line * 6, right, 152 + line * 6);
	call_restore_area(saved, 1);
	flush_keyboard();
}
