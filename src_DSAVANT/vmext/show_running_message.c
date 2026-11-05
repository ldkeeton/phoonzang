/* Show the running status message and report success. */
#include "msg.h"

extern void show_message();

/* Display the fixed running message. */
show_running_message()
{
	show_message(MSG_RUNNING);
	return 1;
}
