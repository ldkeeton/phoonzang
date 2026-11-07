/* Read a key when asked to (key 0) and map the cursor scan codes to the
   input control codes 8-11; a supplied key is uppercased. */
extern int dos_con_in_noecho();
extern int toupper();

normalize_input_key(key)
int key;
{
	int read_key;

	if (key == 0) {
		switch (read_key = dos_con_in_noecho()) {
		case 75:
			return 8;
		case 72:
			return 9;
		case 77:
			return 10;
		case 80:
			return 11;
		}
	} else
		return toupper(key);
}
