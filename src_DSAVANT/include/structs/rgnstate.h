/* Region index followed by one sixteen-byte state block per map. */

#ifndef RGNSTATE_H
#define RGNSTATE_H

struct saved_region_blocks {
	int region;			/* +0: active region index */
	char state[45][16];		/* +2: bitmap state for each map */
};

#endif
