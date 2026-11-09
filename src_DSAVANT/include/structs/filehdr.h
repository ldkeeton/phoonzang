/* Headers of the data files the game reads whole at startup. */
#ifndef FILEHDR_H
#define FILEHDR_H

/* MASTER.HDR: the record size of each SCENARIO.DBS record type, and
 * whether that type is stored packed.  Types 2 and 3 are the maze data
 * and maze tables, so their sizes also size those buffers. */
struct master_header {
	int sizes[36];
	char packed[10];
};

/* DISK.HDR: which disk this is, then where each SCENARIO.DBS record type
 * starts and, for the types stored out of order, the file slot of each
 * logical index. */
struct disk_header {
	int number;
	int unused_2;
	long record_base[10];
	unsigned char record_map_2[32];
	unsigned char record_map_5[96];
	unsigned char record_map_7[256];
	unsigned char record_map_4[256];
	unsigned char record_map_8[96];
};

/* The header at the start of PCFILE.DBS, the stored characters. */
struct pc_file_header {
	int record_size;
	int record_count;
	long record_base;                 /* file offset of record 0 */
	unsigned char availability[16];   /* 0 free, 1 stored, 2 in the party */
};

#endif
