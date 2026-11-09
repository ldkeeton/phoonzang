/* Delete a saved character file after confirming the choice. */
#include "msg.h"
#include "structs/filehdr.h"
extern struct pc_file_header pc_file_header;

extern char saved_character_file_name[];
extern int display_pc_file_record_preview();
extern int select_grid_text_option();
extern int call_wait_sound();
extern char *data_file_path();
extern int aztec_open(), aztec_write(), aztec_close();

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
		pc_file_header.availability[file_record_index] = 0;
		call_wait_sound(0);
		file_handle = aztec_open(data_file_path(saved_character_file_name, 0), 2);
		aztec_write(file_handle, &pc_file_header, sizeof(pc_file_header));
		aztec_close(file_handle);
	}
}
