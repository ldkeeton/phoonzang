/* binary-searches the message directory for the record covering a message
   number */
struct message_record {
	int first;		/* first message number in the record */
	int offset;		/* offset of the text in the block */
	unsigned char count;	/* number of messages in the record */
	unsigned char block;	/* block holding the record */
};
struct message_directory {
	int count;
	struct message_record record[1];	/* entries follow the count word */
};

extern struct message_directory message_directory;

char *
find_message_record(number)
int number;
{
	int middle, high, low;
	struct message_record *record;

	high = message_directory.count - 1;
	low = 0;
	while (low <= high) {
		middle = low + (high - low) / 2;	/* midpoint without overflow */
		record = &message_directory.record[middle];
		if (record->first > number) {
			high = middle - 1;	/* number is below this record's range */
		} else if (record->first + record->count < number) {
			low = middle + 1;	/* number is above this record's range */
		} else {
			return (char *)record;
		}
	}
	return 0;	/* no record covers the number */
}
