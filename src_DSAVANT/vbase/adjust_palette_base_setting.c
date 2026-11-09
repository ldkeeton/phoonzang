/* Move the selected palette base one step toward a signed limit. */
#include "structs/loadrec.h"
extern struct load_header scenario_header;

adjust_palette_base_setting(setting_offset, direction, limit)
int setting_offset, direction, limit;
{
	if (direction < 0) {
		if (scenario_header.palette[setting_offset] > limit)
			--scenario_header.palette[setting_offset];
	} else if (direction > 0) {
		if (scenario_header.palette[setting_offset] < limit)
			++scenario_header.palette[setting_offset];
	}
}
