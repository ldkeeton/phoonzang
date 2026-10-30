/* Find the first of six member icon values not used by the party prefix. */
extern int member_icon[];

find_unused_member_icon(member_count)
int member_count;
{
	int icon_index;
	int member_index, icon_in_use;

	icon_index = 0;
	/* Try each icon value, stopping after the six available values. */
	do {
		icon_in_use = 0;
		member_index = 0;
		/* Check every preceding party member for this icon. */
		for (; member_index < member_count; member_index++) {
			if (member_icon[member_index] == icon_index)
				icon_in_use = 1;
		}
		/* The first unused value is the result. */
		if (icon_in_use == 0)
			return icon_index;
	} while (++icon_index < 6);
	return 0;
}
