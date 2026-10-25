/* true only when a party member's state byte and status[2], status[3] are
   all zero */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];

member_is_active(pc)
int pc;
{
	return !(party_records[pc].state ||
		 party_records[pc].status[2] > 0 ||
		 party_records[pc].status[3] > 0);
}
