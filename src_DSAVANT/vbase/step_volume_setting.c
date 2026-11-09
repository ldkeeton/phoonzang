/* Move one volume setting by one without crossing its bounds. */
#include "structs/loadrec.h"
extern struct load_header scenario_header;

step_volume_setting(volume_index, direction, upper_limit)
int volume_index, direction, upper_limit;
{
	if (direction < 0) {
		/* Decrement only when the setting is nonzero. */
		if (scenario_header.volumes[volume_index] > 0)
			scenario_header.volumes[volume_index]--;
	} else if (direction > 0) {
		/* Increment only while the setting remains below its limit. */
		if (scenario_header.volumes[volume_index] < upper_limit)
			scenario_header.volumes[volume_index]++;
	}
}
