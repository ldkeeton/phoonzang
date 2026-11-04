/* Run the configured PKUNZIP command and report a failed extraction. */
extern char pkunzip_exe_suffix[];
extern char pkunzip_argv0[];
extern char pkunzip_command_prefix[];
extern char command_argument_separator[];
extern char null_device_name[];
extern char stream_append_mode[];
extern char console_device_name[];
extern char console_stream_append_mode[];
extern char unzip_failure_prefix[];
extern char unzip_failure_suffix[];
extern char archive_process_stream[];
extern int archive_process_stream_handle;
extern int aztec_strcpy();
extern int aztec_strcat();
extern int display_centered_command_line();
extern int aztec_freopen();
extern int aztec_fexecl();
extern int aztec_wait();
extern int show_message_wait_for_enter();
extern int aztec_exit();

struct unzip_messages {
	char error_message[80];
	char command_line[255];
};

/* Compose and launch PKUNZIP, then restore the console stream. */
run_pkunzip_archive(source_dir, dest_dir, archive_name,
		    file_list)
char *source_dir;
char *dest_dir;
char *archive_name;
char *file_list;
{
	char executable_path[40];
	char executable_name[40];
	char archive_path[40];
	struct unzip_messages messages;
	int execute_result;
	int wait_result;

	/* Build the executable path and the archive argument. */
	aztec_strcpy(executable_path, source_dir);
	aztec_strcat(executable_path, pkunzip_exe_suffix);
	aztec_strcpy(executable_name, pkunzip_argv0);
	aztec_strcpy(archive_path, source_dir);
	aztec_strcat(archive_path, archive_name);

	/* Keep the visible command text in the larger local buffer. */
	aztec_strcpy(messages.command_line, source_dir);
	aztec_strcat(messages.command_line, pkunzip_command_prefix);
	aztec_strcat(messages.command_line, source_dir);
	aztec_strcat(messages.command_line, archive_name);
	aztec_strcat(messages.command_line, command_argument_separator);
	aztec_strcat(messages.command_line, file_list);
	display_centered_command_line(messages.command_line);

	/* Redirect the archive process stream away from the console. */
	archive_process_stream_handle =
		aztec_freopen(null_device_name, stream_append_mode, archive_process_stream);
	execute_result = aztec_fexecl(executable_path, executable_name,
				      archive_path, file_list, 0, 0);
	wait_result = aztec_wait();
	archive_process_stream_handle = aztec_freopen(console_device_name,
		console_stream_append_mode, archive_process_stream_handle);

	/* Either a failed launch or a zero wait result enters the error path. */
	if (execute_result == -1 || wait_result != 0) {
		aztec_strcpy(messages.error_message, unzip_failure_prefix);
		aztec_strcat(messages.error_message, source_dir);
		aztec_strcat(messages.error_message, archive_name);
		aztec_strcat(messages.error_message, unzip_failure_suffix);
		show_message_wait_for_enter(messages.error_message);
		/* Exit status three follows the displayed unzip failure. */
		aztec_exit(3);
	}
}
