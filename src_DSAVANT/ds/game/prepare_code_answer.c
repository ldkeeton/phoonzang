/* choose four clue positions and encode the answer string */
#include "msg.h"

extern unsigned char code_characters[];
extern unsigned char code_table[];
extern unsigned short code_index_1, code_index_2;
extern unsigned short code_index_3, code_index_4;
extern unsigned short answer_length;
extern random_below(), load_message_string(), aztec_strlen();

prepare_code_answer()
{
	int checksum, index;
	unsigned char message[80];

	/* Pick one character position from each 25-character group. */
	code_index_1 = random_below(24) + 1;
	code_index_2 = random_below(25) + 25;
	code_index_3 = random_below(25) + 50;
	code_index_4 = random_below(25) + 75;

	load_message_string(MSG_CODE_CHAR_BASE + code_characters[0], message);
	code_characters[code_index_1] = message[0];
	code_characters[code_index_2] = message[1];
	code_characters[code_index_3] = message[2];
	code_characters[code_index_4] = message[3];

	checksum = 0;
	answer_length = index = aztec_strlen(message) - 4;
	/* Walk backward over the message body, excluding its four-byte prefix. */
	while (index > 0) {
		index--;
		/* Store a position-dependent byte for each answer character. */
		code_table[index + 26] = (unsigned char)
			((message[index + 4] * 37 + 17 * index) % 255);
		/* Accumulate the character-position product modulo 255. */
		checksum = (message[index + 4] * index + checksum) % 255;
	}
	code_table[0] = (unsigned char)checksum;
}
