put_int_at(row, col, n)
{
	char text[255];

	bios_set_cursor(row, col);
	int_to_str(n, text);
	bios_put_text(text);
}
