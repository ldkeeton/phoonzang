/* Advance to an enabled setup option and display its label. */
extern int vga_available, ega_available;
extern int cga_available, hercules_available;
extern int put_text_at();
extern char *graphics_mode_label_table[];

advance_graphics_mode_choice(selected_option)
int selected_option;
{
	/* Normalize the incoming value to one of the four setup options. */
	selected_option = (selected_option % 4) + 1;

	/* Skip options that are unavailable according to the installer status. */
	if (selected_option == 1 && vga_available == 0)
		selected_option++;
	if (selected_option == 2 && ega_available == 0)
		selected_option++;
	if (selected_option == 3 && cga_available == 0)
		selected_option++;
	if (selected_option == 4 && hercules_available == 0)
		selected_option = 1;

	/* Apply the same availability checks after wrapping to the first option. */
	if (selected_option == 1 && vga_available == 0)
		selected_option++;
	if (selected_option == 2 && ega_available == 0)
		selected_option++;
	if (selected_option == 3 && cga_available == 0)
		selected_option++;
	if (selected_option == 4 && hercules_available == 0)
		selected_option = 0;

	put_text_at(13, 16, graphics_mode_label_table[selected_option]);
	return selected_option;
}
