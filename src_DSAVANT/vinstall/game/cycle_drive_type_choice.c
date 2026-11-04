/* Select the next allowed drive type and display its label. */
extern char *disk_drive_type_table[];
extern int put_text_at();

cycle_drive_type_choice(row, selected_index, availability)
int row;
int selected_index;
char *availability;
{
	/* Advance through the five choices until the availability string allows
	   one. */
	do {
		selected_index = (selected_index + 1) % 5;
	} while (availability[selected_index] == '0');

	put_text_at(row, 22, disk_drive_type_table[selected_index]);
	return selected_index;
}
