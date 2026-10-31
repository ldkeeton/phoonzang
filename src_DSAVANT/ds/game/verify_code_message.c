/* check a code-character message and save its final check word */
#include "msg.h"

extern unsigned char code_char_message_index;
extern unsigned char code_table[];
extern unsigned short answer_check_word;
extern unsigned short character_record_target;
extern load_message_string(), aztec_strlen();

verify_code_message()
{
	int checksum, index;
	unsigned char message[80];

	load_message_string(MSG_CODE_CHAR_BASE + code_char_message_index,
		message);
	checksum = 0;
	index = aztec_strlen(message) - 4;
	/* Check message characters from the end back to the four-byte prefix. */
	while (index > 0) {
		index--;
		/* Each character and position contributes modulo 255. */
		if ((unsigned char)((message[index + 4] * 37 + 17 * index)
				% 255) != code_table[index + 26])
			return;
		/* Accumulate the character-position product modulo 255. */
		checksum = (message[index + 4] * index + checksum) % 255;
	}
	/* Store the check word only when the final checksum matches. */
	if (code_table[0] == (unsigned char)checksum)
		character_record_target = answer_check_word;
}
