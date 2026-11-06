/* checks a text prefix and masks it when it matches */

extern int aztec_strlen();
extern int aztec_strncmp();
extern void mask_string_prefix_with_x();

/* masks the matching prefix and returns whether it matched */
mask_matching_prefix_with_x(text, prefix)
char *text, *prefix;
{
	int matched;

	if (aztec_strncmp(text, prefix, aztec_strlen(prefix)) == 0) {
		mask_string_prefix_with_x(text, aztec_strlen(prefix) - 1);
		return 0;
	}
	return -1;
}
