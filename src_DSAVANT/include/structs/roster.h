/* PC-file roster metadata shared by party import and removal routines. */
#ifndef ROSTER_H
#define ROSTER_H

struct roster_state_view {
	int record_base_high;              /* +0: high word of the PCFILE base */
	unsigned char availability[18];    /* +2: state for each roster entry */
};

#endif
