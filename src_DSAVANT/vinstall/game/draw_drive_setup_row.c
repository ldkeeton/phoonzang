/* Draws one setup row with its drive type, name, and label. */
extern int put_text_at();
extern char *disk_drive_type_table[];

/* Draw the row's text and the selected drive type in fixed columns. */
draw_drive_setup_row(row, column, heading, drive_type, drive_name, drive_label)
int row;
int column;
char *heading;
int drive_type;
char *drive_name;
char *drive_label;
{
	put_text_at(row, column, heading);
	/* Column 22 starts the drive type text. */
	put_text_at(row, 22, disk_drive_type_table[drive_type]);
	/* Column 46 starts the drive name. */
	put_text_at(row, 46, drive_name);
	/* Column 58 starts the drive label. */
	put_text_at(row, 58, drive_label);
}
