#ifndef LOADREC_H
#define LOADREC_H
struct status_pair {
	int timer; /* +0: positive while drawn */
	int offset; /* +2 */
};
struct load_header {
	char pad[720]; /* +0 */
	char paths[4][20]; /* +0x2d0 */
	unsigned char store_one, store_disk; /* +0x320, +0x321 */
	char store_drive[20]; /* +0x322 */
	unsigned char palette_base, palette_scale; /* +0x336, +0x337 */
	char pad2[2]; /* +0x338 */
	unsigned char options[4]; /* +0x33a */
	int sound_port, sound_extra; /* +0x33e, +0x340 */
	unsigned char sound_device; /* +0x342 */
	unsigned char video; /* +0x343 */
	unsigned char startup; /* +0x344 */
	unsigned char install; /* +0x345 */
	unsigned char option_a; /* +0x346 */
	unsigned char option_b; /* +0x347 */
	unsigned char hardware; /* +0x348 */
	unsigned char option_c; /* +0x349 */
	unsigned char dissolve; /* +0x34a */
	char pad3; /* +0x34b */
};
struct load_state {
	int level; /* +0x00 */
	int world_x; /* +0x02 */
	int world_y; /* +0x04 */
	int cell_x; /* +0x06 */
	int cell_y; /* +0x08 */
	int map_piece; /* +0x0a */
	int tag; /* +0x0c */
	int previous_level; /* +0x0e */
	int previous_world_x; /* +0x10 */
	int previous_world_y; /* +0x12 */
	int previous_cell_x; /* +0x14 */
	int previous_cell_y; /* +0x16 */
	int previous_map_piece; /* +0x18 */
	int previous_tag; /* +0x1a */
	int saved_x; /* +0x1c */
	int saved_y; /* +0x1e */
	int saved_piece; /* +0x20 */
	int saved_level; /* +0x22 */
	int saved_extra; /* +0x24 */
	long time, time_a, time_b; /* +0x26, +0x2a, +0x2e */
	struct status_pair status[6]; /* +0x32 */
	int member_count; /* +0x4a */
};
#endif
