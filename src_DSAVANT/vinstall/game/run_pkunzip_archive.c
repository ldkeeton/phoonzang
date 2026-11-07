/* Run the configured PKUNZIP command and report a failed extraction. */
#include <stdio.h>

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
extern int archive_process_stream_handle;
extern int strcpy();
extern int strcat();
extern int display_centered_command_line();
extern FILE *freopen();
extern int fexecl();
extern int wait();
extern int show_message_wait_for_enter();
extern int exit();

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
	char command_line[255];
	char error_message[80];
	int execute_result;
	int wait_result;

	/* Build the executable path and the archive argument. */
	strcpy(executable_path, source_dir);
	strcat(executable_path, pkunzip_exe_suffix);
	strcpy(executable_name, pkunzip_argv0);
	strcpy(archive_path, source_dir);
	strcat(archive_path, archive_name);

	/* Keep the visible command text in the larger local buffer. */
	strcpy(command_line, source_dir);
	strcat(command_line, pkunzip_command_prefix);
	strcat(command_line, source_dir);
	strcat(command_line, archive_name);
	strcat(command_line, command_argument_separator);
	strcat(command_line, file_list);
	display_centered_command_line(command_line);

	/* Send stdout to NUL while PKUNZIP runs. */
	archive_process_stream_handle =
		freopen(null_device_name, stream_append_mode, stdout);
	execute_result = fexecl(executable_path, executable_name,
				      archive_path, file_list, 0, 0);
	wait_result = wait();
	archive_process_stream_handle = freopen(console_device_name,
		console_stream_append_mode, archive_process_stream_handle);

	/* Either a failed launch or a zero wait result enters the error path. */
	if (execute_result == -1 || wait_result != 0) {
		strcpy(error_message, unzip_failure_prefix);
		strcat(error_message, source_dir);
		strcat(error_message, archive_name);
		strcat(error_message, unzip_failure_suffix);
		show_message_wait_for_enter(error_message);
		/* Exit status three follows the displayed unzip failure. */
		exit(3);
	}
}
