/* draws text split at the first '/' as two lines of at most 10 chars each,
   the second 6 pixels below the first */
draw_split_two_line_text(text, x, y, color)
char *text;
int x, y, color;
{
	int split;
	char buf[40];

	aztec_setmem(buf, 40, 0);
	aztec_strcpy(buf, text);
	split = strpos(buf, '/');
	if (split == -1)	/* no '/': whole text is the first line */
		split = aztec_strlen(buf);
	if (split > 10)		/* 10-char line limit */
		split = 10;
	buf[split] = 0;
	buf[split + 11] = 0;	/* cap the second line at 10 chars too */
	call_set_text_color(color, 0);
	call_set_text_pos(x, y);
	draw_text_glyphs(buf, 0);
	call_set_text_pos(x, y + 6);	/* next line, 6 pixels down */
	draw_text_glyphs(&buf[split + 1], 0);
}
