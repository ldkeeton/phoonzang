/* Shows what is known about a roaming NPC's quest map. */

#include "structs/questmap.h"
#include "structs/slotstat.h"
#include "msg.h"
#include "structs/npc.h"
extern struct npc_record npc_record;

extern struct quest_map quest_maps[];
extern struct slot_record slot_records[];
extern char quest_map_name_buffer[24];
extern char quest_map_subject_buffer[24];
extern char quest_map_message_buffer[256];
extern int load_message_string(), str_subst_char();
extern int display_npc_message();

show_quest_map_information(map_index)
int map_index;
{
	int plural_faction_name;

	load_message_string(MSG_MAP_NAME_BASE + map_index, quest_map_name_buffer);
	if (quest_maps[map_index].status == 0) {
		plural_faction_name = slot_records[quest_maps[map_index].holder].faction
			!= npc_record.faction_index;
		load_message_string(
			quest_maps[map_index].holder == npc_record.slot_index
			? MSG_HAS_POSSESSION_OF_THE_MAP
			: (plural_faction_name
			? MSG_IT_IS_RUMORED_THAT_POS_1882
			: MSG_IT_IS_RUMORED_THAT_POS_1881), quest_map_message_buffer);

		load_message_string(
			quest_maps[map_index].holder == npc_record.slot_index
			? MSG_OUR_PARTY
			: (plural_faction_name
			? MSG_FACTION_NAME_BASE
				+ slot_records[quest_maps[map_index].holder].faction
			: MSG_SLOT_NAME_BASE + quest_maps[map_index].holder),
			quest_map_subject_buffer);
	} else {
		load_message_string(MSG_THE_MAP_IS_RUMORED_TO_1883,
			quest_map_message_buffer);
		load_message_string(MSG_LOCATION_NAME_BASE + quest_maps[map_index].holder,
			quest_map_subject_buffer);
	}

	str_subst_char(quest_map_message_buffer, quest_map_name_buffer, 35);
	str_subst_char(quest_map_message_buffer, quest_map_subject_buffer, 36);
	display_npc_message(quest_map_message_buffer, 1);
}
