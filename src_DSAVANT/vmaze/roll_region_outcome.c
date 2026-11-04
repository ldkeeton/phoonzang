/* Roll against a region threshold and read the matching packed outcome. */
#include "structs/mazecell.h"

extern struct maze_cells *maze_data;
extern int random_below();
extern int read_packed_field();

roll_region_outcome(region_index)
int region_index;
{
	int failed_threshold;

	/* Select the failure entry when the roll reaches the region threshold. */
	failed_threshold =
		random_below(100) >= maze_data->region_thresholds[region_index];
	return read_packed_field(maze_data->region_packed_values,
		region_index * 2 + failed_threshold, 4);
}
