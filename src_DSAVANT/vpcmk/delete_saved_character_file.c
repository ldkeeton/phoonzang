/* Delete a saved character file after confirming the choice. */
#include "msg.h"

extern char saved_character_file_name[];
extern char pc_file_record_base_hi[];
extern int pc_file_record_size;
extern int display_pc_file_record_preview();
extern int select_grid_text_option();
extern int call_wait_sound();
extern char *data_file_path();
extern int open(), write(), close();

delete_saved_character_file(file_record_index)
int file_record_index;
{
	int selection;
	int file_handle;
	int selection_options[20];

	display_pc_file_record_preview(0, file_record_index);
	selection_options[0] = 1;
	selection_options[1] = 1;
	selection_options[2] = -1;
	selection = select_grid_text_option(1125,
		MSG_DELETE_THIS_CHARACTER, 74, 180, 11, 106,
		12, 1, 2, 1, -1, 0, selection_options);
	if (selection == 0) {
		pc_file_record_base_hi[file_record_index + 2] = 0;
		call_wait_sound(0);
		file_handle = open(data_file_path(saved_character_file_name, 0), 2);
		write(file_handle, (int)&pc_file_record_size, 24);
		close(file_handle);
	}
}
