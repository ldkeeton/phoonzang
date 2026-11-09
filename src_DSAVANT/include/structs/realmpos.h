/* Screen positions of the realm point readouts. */
#ifndef REALMPOS_H
#define REALMPOS_H

struct screen_point {
	int x;
	int y;
};

/* One realm's row in realm_point_text_positions: current, then maximum. */
struct realm_point_text_row {
	struct screen_point column[2];
};

#endif
