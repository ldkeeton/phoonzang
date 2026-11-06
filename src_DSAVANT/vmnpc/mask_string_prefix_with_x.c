/* Replaces the first count characters of a string with x. */
mask_string_prefix_with_x(buffer, count)
char *buffer;
int count;
{
	int index;

	/* Mask the requested prefix without changing the terminator. */
	for (index = 0; index < count; ++index)
		buffer[index] = 'x';
}
