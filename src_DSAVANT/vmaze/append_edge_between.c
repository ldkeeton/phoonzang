/* Append the open edge joining two locations to found_path. */

#include "structs/pathedge.h"

extern int open_gates[], found_path_length, found_path[];
extern struct path_edge path_edges[];

append_edge_between(location_a, location_b)
int location_a, location_b;
{
	int edge;

	for (edge = 0; edge < 32; edge++) {
		if (path_edges[edge].gate_key == -1
		    || open_gates[path_edges[edge].gate_key] != 0) {
			if ((path_edges[edge].end_a == location_a
			    && path_edges[edge].end_b == location_b)
			    || (path_edges[edge].end_b == location_a
			    && path_edges[edge].end_a == location_b)) {
				found_path[found_path_length] = edge;
				found_path_length++;
				/* The path holds at most 12 edges. */
				if (found_path_length >= 12)
					return 0;
				return 1;
			}
		}
	}
	return 0;
}
