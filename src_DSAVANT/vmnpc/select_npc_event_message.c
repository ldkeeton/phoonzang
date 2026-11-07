/* Selects an unseen NPC event message matching the requested faction. */
/* Selects an unreported roaming NPC event and displays its message. */
#include "structs/slotstat.h"
#include "structs/location.h"
#include "structs/slotevt.h"
#include "msg.h"

extern struct slot_record slot_records[];
extern struct location_record location_records[];
extern struct slot_event slot_event_logs[22][5];
extern unsigned char quest_map_message_buffer[];
extern unsigned char npc_event_message_seen[];
extern char npc_event_actor_buffer[];
extern int current_level;
extern unsigned char current_faction_index;
extern char npc_slot_index;
extern char quest_map_name_buffer[24];
extern char quest_map_subject_buffer[24];
extern int setmem();
extern int random_below();
extern int load_message_string();
extern int str_subst_char();
extern int display_npc_message();

/* Selects and displays an eligible NPC event, or reports no event. */
/* Displays a matching event and reports whether one was available. */
select_npc_event_message(faction_filter, display_mode, suppress_empty)
int faction_filter;
int display_mode;
int suppress_empty;
{
	int slot_index;
	int matching_slots;
	int event_index;
	int retry_count;
	int name_message;
	int detail_message;
	int slot_has_message[22];

	setmem(slot_has_message, 44, 0);
	matching_slots = 0;
	for (slot_index = 0; slot_index < 21; ++slot_index) {
		if (slot_records[slot_index].health > 0 &&
			(slot_records[slot_index].faction == faction_filter ||
			(faction_filter == -1 &&
			 (location_records[slot_records[slot_index].location].game_state ==
			 current_level ||
			  slot_records[slot_index].faction == current_faction_index)))) {
			slot_has_message[slot_index] = 1;
			++matching_slots;
		}
	}
	quest_map_message_buffer[0] = 0;
	while (matching_slots > 0 && quest_map_message_buffer[0] == 0) {
		do {
			slot_index = random_below(22);
		} while (slot_has_message[slot_index] == 0);
		slot_has_message[slot_index] = 0;
		--matching_slots;
		event_index = random_below(5);
		retry_count = 0;
		for (;;) {
			if ((npc_event_message_seen[slot_index * 5 + event_index] == 0 &&
				slot_event_logs[slot_index][event_index].subject != -1) ||
				retry_count >= 5)
				break;
			event_index = (event_index + 1) % 5;
			++retry_count;
		}
		do {
			if (slot_event_logs[slot_index][event_index].subject == -1)
				break;
			if (npc_event_message_seen[slot_index * 5 + event_index] != 0)
				break;
			npc_event_message_seen[slot_index * 5 + event_index] = 1;
		load_message_string(
			MSG_HAS_BEEN_FIGHTING_AT + slot_event_logs[slot_index][event_index].kind,
			quest_map_message_buffer);
		load_message_string(slot_index == npc_slot_index ? MSG_OUR_PARTY :
			MSG_SLOT_NAME_BASE + slot_index, npc_event_actor_buffer);
		switch (slot_event_logs[slot_index][event_index].kind) {
		case 0:
		case 1:
		case 2:
		case 5:
		case 6:
			name_message = MSG_SLOT_NAME_BASE;
			detail_message = MSG_LOCATION_NAME_BASE;
			break;
		case 3:
		case 10:
			name_message = MSG_MAP_NAME_BASE;
			detail_message = MSG_SLOT_NAME_BASE;
			break;
		case 4:
		case 7:
			name_message = MSG_MAP_NAME_BASE;
			detail_message = MSG_LOCATION_NAME_BASE;
			break;
		case 8:
		case 9:
		case 11:
			name_message = MSG_FACTION_NAME_BASE;
			detail_message = MSG_LOCATION_NAME_BASE;
			break;
		}
		load_message_string(
			name_message + slot_event_logs[slot_index][event_index].subject,
			quest_map_name_buffer);
		load_message_string(
			detail_message + slot_event_logs[slot_index][event_index].detail,
			quest_map_subject_buffer);
		str_subst_char(quest_map_message_buffer, npc_event_actor_buffer, 94);
		str_subst_char(quest_map_message_buffer, quest_map_name_buffer, 35);
		str_subst_char(quest_map_message_buffer, quest_map_subject_buffer, 36);
		} while (0);
	}
	if (quest_map_message_buffer[0] == 0) {
		if (suppress_empty != 0)
			return -1;
		load_message_string(MSG_HEH_HEH_WHY_I_HAVEN_T_1641,
			quest_map_message_buffer);
	}
	display_npc_message(quest_map_message_buffer, display_mode);
	return 0;
}
