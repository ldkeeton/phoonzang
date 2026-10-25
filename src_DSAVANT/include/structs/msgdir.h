/* the message directory: a count word then 6-byte records that bracket the
   message numbers stored in each block */

#ifndef MSGDIR_H
#define MSGDIR_H

struct message_record {		/* 6 bytes */
	int first;		/* +0x0: first message number in the record */
	int offset;		/* +0x2: offset of the text in the block */
	unsigned char count;	/* +0x4: number of messages in the record */
	unsigned char block;	/* +0x5: block holding the record */
};

struct message_directory {
	int count;
	struct message_record record[1];	/* entries follow the count word */
};

#endif
