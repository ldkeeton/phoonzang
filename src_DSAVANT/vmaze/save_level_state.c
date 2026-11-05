/* Save the active level's region state and map blocks to their stores. */
#include "structs/loadrec.h"
#include "structs/rgnstate.h"

extern struct load_header scenario_header_data;
extern struct saved_region_blocks party_region;
extern int current_level;
extern char far *runtime_buffer_4k_a, *runtime_buffer_4k_b;
extern char current_map_block_a[], explored_cell_bitmap[];
extern int app_memmove();
extern int aztec_movmem();

save_level_state()
{
	/* Copy this level's sixteen-byte state into the scenario header. */
	aztec_movmem(party_region.state[current_level],
		scenario_header_data.region_state[current_level], 16);

	/* Store both 128-byte map blocks in this level's buffer slots. */
	app_memmove((char far *)current_map_block_a,
		runtime_buffer_4k_a + (current_level << 7), 128);
	app_memmove((char far *)explored_cell_bitmap,
		runtime_buffer_4k_b + (current_level << 7), 128);
}
