/* Select profession-specific glyphs for a character panel. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int add_starting_items();

/* Select the profession's five glyphs for a character panel. */
give_profession_starting_items(character)
int character;
{
	if (party_records[character].race == 5) {
		add_starting_items(character, 397, 398, 399,
			316, 384);
		return;
	}

	switch (party_records[character].profession) {
	case 0:
		add_starting_items(character, 8, 135, 132, 130, 141);
		break;
	case 1:
		add_starting_items(character, 18, 122, 123, 130, 335);
		break;
	case 2:
		add_starting_items(character, 24, 122, 123, 130, 316);
		break;
	case 3:
		add_starting_items(character, 6, 120, 121, 131, 27);
		break;
	case 4:
		add_starting_items(character, 31, 33, 126, 127, 131);
		break;
	case 5:
		add_starting_items(character, 18, 122, 123, 130, 327);
		break;
	case 6:
		add_starting_items(character, 29, 30, 120, 121, 55);
		break;
	case 7:
		add_starting_items(character, 1, 122, 123, 130, 241);
		break;
	case 8:
		add_starting_items(character, 22, 124, 125, 130, 138);
		break;
	case 9:
		add_starting_items(character, 24, 122, 123, 130, 163);
		break;
	case 10:
		add_starting_items(character, 9, 133, 134, 131, 143);
		break;
	case 11:
		add_starting_items(character, 10, 4, 122, 123, 130);
		break;
	case 12:
		add_starting_items(character, 25, 47, 122, 123, 130);
		break;
	case 13:
		add_starting_items(character, 47, 160, 158, 159, 161);
		break;
	}
}
