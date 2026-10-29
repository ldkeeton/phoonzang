/* Depth-limited search for a path of open, unused edges to the goal. */

#include "structs/pathedge.h"

extern int append_edge_between();
extern int open_gates[], found_path_length, path_search_depth,
	edges_in_use[];
extern struct path_edge path_edges[];

search_path_from(from, to, deeper, depth)
int from, to, deeper, depth;
{
	int edge, pass, saved_length, passes, saved_in_use[32];

	if (append_edge_between(from, to))
		return 1;
	if (deeper == 0)
		return 0;
	/* Below the depth limit, a second pass also searches past neighbours. */
	passes = depth < path_search_depth ? 2 : 1;
	for (pass = 0; pass < passes; pass++) {
		for (edge = 0; edge < 32; edge++) {
			if (path_edges[edge].end_a == from
			    && (path_edges[edge].gate_key == -1
			    || open_gates[path_edges[edge].gate_key])) {
				if (edges_in_use[edge] == 0) {
					if (pass)
						edges_in_use[edge] = 1;
					saved_length = found_path_length;
					aztec_movmem(edges_in_use, saved_in_use, 64);
					if (search_path_from(path_edges[edge].end_b, to, pass,
					    depth + 1)) {
						append_edge_between(from,
						    path_edges[edge].end_b);
						return 1;
					}
					found_path_length = saved_length;
					aztec_movmem(saved_in_use, edges_in_use, 64);
				}
			} else if (path_edges[edge].end_b == from
			    && (path_edges[edge].gate_key == -1
			    || open_gates[path_edges[edge].gate_key])) {
				if (edges_in_use[edge] == 0) {
					if (pass)
						edges_in_use[edge] = 1;
					saved_length = found_path_length;
					aztec_movmem(edges_in_use, saved_in_use, 64);
					if (search_path_from(path_edges[edge].end_a, to, pass,
					    depth + 1)) {
						append_edge_between(from,
						    path_edges[edge].end_a);
						return 1;
					}
					found_path_length = saved_length;
					aztec_movmem(saved_in_use, edges_in_use, 64);
				}
			}
		}
	}
	return 0;
}
