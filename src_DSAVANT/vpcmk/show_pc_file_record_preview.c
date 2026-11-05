/* Show a PC file record preview and wait for fullscreen input. */
extern int display_pc_file_record_preview();
extern int poll_fullscreen_hotspot();

show_pc_file_record_preview(file_record_index)
int file_record_index;
{
	display_pc_file_record_preview(0, file_record_index);
	while (!poll_fullscreen_hotspot())
		;
}
