#ifndef SIXBYTE_H
#define SIXBYTE_H

/* Six-byte record shared by the maze change lookup and append routines. */
struct six_byte_record {
	unsigned char first_value;   /* +0: first lookup key */
	unsigned char second_value;  /* +1: second lookup key */
	int stored_value;            /* +2: value tested against the key */
	int unused_value;            /* +4: remaining word in the record */
};

#endif
