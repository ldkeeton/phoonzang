/* Toggle a NO/YES setup field. */
extern char *no_yes_label_table[];
extern int put_text_at();

/* Flip the choice, draw its NO/YES label, and return the new value. */
toggle_yes_no_choice(row, column, choice)
int row;
int column;
int choice;
{
	/* The two table entries use the opposite parity of the stored choice. */
	choice = (choice + 1) % 2;
	put_text_at(row, column, no_yes_label_table[choice]);
	return choice;
}
