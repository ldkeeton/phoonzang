/* Write the scenario header and apply the selected startup devices. */
#include "structs/loadrec.h"
extern struct load_header scenario_header_data;
extern char scenario_header_filename[];
extern int scenario_header_fd, startup_option, startup_hardware_flags;
extern int mouse_active;
extern unsigned char startup_option_byte, startup_aux_option_b;
extern char *data_file_path();
extern long lseek();
extern int open(), write(), close(), release_and_exit();
extern int call_wait_sound(), call_mouse_init(), call_mouse_off();
extern int flush_keyboard();

write_header_and_apply_devices()
{
	int write_count;

	/* Open for writing; error 20 terminates on open or write failure. */
	if ((scenario_header_fd = open(data_file_path(
		scenario_header_filename, 0), 2)) == -1)
		release_and_exit(20);
	lseek(scenario_header_fd, 0L, 0);
	/* The persisted header occupies 844 bytes. */
	if ((write_count = write(scenario_header_fd, &scenario_header_data,
		844)) == -1)
		release_and_exit(20);
	close(scenario_header_fd);
	startup_option = startup_option_byte;
	call_wait_sound(1);
	/* Enable the mouse only with hardware bit 12 and option value 1. */
	if ((startup_hardware_flags & 4096) && startup_aux_option_b == 1) {
		if (mouse_active == 0)
			call_mouse_init();
		mouse_active = 1;
	} else {
		if (mouse_active == 1)
			call_mouse_off();
		mouse_active = 0;
	}
	flush_keyboard();
}
