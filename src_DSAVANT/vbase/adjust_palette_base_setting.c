/* Move the selected palette base one step toward a signed limit. */
extern char palette_base_setting[];

adjust_palette_base_setting(setting_offset, direction, limit)
int setting_offset, direction, limit;
{
	if (direction < 0) {
		if (palette_base_setting[setting_offset] > limit)
			--palette_base_setting[setting_offset];
	} else if (direction > 0) {
		if (palette_base_setting[setting_offset] < limit)
			++palette_base_setting[setting_offset];
	}
}
