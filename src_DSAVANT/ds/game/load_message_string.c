/* loads one message number's text into dest: skip the record's earlier
   length-prefixed messages, copy the text across block refills, then unpack
   it; the error word is set when the directory has no such message */

#include "structs/msgdir.h"

extern unsigned char message_block_buffer[];	/* 0x400-byte working block */
extern int message_block_current;
extern int message_not_found;				/* message-not-found word */
extern find_message_record(), load_message_block(), aztec_movmem(),
	unpack_record();

load_message_string(number, dest)
int number;
char *dest;
{
	int offset, count, length;
	struct message_record *record;
	char *out;
	char text[255];

	/* a null record means the number is not in the directory */
	if ((record = find_message_record(number)) == 0) {
		message_not_found = 1;
		return;
	}
	if (record->block != message_block_current)
		load_message_block(record->block);
	offset = record->offset;
	/* count walks the record's message numbers, then holds bytes to copy */
	count = record->first;
	while (number != count) {
		offset = offset + message_block_buffer[offset] + 1;	/* length byte + text */
		count++;						/* next message */
	}
	length = message_block_buffer[offset];
	offset++;			/* past the length byte */
	count = length;
	out = text;
	if (offset + count > 1024) {	/* text continues in the next block */
		aztec_movmem(message_block_buffer + offset, out, 1024 - offset);
		count -= 1024 - offset;
		out += 1024 - offset;
		load_message_block(message_block_current + 1);
		offset = 0;
	}
	aztec_movmem(message_block_buffer + offset, out, count);
	text[length] = 0;
	unpack_record(text, dest);
	message_not_found = 0;
}
