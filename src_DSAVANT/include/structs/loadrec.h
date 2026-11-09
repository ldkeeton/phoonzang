/* Saved game records: the scenario header and the party position. */
#ifndef LOADREC_H
#define LOADREC_H
/* Slots of party_effects, the spell effects on the whole party; each is
 * drawn in the status bar while its timer is positive. */
#define PARTY_EFFECT_EVADE 0       /* strength: bonus to the party's evasion */
#define PARTY_EFFECT_SPELL_49 1
#define PARTY_EFFECT_WARD 2        /* strength: the party's ward[4] charge */
#define PARTY_EFFECT_DETECTION 3
#define PARTY_EFFECT_COMPASS 4     /* drawn as the party's heading */
#define PARTY_EFFECT_LEVITATION 5

struct status_pair {
	int timer; /* +0: positive while drawn */
	int strength; /* +2 */
};
/* Slots of load_header.paths. */
#define PATH_DATA 0       /* game data directory */
#define PATH_SECOND 1     /* second data path, disk layout 5 only */
#define PATH_SAVE_DIR 2   /* savegame directory */
#define PATH_SAVE_FILE 3  /* savegame name */

/* Slots of load_header.volumes. */
#define VOLUME_EFFECTS 0
#define VOLUME_MONSTER 1
#define VOLUME_BACKGROUND 2
#define VOLUME_MUSIC 3

/* Slots of load_header.palette. */
#define PALETTE_BASE 0    /* brightness */
#define PALETTE_SCALE 1   /* contrast */

/* SCENARIO.HDR, which is also the first 844 bytes of a saved game: the
 * persistent region and action flags, then the player's configuration. */
struct load_header {
	char level_flags[32][16];         /* +0x000: sixteen bytes per level */
	unsigned char action_bitmap[12];  /* +0x200: scenario action bits */
	unsigned npc_action_bits[96];     /* +0x20c: one word per NPC */
	int maze_change_count;            /* +0x2cc: six-byte records saved */
	int floor_item_count;             /* +0x2ce: eight-byte records saved */
	char paths[4][20];                /* +0x2d0: PATH_* */
	unsigned char store_ems;          /* +0x320: keep screens in EMS */
	unsigned char store_ramdisk;      /* +0x321: keep screens on a RAM disk */
	unsigned char store_drive[20];    /* +0x322: RAM disk name */
	char palette[2];                  /* +0x336: PALETTE_* */
	int install_version;              /* +0x338 */
	unsigned char volumes[4];         /* +0x33a: VOLUME_*, 0-10 */
	int sound_port, sound_aux;        /* +0x33e, +0x340 */
	unsigned char sound_device;       /* +0x342: digital sound device */
	unsigned char music_device;       /* +0x343 */
	unsigned char combat_delay;       /* +0x344: combat message delay */
	unsigned char install_mode;       /* +0x345: disk layout */
	unsigned char difficulty;         /* +0x346 */
	unsigned char use_mouse;          /* +0x347 */
	unsigned char graphics_mode;      /* +0x348 */
	unsigned char has_second_path;    /* +0x349: PATH_SECOND is set */
	unsigned char no_dissolve;        /* +0x34a */
	char unused_34b;
};
struct load_state {
	int level; /* +0x00 */
	int world_x; /* +0x02 */
	int world_y; /* +0x04 */
	int cell_x; /* +0x06 */
	int cell_y; /* +0x08 */
	int map_piece; /* +0x0a */
	int facing; /* +0x0c */
	int previous_level; /* +0x0e */
	int previous_world_x; /* +0x10 */
	int previous_world_y; /* +0x12 */
	int previous_cell_x; /* +0x14 */
	int previous_cell_y; /* +0x16 */
	int previous_map_piece; /* +0x18 */
	int previous_facing; /* +0x1a */
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
