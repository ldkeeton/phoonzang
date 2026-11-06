/* Pools the party's gold onto one selected member. */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int party_char_count;

pool_party_gold(member_index)
int member_index;
{
	long total_gold;
	int index;

	total_gold = 0L;
	for (index = 0; index < party_char_count; ++index) {
		total_gold += party_records[index].gold;
		party_records[index].gold = 0L;
	}
	party_records[member_index].gold = total_gold;
}
