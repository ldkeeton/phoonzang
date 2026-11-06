/* loads consecutive message strings into fixed-width ten-byte slots */

extern int load_message_string();

load_message_batch(first_message, count, messages)
int first_message, count;
char *messages;
{
	int index;

	for (index = 0; index < count; ++index)
		load_message_string(first_message + index, messages + index * 10);
}
