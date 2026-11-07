/* checks a text prefix and masks it when it matches */

extern int strlen();
extern int strncmp();
extern void mask_string_prefix_with_x();

/* masks the matching prefix and returns whether it matched */
mask_matching_prefix_with_x(text, prefix)
char *text, *prefix;
{
	int matched;

	if (strncmp(text, prefix, strlen(prefix)) == 0) {
		mask_string_prefix_with_x(text, strlen(prefix) - 1);
		return 0;
	}
	return -1;
}
