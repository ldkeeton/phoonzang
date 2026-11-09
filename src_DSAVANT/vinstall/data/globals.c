/* The installer's uninitialized globals; ln lays the commons out last
   declared first. */
#include <stdio.h>
#include "structs/loadrec.h"

int mouse_detected;
int unused_flag_2af8;
int unused_flag_2af6;
int unused_flag_2af4;
int unused_flag_2af2;
int unused_flag_2af0;
char pkunzip_filespec_list[256];
FILE *archive_process_stream_handle;
int hercules_available;
int cga_available;
int ega_available;
int vga_available;
struct load_header scenario_header_record;
int scenario_header_handle;
char installer_message_buffer[80];
char clear_attribute;
char alt_text_attribute;
char highlight_text_attribute;
char put_text_attribute;
